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
		    url: "/EhrApp/xray_ajax",  
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
		    	 var url="editxraydetails?username="+response.substring(sub1,response.length);
		    	  window.location.href=url;
		    	 // $('#info').html(response.substring(4,response.length));
		    	  }
		     else if(response!='error')
		    	  {
		    	 var cal=response.indexOf("|");
		    	 var calculate=cal+1;
			     /* alert(response.indexOf("|"));
			   alert(response.substring(0,cal)); */
			   document.getElementById("name").value=response.substring(0,cal);
			   
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
<style>
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
  $(function() {
      $( "#datepicker2" ).datepicker();
    });
</script>
<script>
function checkSubmit()
	{
		document.getElementById("nameerror").innerHTML="";
		if(document.getElementById("name").value=="")
		{
		document.getElementById("nameerror").innerHTML="Required field should not be empty";
		return false;
				
		}
		
		
		document.getElementById("datepickererror").innerHTML="";
		if(document.getElementById("datepicker2").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("datepickererror").innerHTML="";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker2").value.match(datechk)==null)
    {
    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
    	
        return false;
    }	
		document.getElementById("signerror").innerHTML="";
		if(document.getElementById("sign").value=="")
		{
		document.getElementById("signerror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("dateerror").innerHTML="";
		var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker").value !="") {
		  if (re.test(document.getElementById("datepicker").value) == false) {
			  document.getElementById("dateerror").innerHTML="Invalid Date Format";
			  return false;
		  }
		}
		document.getElementById("date1error").innerHTML="";
    var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker1").value !="") {
		  if (re.test(document.getElementById("datepicker1").value) == false) {
			  document.getElementById("date1error").innerHTML="Invalid Date Format";
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
<div id="right_content">
<form action="insertxray" method="POST">
<input type="hidden" name="user" id="user" value="${username}">
<table cellpadding="0" cellspacing="0" border="0" width="60%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
        <td valign="top" align="center">
        <div id="block1">
	            <div class="headings altheading">
	             <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	             <h2>CHIROPRACTIC THERAPY CENTER</h2> 
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
<c:when test="${empty xray}">
	            <div class="contentbox">
	                
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Dr. Darrin A. Pordash, D.C.</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>5190 Detroit Road </b></td>
              </tr>
               <tr ><td width="260"></td>
              <td ><b>The Sheffield Village Plaza</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>Sheffield Village, OH 44035</b></td>
              </tr>
             
              <tr ><td width="260"></td>
              <td ><b>Tax Identification Number 34-1931730  </b></td></tr>
               <tr ><td width="260"></td>
              <td ><b>Phone (440) 934-3099 Fax (440) 934-3107</b></td></tr>
             </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td align="center"><u>  <h2>X-Ray Release Form</h2></u> </td>
              </tr>
 </table><br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr><td>
 <span class="err">*</span>I <input type="text" class="input_txtbx1" name="name" id="name"><span class="err" id="nameerror"><form:errors path="Xray.name"></form:errors></span> do hereby agree to return X-rays that I have borrowed from the Chiropractic Therapy Center, I understand that I have fourteen (14) days to do so.I fully agree that in the event that I do not return X-rays, I will be billed $50.00.  	  
       </td></tr></table><br><br>
 
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err"></span>Date Borrowed</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker" /><span class="err" id="dateerror"><form:errors path="Xray.date"></form:errors></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err"></span>Date Due</td>
              <td ><input type="text" class="input_txtbx1" name="date1" id="datepicker1" /><span class="err" id="date1error"><form:errors path="Xray.date1"></form:errors></td>
              </tr>
              </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err">*</span>Date </td>
              <td width="70"><input type="text" class="input_txtbx1" name="date2" id="datepicker2" /><span class="err" id="datepickererror"><form:errors path="Xray.date2"></form:errors></td>
              <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span>Signature:</td>
             <td width="50"> <input type="text" class="input_txtbx1" name="sign" id="sign" /><span class="err" id="signerror"><form:errors path="Xray.sign"></form:errors></td>
              
              </tr>
              </table><br><br>
              </c:when>
              <c:otherwise>
                <div class="contentbox">
	                
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Dr. Darrin A. Pordash, D.C.</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>5190 Detroit Road </b></td>
              </tr>
               <tr ><td width="260"></td>
              <td ><b>The Sheffield Village Plaza</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>Sheffield Village, OH 44035</b></td>
              </tr>
             
              <tr ><td width="260"></td>
              <td ><b>Tax Identification Number 34-1931730  </b></td></tr>
               <tr ><td width="260"></td>
              <td ><b>Phone (440) 934-3099 Fax (440) 934-3107</b></td></tr>
             </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td align="center"><u>  <h2>X-Ray Release Form</h2></u> </td>
              </tr>
 </table><br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr><td><span class="err">*</span>
 I<input type="hidden" name="xrayid" value="${xray.xrayid }"> <input type="text" class="input_txtbx1" name="name" id="name" value="${xray.name}"><span class="err"><form:errors path="Xray.name"></form:errors></span> do hereby agree to return X-rays that I have borrowed from the Chiropractic Therapy Center, I understand that I have fourteen (14) days to do so.I fully agree that in the event that I do not return X-rays, I will be billed $50.00.  	  
       </td></tr></table><br><br>
 
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err"></span>Date Borrowed</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker"  value="${xray.date}"/><span class="err"><form:errors path="Xray.date"></form:errors></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err"></span>Date Due</td>
              <td ><input type="text" class="input_txtbx1" name="date1" id="datepicker1"  value="${xray.date1}"/><span class="err"><form:errors path="Xray.date1"></form:errors></td>
              </tr>
              </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err">*</span>Date </td>
              <td width="70"><input type="text" class="input_txtbx1" name="date2" id="datepicker2"  value="${xray.date2}"/><span class="err"><form:errors path="Xray.date2"></form:errors></td>
              <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span>Signature:</td>
             <td width="50"> <input type="text" class="input_txtbx1" name="sign" id=""  value="${xray.sign}"/><span class="err"><form:errors path="Xray.sign"></form:errors></td>
              
              </tr>
              </table><br><br>
              
              
              </c:otherwise>
              </c:choose>
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');"></td>
              <td>&nbsp;&nbsp;</td>
              <td><a href="viewallpatientdetails" style="color:white" class="submit_btn" id="cancelid">Cancel</a></td>
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