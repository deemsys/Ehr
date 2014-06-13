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
		    url: "/EhrApp/workschool_ajax",  
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
		    	 var url="editworkschooldetails?username="+response.substring(sub1,response.length);
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
 $(function() {
     $( "#datepicker3" ).datepicker();
   });
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
		document.getElementById("lettererror").innerHTML="";
	if(document.getElementById("letter").value=="")
		{
		document.getElementById("lettererror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
	document.getElementById("datepicker1error").innerHTML="";
	if(document.getElementById("datepicker1").value=="")
	{
	document.getElementById("datepicker1error").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("datepicker1error").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker1").value.match(datechk)==null)
    {
    	document.getElementById("datepicker1error").innerHTML="Invalid Date Format";
    	
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
<form action="insertworkschool" method="POST">
<input type="hidden" id="user" name="user">
<table cellpadding="0" cellspacing="0" border="0" height="100" width="80%" class="margin_table">
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
	              
	             <c:choose>
<c:when test="${empty work}"> 
	            <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Sheffield Village Plaza</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>5190 Detroit Road</b></td>
              </tr>
               <tr ><td width="260"></td>
              <td ><b>Sheffield Village, Ohio 44035</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>(440) 934-3099  Fax: (440) 934-3107</b></td>
              </tr>
              </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>Date:</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker" /><span class="err" id="datepickererror"  style="color: red;font-style:italic;"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table><br>
              <table>
              <tr>
              <td><span class="err">*</span>
              This is to certify that&nbsp;&nbsp;&nbsp; <input type="text" class="input_txtbx1" name="letter" id="letter" /><span class="err" id="lettererror"></span><form:errors path="Workschool.letter"></form:errors> <br>is under my care.  In order to avoid aggravation of his/her condition, I recommend that he/she...

              
              </td>
              </tr>
              </table><br><br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr ><td width="60"><input type="text" class="input_txtbx1" name="beexcused" id="beexcused" style="width: 126px; "/><span class="err"><form:errors path="Workschool.beexcused"></form:errors></td>
        	  <td width="250" style="width: 134px; ">
        	  <b>
        	 &nbsp;Be Excused From:
        	  </b>
        	  </td>
        	  <td style="width: 245px; ">
        	 <input type="radio" name="excused" value="work">Work&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="excused" value="school">School&nbsp;&nbsp;&nbsp;	
        	    <input type="radio" name="excused" value="P.E">P.E&nbsp;&nbsp;&nbsp;
        	  </td>
        	  </tr>
       		  </table><br>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td width="60" style="width: 129px; "><input type="text" class="input_txtbx1" name="beconfined" id="beconfined" style="width: 126px; "/><span class="err"><form:errors path="Workschool.beconfined"></form:errors></td>
        	  <td width="150" style="width: 133px; ">
        	  <b>
        	<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->  Be Confined To:
        	  </b>
        	  </td>
        	  <td style="width: 255px; ">
        	&nbsp;&nbsp;&nbsp;&nbsp;  <input type="radio" name="confined" value="lightduty">Light Duty&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="confined" value="modifiedduty">Modified Duty&nbsp;&nbsp;&nbsp;	
        	   
        	  </td>
        	  </tr>
       		  </table><br><br>
       		  <table>
       		  <tr>
       		  <td align="left">
       		  <p>
       		  <b>
       		  With the following restrictions:
       		  </b>
       		  </p>
       		  </td>
       		  </tr>
       		  </table>
       		  
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="lifting" id="lifting" style="width: 126px; "/><span class="err"><form:errors path="Workschool.lifting"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp; Maximum lifting capability:
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="lift" value="10lbs">10Lbs&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="lift" value="20lbs">20Lbs&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="lift" value="30lbs">30Lbs&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="lift" value="40lbs">40Lbs&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="lift" value="50lbs">50Lbs&nbsp;&nbsp;&nbsp;
        	   
        	  </td>
        	  </tr>
       		  </table>
       		  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="pushing" id="pushing" style="width: 126px; "/><span class="err"><form:errors path="Workschool.pushing"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;Low force pushing/pulling:  
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="push" value="10lbs">10Lbs&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="push" value="20lbs">20Lbs&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="push" value="30lbs">30Lbs&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="push" value="40lbs">40Lbs&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="push" value="50lbs">50Lbs&nbsp;&nbsp;&nbsp;
        	   </td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="drive" id="drive" style="width: 126px; "/><span class="err"><form:errors path="Workschool.drive"></form:errors></td>
        	  <td>
        	  <b>
        	 &nbsp;&nbsp; Unable to drive long distances (MAX ONE HOUR)  
        	  </b>
        	  </td>
        	  </tr></table>
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="sitting" id="sitting" style="width: 126px; "/><span class="err"><form:errors path="Workschool.sitting"></form:errors></td>
        	  <td width="250">
        	  <b>
        	&nbsp;&nbsp; Sitting excessive periods of time:   
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="sit" value="1hrs">1Hrs&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="sit" value="2hrs">2Hrs&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="sit" value="3hrs">3Hrs&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="sit" value="4hrs">4Hrs&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="sit" value="5hrs">5Hrs&nbsp;&nbsp;&nbsp;
        	   </td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="standing" id="standing" style="width: 126px; "/><span class="err"><form:errors path="Workschool.standing"></form:errors></td>
        	  <td width="250">
        	  <b>
        	&nbsp;&nbsp;Standing excessive periods of time:   
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="stand" value="1hrs">1Hrs&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="stand" value="2hrs">2Hrs&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="stand" value="3hrs">3Hrs&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="stand" value="4hrs">4Hrs&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="stand" value="5hrs">5Hrs&nbsp;&nbsp;&nbsp;
        	   </td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="bend" id="bend" style="width: 126px; "/><span class="err"><form:errors path="Workschool.bend"></form:errors></td>
        	  <td>
        	  <b>
        	 &nbsp;&nbsp; No repetitive bending
        	  </b>
        	  </td>
        	  </tr></table>
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="entry" id="entry" style="width: 126px; "/><span class="err"><form:errors path="Workschool.entry"></form:errors></td>
        	  <td >
        	  <b>
         &nbsp;&nbsp; Use caution while entering/exiting vehicles
        	  </b>
        	  </td>
        	  </tr></table>
        	   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="light" id="light" style="width: 126px; "/><span class="err"><form:errors path="Workschool.light"></form:errors></td>
        	  <td >
        	  <b>
        	 &nbsp;&nbsp; Light recreation only
        	  </b>
        	  </td>
        	  </tr></table><br>
        	   <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>From(Date):</td>
              <td ><input type="text" class="input_txtbx1" name="froms" id="datepicker1" /><span class="err" id="datepicker1error"  style="color: red;font-style:italic;"><form:errors path="Workschool.froms"></form:errors></td>
              <td height="25" width="120"><span class="err">*</span>To(Date):</td>
              <td ><input type="text" class="input_txtbx1" name="tos" id="datepicker2" /><span class="err" id="datepicker2error"  style="color: red;font-style:italic;"><form:errors path="Workschool.tos"></form:errors></td>
              </tr>
              </table><br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td ><input type="text" class="input_txtbx1" name="returns" id="datepicker" /><span class="err"><form:errors path="Workschool.returns"></form:errors></td>
        	  <td >Return to Regular<select width="50%" name="regular"><option value="Duty">Duty</option><option value="School">School</option><option value="P.E">P.E</option></select> </td>
        	  <td><span class="err">*</span>on<input type="text" class="input_txtbx1" name="returndate"  id="datepicker3" /><span class="err" id="datepicker3error"  style="color: red;font-style:italic;"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  </tr></table><br>
              
           
        	
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Diagnosis:</td>
              <td ><input type="text" class="input_txtbx1" name="Diagnosis" id="Diagnosis" /><span class="err"><form:errors path="Workschool.Diagnosis"></form:errors></td>
              </tr>
              </table><br>
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr>
        	  <td><p><b>
        	  Please feel free to contact me at the above number if you have any questions.

Yours in Health,</b>
        	  </p>
        	  </td>
        	  </tr>
 </table>
 
<table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr>
 <td align="right"><b>Dr. Darrin A. Pordash</b></td>
 </tr>
 </table>
 </c:when>
 <c:otherwise>
 
 <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Sheffield Village Plaza</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>5190 Detroit Road</b></td>
              </tr>
               <tr ><td width="260"></td>
              <td ><b>Sheffield Village, Ohio 44035</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>(440) 934-3099  Fax: (440) 934-3107</b></td>
              </tr>
              </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>Date:</td>
              <td ><input type="hidden" name="workid" value="${work.workid }"><input type="text" class="input_txtbx1" name="date"  value="${work.date }"  id="datepicker" /><span class="err" id="datepickererror"  style="color: red;font-style:italic;"><form:errors path="Workschool.date"></form:errors></td>
              </tr>
              </table><br>
              <table>
              <tr>
              <td><span class="err">*</span>
              This is to certify that&nbsp;&nbsp;&nbsp; <input type="text" class="input_txtbx1" name="letter" value="${work.letter }"  id="letter" /><span class="err" id="lettererror"  style="color: red;font-style:italic;"><form:errors path="Workschool.letter"></form:errors></span> is under my care.  In order to avoid aggravation of his/her condition, I recommend that he/she...

              
              </td>
              </tr>
              </table><br><br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td width="60"><input type="text" class="input_txtbx1" name="beexcused" value="${work.beexcused }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="150" >
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Be Excused From:
        	  </b>
        	  </td>
        	  <td>
        	&nbsp;&nbsp;&nbsp;&nbsp;  <input type="radio" name="excused" value="work" <c:if test="${workschooldetails.excused=='work'}"><c:out value="checked=checked"/></c:if>>WORK&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="excused" value="school"<c:if test="${workschooldetails.excused=='school'}"><c:out value="checked=checked"/></c:if>>SCHOOL&nbsp;&nbsp;&nbsp;	
        	    <input type="radio" name="excused" value="P.E" <c:if test="${workschooldetails.excused=='P.E'}"><c:out value="checked=checked"/></c:if>>P.E&nbsp;&nbsp;&nbsp;
        	  </td>
        	  </tr>
       		  </table><br>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td width="60"><input type="text" class="input_txtbx1" name="beconfined" value="${work.beconfined }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="150">
        	  <b>
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Be Confined To:
        	  </b>
        	  </td>
        	  <td>
        	&nbsp;&nbsp;&nbsp;&nbsp;  <input type="radio" name="confined" value="lightduty"<c:if test="${workschooldetails.confined=='lightduty'}"><c:out value="checked=checked"/></c:if>>LIGHT DUTY&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="confined" value="modifiedduty"<c:if test="${workschooldetails.confined=='modifiedduty'}"><c:out value="checked=checked"/></c:if>>MODIFIED DUTY&nbsp;&nbsp;&nbsp;	
        	   
        	  </td>
        	  </tr>
       		  </table><br><br>
       		  <table>
       		  <tr>
       		  <td align="left">
       		  <p>
       		  <b>
       		  With the following restrictions:
       		  </b>
       		  </p>
       		  </td>
       		  </tr>
       		  </table>
       		  
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="lifting" value="${work.lifting }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Maximum lifting capability:
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="lift" value="10lbs"<c:if test="${workschooldetails.lift=='10lbs'}"><c:out value="checked=checked"/></c:if>>10LBS&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="lift" value="20lbs"<c:if test="${workschooldetails.lift=='20lbs'}"><c:out value="checked=checked"/></c:if>>20LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="lift" value="30lbs"<c:if test="${workschooldetails.lift=='30lbs'}"><c:out value="checked=checked"/></c:if>>30LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="lift" value="40lbs"<c:if test="${workschooldetails.lift=='40lbs'}"><c:out value="checked=checked"/></c:if>>40LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="lift" value="50lbs"<c:if test="${workschooldetails.lift=='50lbs'}"><c:out value="checked=checked"/></c:if>>50LBS&nbsp;&nbsp;&nbsp;
        	   
        	  </td>
        	  </tr>
       		  </table>
       		  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="pushing" value="${work.pushing }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Low force pushing/pulling:  
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="push" value="10lbs"<c:if test="${workschooldetails.push=='10lbs'}"><c:out value="checked=checked"/></c:if>>10LBS&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="push" value="20lbs"<c:if test="${workschooldetails.push=='20lbs'}"><c:out value="checked=checked"/></c:if>>20LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="push" value="30lbs"<c:if test="${workschooldetails.push=='30lbs'}"><c:out value="checked=checked"/></c:if>>30LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="push" value="40lbs"<c:if test="${workschooldetails.push=='40lbs'}"><c:out value="checked=checked"/></c:if>>40LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="push" value="50lbs"<c:if test="${workschooldetails.push=='50lbs'}"><c:out value="checked=checked"/></c:if>>50LBS&nbsp;&nbsp;&nbsp;
        	   </td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="drive" value="${work.drive }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td>
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Unable to drive long distances (MAX ONE HOUR)  
        	  </b>
        	  </td>
        	  </tr></table>
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="sitting" value="${work.sitting }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sitting excessive periods of time:   
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="sit" value="1hrs"<c:if test="${workschooldetails.sit=='1hrs'}"><c:out value="checked=checked"/></c:if>>1HRS&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="sit" value="2hrs"<c:if test="${workschooldetails.sit=='2hrs'}"><c:out value="checked=checked"/></c:if>>2HRSS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="sit" value="3hrs"<c:if test="${workschooldetails.sit=='3hrs'}"><c:out value="checked=checked"/></c:if>>3HRSS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="sit" value="4hrs"<c:if test="${workschooldetails.sit=='4hrs'}"><c:out value="checked=checked"/></c:if>>4HRS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="sit" value="5hrs"<c:if test="${workschooldetails.sit=='5hrs'}"><c:out value="checked=checked"/></c:if>>5HRS&nbsp;&nbsp;&nbsp;
        	   </td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="standing" value="${work.standing }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Standing excessive periods of time:   
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="stand" value="1hrs"<c:if test="${workschooldetails.stand=='1hrs'}"><c:out value="checked=checked"/></c:if>>1HRS&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="stand" value="2hrs"<c:if test="${workschooldetails.stand=='2hrs'}"><c:out value="checked=checked"/></c:if>>2HRSS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="stand" value="3hrs"<c:if test="${workschooldetails.stand=='3hrs'}"><c:out value="checked=checked"/></c:if>>3HRSS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="stand" value="4hrs"<c:if test="${workschooldetails.stand=='4hrs'}"><c:out value="checked=checked"/></c:if>>4HRS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="stand" value="5hrs"<c:if test="${workschooldetails.stand=='5hrs'}"><c:out value="checked=checked"/></c:if>>5HRS&nbsp;&nbsp;&nbsp;
        	   </td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="bend" value="${work.bend }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td>
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  No repetitive bending
        	  </b>
        	  </td>
        	  </tr></table>
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="entry" value="${work.entry }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td >
        	  <b>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 	 Use caution while entering/exiting vehicles
        	  </b>
        	  </td>
        	  </tr></table>
        	   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="light" value="${work.light }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td >
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Light recreation only
        	  </b>
        	  </td>
        	  </tr></table><br>
        	   <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>From(Date):</td>
              <td ><input type="text" class="input_txtbx1" name="froms" value="${work.froms }" id="datepicker1" /><span class="err" id="datepicker1error"  style="color: red;font-style:italic;"><form:errors path="Workschool.froms"></form:errors></td>
              <td height="25" width="120"><span class="err">*</span>To(Date):</td>
              <td ><input type="text" class="input_txtbx1" name="tos" value="${work.tos }" id="datepicker2" /><span class="err" id="datepicker2error"  style="color: red;font-style:italic;"><form:errors path="Workschool.tos"></form:errors></td>
              </tr>
              </table><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td ><input type="text" class="input_txtbx1" name="returns" value="${workschooldetails.returns }" id="datepicker" /><span class="err"><form:errors path="Workschool.returns"></form:errors></td>
        	  <td >Return to Regular<select width="50%" name="regular"><option value="Duty">Duty</option><option value="School">School</option><option value="P.E">P.E</option></select> </td>
        	  <td >on<input type="text" class="input_txtbx1" name="returndate" value="${workschooldetails.returndate }" id="datepicker3" /><span class="err" id="datepicker3error"  style="color: red;font-style:italic;"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  </tr></table><br>
        	
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120">Diagnosis:</td>
              <td ><input type="text" class="input_txtbx1" name="Diagnosis" value="${work.diagnosis }" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table><br>
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr>
        	  <td><p><b>
        	  Please feel free to contact me at the above number if you have any questions.

Yours in Health,</b>
        	  </p>
        	  </td>
        	  </tr>
 </table>
 
<table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr>
 <td align="right"><b>Dr. Darrin A. Pordash</b></td>
 </tr>
 </table>
 </c:otherwise>
 </c:choose>
<table><tr> <td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');"></td>
               <td><a href="viewallpatientdetails"style="color:white" class="submit_btn" id="cancelid">Cancel</a></td>
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