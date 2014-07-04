<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <script src="js/jquery-1.4.4.js"></script>
    <script src="js/jquery.ui.core.js"></script>
    <script src="js/jquery.ui.widget.js"></script>
    <script src="js/jquery.ui.mouse.js"></script>
    <script src="js/jquery.ui.draggable.js"></script>
    <script src="js/jquery.ui.droppable.js"></script>
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>


  <script>
          function isNumberKey(evt)
          {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

             return true;
          }  
          
          </script>     
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>

<script>
$(function() {
    //$( "#draggable" ).draggable({ revert: "not valid" });
    
    $(window).load(function(){
    var leftvalue=$('#shortlegleft').val();
    var rightvalue=$('#shortlegright').val();
    $('input:checkbox[name=other]').each(function() 
{    
    if($(this).is(':checked'))
    var other=$(this).val();     
       if(other=="other")
    {
    document.getElementById("otherdefict").style.display="block";
    }
    else
    {document.getElementById("otherdefict").style.display="none";
    }  
});
   
    $('input:checkbox[name=shortlegleft]').each(function() 
{    
    if($(this).is(':checked'))
    var left=$(this).val();     
       if(left=="left")
    {
    document.getElementById("shortlegleft").style.display="block";
    }
    else
    {document.getElementById("shortlegleft").style.display="none";
    }  
});
  
   $('input:checkbox[name=shortlegright]').each(function() 
{    
    if($(this).is(':checked'))
    var right=$(this).val();     
       if(right=="right")
    {
    document.getElementById("shortlegright").style.display="block";
    }
    else
    {document.getElementById("shortlegright").style.display="none";
    }  
});
  
    
    if(leftvalue=="other")
    {
    document.getElementById("legother").style.display="block";
    }
    else
    {document.getElementById("legother").style.display="none";
    }
    if(rightvalue=="other")
    {
    document.getElementById("legother1").style.display="block";
    }
    else
    {
    	document.getElementById("legother1").style.display="none";
    }
    
    });
    });

</script>
<script type="text/javascript">


function neurologicalvalidate()
{
if(document.getElementById('neurologicalunremarkable').checked)
{
document.getElementById('neurological').style.display="none";

 }
 else if(document.getElementById('neurologicalexcept').checked)
{
document.getElementById('neurological').style.display="block";
 } 
}
function Checksymptom(val){
 var element=document.getElementById('legother');
 
 if(val=='other')
   element.style.display='block';
 else  {
	 document.getElementById("legothererror").innerHTML="";
   element.style.display='none';
 }
} 
function Checksymptom1(val){
 var element=document.getElementById('legother1');

 if(val=='other')
   element.style.display='block';
 else  
	 {
	 document.getElementById("legother1error").innerHTML="";
   element.style.display='none';
	 }
} 

function visible(val)
{
if(document.getElementById('other').checked)
{
var element=document.getElementById('otherdefict');
 element.style.display='block';
 }
 else
 {
	 document.getElementById("otherdeficterror").innerHTML="";
 var element=document.getElementById('otherdefict');
 element.style.display='none';
 }
}
function shortlegvalidate(val)
{
if(document.getElementById('leftvalue').checked)
{
var element=document.getElementById('shortlegleft');
 element.style.display='block';
 
 }
 else
 {
	 document.getElementById("legothererror").innerHTML="";
 var element=document.getElementById('shortlegleft');
 element.style.display='none';
  document.getElementById('legother').style.display='none';
 }
}
function shortlegvalidate1(val)
{
if(document.getElementById('shortlegcheck').checked)
{
var element=document.getElementById('shortlegright');
 element.style.display='block';
 }
 else
 {
	 document.getElementById("legother1error").innerHTML="";
	 document.getElementById('legother1').style.display='none';
 var element=document.getElementById('shortlegright');
 element.style.display='none';
 }
}
</script >

<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <link rel="stylesheet" href="/resources/css/style.css" />
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
<script type="text/javascript">
$(function() {
    $( "#tabs" ).tabs();
 
    // fix the classes
    $( ".tabs-bottom .ui-tabs-nav, .tabs-bottom .ui-tabs-nav > *" )
      .removeClass( "ui-corner-all ui-corner-top" )
      .addClass( "ui-corner-bottom" );
 
    // move the nav to the bottom
    $( ".tabs-bottom .ui-tabs-nav" ).appendTo( ".tabs-bottom" );
  });
</script>
<script type="text/javascript">
    var currentTab = 0;
    $(function () {
        $("#tabs").tabs({
            select: function (e, i) {
                currentTab = i.index;
            }
        });
    });
    $("#btnNext").live("click", function () {
        var tabs = $('#tabs').tabs();
        var c = $('#tabs').tabs("length");
        currentTab = currentTab == (c - 1) ? currentTab : (currentTab + 1);
        tabs.tabs('select', currentTab);
        $("#btnPrevious").show();
        if (currentTab == (c - 1)) {
            $("#btnNext").hide();
        } else {
            $("#btnNext").show();
        }
    });
    $("#btnPrevious").live("click", function () {
        var tabs = $('#tabs').tabs();
        var c = $('#tabs').tabs("length");
        currentTab = currentTab == 0 ? currentTab : (currentTab - 1);
        tabs.tabs('select', currentTab);
        if (currentTab == 0) {
            $("#btnNext").show();
            $("#btnPrevious").hide();
        }
        if (currentTab < (c - 1)) {
            $("#btnNext").show();
        }
    });
</script>

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
		$("#pname").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});	
   $(function() {
		$("#datepicker").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#assessment").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#diagnosis1").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#diagnosis2").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#diagnosis3").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#diagnosis4").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#diagnosis5").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#diagnosis6").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#times").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#week").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#sign").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#break5").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#break6").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#break3").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#break4").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#comments").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#times").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});	
	$(function() {
		$("#weeks").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
	
	$(function() {
		$("#legother").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
	$(function() {
		$("#legother1").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
	$(function() {
		$("#note").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
	$(function() {
		$("#otherdefict").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
	
   </script>
   <script type="text/javascript">
function validatename(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}  
function validatename1(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[]/g, "");
    document.getElementById(id).value = textInput;
}  
function validatename2(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^0-9 ]/g, "");
    document.getElementById(id).value = textInput;
    var fieldVal = document.getElementById(id).value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=52){
        return true;
    }
    else
    {
        var str = document.getElementById(id).value;
       
        str = str.substring(0, str.length - 1);
    document.getElementById(id).value = str;
    }
     
   
     
}  
function validatename3(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^0-9 ]/g, "");
    document.getElementById(id).value = textInput;
    
    var fieldVal = document.getElementById(id).value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=100){
        return true;
    }
    else
    {
        var str = document.getElementById(id).value;
       
        str = str.substring(0, str.length - 1);
    document.getElementById(id).value = str;
    }
     
}  
function validatenamesl(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^0-9\/]/g, "");
    document.getElementById(id).value = textInput;
} 
function checkLength1(id){
	   
    var fieldVal = document.getElementById(id).value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=99999){
        return true;
    }
    else
    {
        var str = document.getElementById(id).value;
       
        str = str.substring(0, str.length - 1);
    document.getElementById(id).value = str;
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
	function check(id,e,value){
   
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength(id){
   
    var fieldVal = document.getElementById(id).value;
    
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById(id).value;
       
        str = str.substring(0, str.length - 1);
    document.getElementById(id).value = str;
    }
     
    }
	</script>
<script>

	function checkSubmit()
	{
		var error="";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		document.getElementById("pnameerror").innerHTML=" ";
		
		if(document.getElementById("pname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
		else  if(document.getElementById("pname").value.length<4 || document.getElementById("pname").value.length>32)
	    {
	    	
	    	document.getElementById("pnameerror").innerHTML="Required Field should be Length of 4 to 32";
	    	
	    	error="true";
	    }
		document.getElementById("datepickererror").innerHTML="";
	if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
	
	else
		if(document.getElementById("datepicker").value.match(datechk)==null)
	    {
	    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
	    	
	    	error="true";
	    }	
			
	document.getElementById("signerror").innerHTML="";
	if(document.getElementById("sign").value=="")
	{
	document.getElementById("signerror").innerHTML="Required Field Should not be Empty";
	
	error="true";
	}
	else if(document.getElementById("sign").value.length<4 || document.getElementById("sign").value.length>=32)
    {
    	
    	document.getElementById("signerror").innerHTML="Required Field should be Length of 4 to 32";
    	
    	error="true";
    }
	else
	{
	document.getElementById("signerror").innerHTML="";
	}
	
	var leftvalue = document.getElementById('leftvalue').checked;
	var other = document.getElementById('shortlegleft').value;
	var legother = document.getElementById('legother').value;
	if(leftvalue)
		{
		
		if(other == 'other')
			{
			if(legother == "")
				{
				document.getElementById("legothererror").innerHTML="Required Field Should not be Empty";
				error="true";
				}
			else if(legother.length < 4 || legother.length > 32)

				{
				document.getElementById("legothererror").innerHTML="Required Field Should be as number/number";
				error="true";
				}
			else {
				document.getElementById("legothererror").innerHTML="";
			}
			}
		else {
			document.getElementById("legothererror").innerHTML="";
		}
		
		}
	else {
		document.getElementById("legothererror").innerHTML="";
	}
	var leftvalue = document.getElementById('shortlegcheck').checked;
	var other = document.getElementById('shortlegright').value;
	var legother = document.getElementById('legother1').value;
	if(leftvalue)
		{
		
		if(other == 'other')
			{
			if(legother == "")
				{
				document.getElementById("legother1error").innerHTML="Required Field Should not be Empty";
				error="true";
				}
			else if(legother.length < 4 || legother.length > 32)

				{
				document.getElementById("legother1error").innerHTML="Required Field Should be as number/number";
				error="true";
				}
			else {
				document.getElementById("legother1error").innerHTML="";
			}
			}
		else {
			document.getElementById("legother1error").innerHTML="";
		}
		
		}
	else {
		document.getElementById("legothererror").innerHTML="";
	}
	
	
var note = document.getElementById('note').value;
	
	if(note =="")
		{
		document.getElementById("noteerror").innerHTML="";
		}
	else if((note.length < 4 )|| (note.length > 400))
		{
		
			document.getElementById("noteerror").innerHTML="Required Field should be Length of 4 to 400";
    	
    	error="true";
		}
	else
	{
	document.getElementById("noteerror").innerHTML="";
	}

	
	var otherdefict = document.getElementById('otherdefict').value;
	var other = document.getElementById('other');
	if(other.checked)
		{
	if(otherdefict =="")
		{
		document.getElementById("otherdeficterror").innerHTML="required field should not be Empty";
		error="true";
		}
	else if((otherdefict.length < 4 )|| (otherdefict.length > 32))
		{
		
			document.getElementById("otherdeficterror").innerHTML="Required Field should be Length of 4 to 32";
    	
    	error="true";
		}
	else{
		document.getElementById("otherdeficterror").innerHTML="";
	}
		}
	else{
		document.getElementById("otherdeficterror").innerHTML="";
	}
	
	
var note = document.getElementById('comments').value;
	
	if(note =="")
		{
		document.getElementById("commentserror").innerHTML="";
		}
	else if((note.length < 4 )|| (note.length > 400))
		{
		
			document.getElementById("commentserror").innerHTML="Required Field should be Length of 4 to 400";
    	
    	error="true";
		}
	else
	{
	document.getElementById("commentserror").innerHTML="";
	}
	

	
	var swelling = document.getElementById('diagnosis1').value;
		
		if(swelling =="")
			{
			document.getElementById("diagnosis1error").innerHTML="";
			}
		else if((swelling.length < 4 )|| (swelling.length > 32))
			{
			
				document.getElementById("diagnosis1error").innerHTML="Required Field should be Length of 4 to 32";
	    	
	    	error="true";
			}
		else
		{
		document.getElementById("diagnosis1error").innerHTML="";
		}

		
		var swelling = document.getElementById('diagnosis2').value;
			
			if(swelling =="")
				{
				document.getElementById("diagnosis2error").innerHTML="";
				}
			else if((swelling.length < 4 )|| (swelling.length > 32))
				{
				
					document.getElementById("diagnosis2error").innerHTML="Required Field should be Length of 4 to 32";
		    	
		    	error="true";
				}
			else
			{
			document.getElementById("diagnosis2error").innerHTML="";
			}
		
			
			var swelling = document.getElementById('diagnosis3').value;
				
				if(swelling =="")
					{
					document.getElementById("diagnosis3error").innerHTML="";
					}
				else if((swelling.length < 4 )|| (swelling.length > 32))
					{
					
						document.getElementById("diagnosis3error").innerHTML="Required Field should be Length of 4 to 32";
			    	
			    	error="true";
					}
				else
				{
				document.getElementById("diagnosis3error").innerHTML="";
				}
			
				
				var swelling = document.getElementById('diagnosis4').value;
					
					if(swelling =="")
						{
						document.getElementById("diagnosis4error").innerHTML="";
						}
					else if((swelling.length < 4 )|| (swelling.length > 32))
						{
						
							document.getElementById("diagnosis4error").innerHTML="Required Field should be Length of 4 to 32";
				    	
				    	error="true";
						}
					else
					{
					document.getElementById("diagnosis4error").innerHTML="";
					}
				
			var swelling = document.getElementById('diagnosis5').value;
					
					if(swelling =="")
						{
						document.getElementById("diagnosis5error").innerHTML="";
						}
					else if((swelling.length < 4 )|| (swelling.length > 32))
						{
						
							document.getElementById("diagnosis5error").innerHTML="Required Field should be Length of 4 to 32";
				    	
				    	error="true";
						}
					else
						{
						document.getElementById("diagnosis5error").innerHTML="";
						}
					

	if(error=="true")
		{
		return false;
		}
		}
</script>
</head>
<body>
<br><br>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">2</a></li>    
  </ul>  
	     <div id="tabs-1">
	     
<form action="updatehipexam" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            HIP	REEXAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	     	<c:set value="${hipexamform.hipexamdetails[0]}" var="hipexamdetails"/> 
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><span class="err">*</span> Patient Name:</td>
          
          
           <td><input type="hidden" value="${hipexamdetails.hipexamno}" name="hipexamno"><input type="text" name="pname"id="pname" value="${hipexamdetails.pname}" onInput="return validatename(id);"><br><span class="err" id="pnameerror"><form:errors path="hipexamdetails.pname"></form:errors></td><td width="480"></td>
           <td ><span class="err">*</span> Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker" value="${hipexamdetails.date}"><br><span id="datepickererror"class="err"><form:errors path="hipexamdetails.date"></form:errors></td>
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION </b></div>
           </br>
           <table >
           <tr><td>Gait:&nbsp;</td><td width="30"></td>  <td><select style="width:178"  name="gait"><option <c:if test="${hipexamdetails.gait=='normal'}"></c:if> <c:out value="selected"></c:out>>normal</option>
           <option <c:if test="${hipexamdetails.gait=='antalogic'}"></c:if> <c:out value="selected"></c:out>>antalogic</option>
           <option <c:if test="${hipexamdetails.gait=='shuffling'}"></c:if> <c:out value="selected"></c:out>>shuffling</option>
           <option <c:if test="${hipexamdetails.gait=='limp'}"></c:if> <c:out value="selected"></c:out>>limp</option>
           <option <c:if test="${hipexamdetails.gait=='stagger'}"></c:if> <c:out value="selected"></c:out>>stagger</option>
           <option <c:if test="${hipexamdetails.gait=='cane assisted'}"></c:if> <c:out value="selected"></c:out>>cane assisted</option>
           <option <c:if test="${hipexamdetails.gait=='wheelchair'}"></c:if> <c:out value="selected"></c:out>>wheelchair</option></select></td>
          
           
            
           
           </tr>
<tr height="10"></tr>
           <tr>
           <td>Pelvic Unleveling:</td><td></td>
           <td><select name="pelvic">
           <option <c:if test="${hipexamdetails.pelvic=='none'}"></c:if> <c:out value="selected"></c:out>>none</option>
           <option<c:if test="${hipexamdetails.pelvic=='superior illiac crest right'}"></c:if> <c:out value="selected"></c:out>>superior illiac crest right</option>
           <option <c:if test="${hipexamdetails.pelvic=='superior iliac crest left'}"></c:if> <c:out value="selected"></c:out>>superior iliac crest left</option></select></td>
             <td width="80"></td>
           
           
           <td width="80">A & O</td><td><select name="ao" ><option <c:if test="${hipexamdetails.ao=='excellent'}"></c:if> <c:out value="selected"></c:out>>excellent</option>
           <option <c:if test="${hipexamdetails.ao=='good'}"></c:if> <c:out value="selected"></c:out>> good</option>
           <option <c:if test="${hipexamdetails.ao=='fair'}"></c:if> <c:out value="selected"></c:out>> fair</option>
           <option <c:if test="${hipexamdetails.ao=='severe'}"></c:if> <c:out value="selected"></c:out>> severe</option></select></td>
           </tr>  
           </table> 
           </br>           
         
          <table  style="border:10">      
         <tr><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION
 </b></td>
         <td width="100"></td>
         <td align="left"><input type="checkbox" value="All Soft Tissue Unremarkable" <c:if test="${hipexamdetails.dysfunction=='All Soft Tissue Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> onclick="softtissuevalidate()" name="dysfunction" >All Soft Tissue Unremarkable</td>
         <td width="180"></td>
          </tr>  </table>       
<br>
<table id="softtissue" >	
	<tr><td  width="300">Leg Length Discrepancy:  Short Leg-  </td>

	<td ><input type="checkbox" id="leftvalue"  <c:if test="${hipexamdetails.shortlegleft=='left'}"> <c:out value="checked=checked"></c:out></c:if> onclick="shortlegvalidate(this.value)" name="shortlegleft" value="left">&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<td><select  id="shortlegleft" style="display: none"name="shortlegleftvalue" onchange='Checksymptom(this.value)'>	
	<option value="1/8"  <c:if test="${hipexamdetails.shortlegleftvalue=='1/8'}"> <c:out value="selected"></c:out></c:if>>1/8</option>
	<option  value="1/4"<c:if test="${hipexamdetails.shortlegleftvalue=='1/4'}"><c:out value="selected"></c:out></c:if>>1/4</option>
	<option  value="3/8"<c:if test="${hipexamdetails.shortlegleftvalue=='3/8'}"> <c:out value="selected"></c:out></c:if>>3/8</option>
	<option  value="1/2"<c:if test="${hipexamdetails.shortlegleftvalue=='1/2'}"> <c:out value="selected"></c:out></c:if>>1/2</option>
	<option  value="5/8"<c:if test="${hipexamdetails.shortlegleftvalue=='5/8'}"> <c:out value="selected"></c:out></c:if>>5/8</option>
	<option  value="3/4"<c:if test="${hipexamdetails.shortlegleftvalue=='3/4'}"> <c:out value="selected"></c:out></c:if>>3/4</option>
	<option  value="7/8"<c:if test="${hipexamdetails.shortlegleftvalue=='7/8'}"> <c:out value="selected"></c:out></c:if>>7/8</option>
	<option  value="1"<c:if test="${hipexamdetails.shortlegleftvalue=='1'}"> <c:out value="selected"></c:out></c:if>>1</option>
	<option  value="other"<c:if test="${hipexamdetails.shortlegleftvalue=='other'}"><c:out value="selected"></c:out></c:if>>other</option>
	</select></td><td align="right"><input type="text" size="9" value="${hipexamdetails.shortlegleftother}" name="shortlegleftother" id="legother" onInput="return validatenamesl(id);"style="display: none"  >
	<span id="legothererror" style="color:red"></span>
	</td>
	<td width="112"></td>
	<td>
	<input type="checkbox" id="shortlegcheck" name="shortlegright" onclick= "shortlegvalidate1(this.value)" value="right"  <c:if test="${hipexamdetails.shortlegright=='right'}"></c:if> <c:out value="checked=checked"></c:out>>&nbsp;&nbsp;Right &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	<td><select  id="shortlegright" style="display: none"  name="shortlegrightvalue" onchange='Checksymptom1(this.value)'>	
	<option  <c:if test="${hipexamdetails.shortlegrightvalue=='1/8'}"> <c:out value="selected"></c:out></c:if>> 1/8	</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='1/4'}"> <c:out value="selected"></c:out></c:if>> 1/4	</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='3/8'}"> <c:out value="selected"></c:out></c:if>> 3/8	</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='1/2'}"> <c:out value="selected"></c:out></c:if>> 1/2</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='5/8'}"><c:out value="selected"></c:out></c:if>> 5/8	</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='3/4'}"> <c:out value="selected"></c:out></c:if>> 3/4</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='7/8'}"> <c:out value="selected"></c:out></c:if>> 7/8</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='1'}"><c:out value="selected"></c:out></c:if>> 1</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='other'}"> <c:out value="selected"></c:out></c:if>>other</option>
	</select></td>&nbsp;<td><input type="text" id="legother1" value="${hipexamdetails.shortlegrightother}"size="9" name="shortlegrightother"onInput="return validatenamesl(id);" style="display: none" >
		<span id="legother1error" style="color:red"></span>
	
	</td>
	
	
	
	</tr></table>
	<table id="softtissue1" >
	<tr height="10"></tr>
	<tr ><td width="300"><c:out value="${hipexamdetails.piriformisleft}"></c:out>Piriformis:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  <c:if test="${hipexamdetails.piriformisleft=='left'}"><c:out value="checked"></c:out></c:if> value="left" name="piriformisleft">Left&nbsp;&nbsp;<input type="radio" <c:if test="${hipexamdetails.piriformisleft=='right'}"> <c:out value="checked=checked"></c:out></c:if> value="right" name="piriformisleft">Right</td>
	
	<td width="210">Gluteus Medius:&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" <c:if test="${hipexamdetails.gluteusleft=='left'}"> <c:out value="checked"></c:out></c:if> value="left" name="gluteusleft">Left&nbsp;&nbsp;<input <c:if test="${hipexamdetails.gluteusleft=='right'}"> <c:out value="checked"></c:out></c:if> type="radio" name="gluteusleft" value="right">Right</td>
	<td></td>
	<td width="230">Iliopsoas:&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="iliopsoasleft"  <c:if test="${hipexamdetails.iliopsoasleft=='left'}"> <c:out value="checked"></c:out></c:if> value="left">Left&nbsp;&nbsp;<input type="radio" <c:if test="${hipexamdetails.iliopsoasleft=='right'}"> <c:out value="checked"></c:out></c:if> name="iliopsoasleft" value="right">Right</td>
	
	<td>Hamstrings:&nbsp;&nbsp;&nbsp;&nbsp;<input <c:if test="${hipexamdetails.hamstringsleft=='left'}"> <c:out value="checked"></c:out></c:if> type="radio" name="hamstringsleft" value="left">Left&nbsp;&nbsp;<input <c:if test="${hipexamdetails.hamstringsleft=='right'}"> <c:out value="checked"></c:out></c:if> type="radio" name="hamstringsleft" value="right">Right</td>
	
	</tr>
	<tr height="10"></tr></table>
	<table id="softtissue2" ><tr><td valign="top">Other / Note:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="5" cols="50" name="note"id="note" onInput="return validatename1(id);">${hipexamdetails.note}</textarea>
	<span id="noteerror" style="color:red"></span>
	</td></tr>
	
	</table>	
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="70"></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional" <c:if test="${hipexamdetails.functional=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>Unremarkable
         
         </td>
         <td width="120"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td><td width="70"></td>
         <td><input type="checkbox" name="orthotpedic" <c:if test="${hipexamdetails.orthotpedic=='unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> value="unremarkable">Unremarkable
        
         </td>  </tr></table>
         </br>
         <table >
         <tr>
         <td width="140" valign="top">
         (*  Pain Elicited)	
         </td>   
         <td width="160" valign="top">Normal </td><td align="center">Actual</br></br>
          Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right
         </td>
         <td></td> <td></td><td></td> <td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
               
         
         </tr>
         <tr height="10"></tr>
         <tr><td>Flexion:		</td><td>100</td><td>
         <input type="text" size="5" value="${hipexamdetails.flexionleft}"name="flexionleft"id="flexionleft" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input value="${hipexamdetails.flexionright}"  onkeypress="return validate(event)" size="5" type="text" name="flexionright"id="flexionright"onInput="checkLength1(id);"></td>
         <td width="90"></td><td>Patrick Fabere:	</td><td width="150"></td><td>
         <input size="5" type="text"  name="fabereleft"id="fabereleft" onkeypress="return validate(event)" value="${hipexamdetails.fabereleft}"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="text" value="${hipexamdetails.fabereleft}"  onkeypress="return validate(event)" size="5" name="fabereright"id="fabereright"onInput="checkLength1(id);"></td></tr>
         <tr><td>Extension:			</td><td>30</td><td>
         <input size="5" type="text" onkeypress="return validate(event)" value="${hipexamdetails.extensionleft}" name="extensionleft"id="extensionleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input value="${hipexamdetails.extensionright}" size="5" type="text" name="extensionright"  id="extensionright" onkeypress="return validate(event)"onInput="checkLength1(id);"></td>
         <td width="90"></td><td>Nachlas:</td><td width="150"></td><td>
         <input type="text"  size="5" name="nachlasleft" id="nachlasleft" value="${hipexamdetails.nachlasleft}" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="text" value="${hipexamdetails.nachlasright}" size="5" onkeypress="return validate(event)"  name="nachlasright" id="nachlasright"onInput="checkLength1(id);"></td></tr>
         <tr><td>Abduction:				</td><td>45</td><td>
         <input size="5" type="text" onkeypress="return validate(event)" name="abductionleft"id="abductionleft" value="${hipexamdetails.abductionright}"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input value="${hipexamdetails.abductionleft}"  size="5" type="text" name="abductionright" id="abductionright" onkeypress="return validate(event)"onInput="checkLength1(id);"></td><td width="90"></td>
         <td>Ely's:</td><td width="150"></td><td>
         <input type="text" size="5"  onkeypress="return validate(event)"  name="elysleft" id="elysleft" value="${hipexamdetails.elysleft}"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input value="${hipexamdetails.elysright}" onkeypress="return validate(event)" size="5" type="text"  name="elysright"id="elysright"onInput="checkLength1(id);"></td></tr>
         <tr><td>Adduction:				</td><td>30</td><td>
         <input size="5" type="text" onkeypress="return validate(event)" value="${hipexamdetails.adductionleft}" name="adductionleft"id="adductionleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input value="${hipexamdetails.adductionright}" onkeypress="return validate(event)" size="5" type="text" name="adductionright"id="adductionright"onInput="checkLength1(id);"></td>
         <td width="90"></td><td>Yeoman's:</td><td width="150"></td><td>
         <input type="text" size="5" onkeypress="return validate(event)"  value="${hipexamdetails.yeomansleft}" name="yeomansleft"id="yeomansleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input size="5" type="text" onkeypress="return validate(event)" value="${hipexamdetails.yeomansright}" name="yeomansright"id="yeomansright"onInput="checkLength1(id);"></td></tr></tr>
         <tr><td>Internal Rotation:</td><td>40</td><td>
         <input type="text" size="5" onkeypress="return validate(event)" name="internalrotationleft"id="internalrotationleft" value="${hipexamdetails.internalrotationleft}"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input size="5" type="text" onkeypress="return validate(event)" value="${hipexamdetails.internalrotationright}" name="internalrotationright"id="internalrotationright"onInput="checkLength1(id);"><td width="90"></td>
         <td>Ober's:	</td><td width="150"></td><td>
         <input type="text" size="5" onkeypress="return validate(event)" value="${hipexamdetails.obersleft}" name="obersleft"id="obersleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input  value="${hipexamdetails.obersright}" onkeypress="return validate(event)" type="text" size="5" name="obersright"id="obersright"onInput="checkLength1(id);"></td></td></tr>
         <tr><td>External Rotation:</td><td>45</td><td>
         <input type="text" size="5" onkeypress="return validate(event)" name="externalrotationleft"id="externalrotationleft" value="${hipexamdetails.externalrotationleft}"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input size="5" type="text" onkeypress="return validate(event)" value="${hipexamdetails.externalrotationright}"id="externalrotationright" name="externalrotationright"onInput="checkLength1(id);"></td><td width="90"></td>
         <td>	Hibbs:</td><td width="150"></td><td>
         <input type="text" size="5" onkeypress="return validate(event)"  value="${hipexamdetails.hibbsleft}"id="hibbsleft" name="hibbsleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input  value="${hipexamdetails.hibbsright}"size="5" type="text" onkeypress="return validate(event)" id="hibbsright" name="hibbsright"onInput="checkLength1(id);"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td>
          <td>Thomas:</td><td width="150"></td><td>
          <input type="text" onkeypress="return validate(event)" size="5" value="${hipexamdetails.thomasleft}" name="thomasleft"id="thomasleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
          <input value="${hipexamdetails.thomasright}" onkeypress="return validate(event)" type="text" size="5" name="thomasright"id="thomasright"onInput="checkLength1(id);"></td></tr>
         </table>
         </td></tr></table></div></div>
        <div id="tabs-2">     

	    <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            HIP	REEXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr>
         <td width="130"><b style="font-size:14px">NEUROLOGICAL</b></td>
         <td width="246"><input type="checkbox"   <c:if test="${hipexamdetails.neurological=='Neurological Testing Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> id=neurologicalunremarkable name="neurological" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td width="250">  <b> Sensory	</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Motor / Strength		</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Reflexes</b> (Muscle Spindles)	</td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td> </tr>
          <tr height="10"></tr>
           <tr><td>L1</td><td>
           <input type="text" value="${hipexamdetails.inguinalarealeft}"  size="5" onkeypress="return validate(event)" name="inguinalarealeft" id="inguinalarealeft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
           <input size="5" type="text" value="${hipexamdetails.inguinalarearight}" onkeypress="return validate(event)"  name="inguinalarearight" id="inguinalarearight"onInput="checkLength1(id);">&nbsp;&nbsp; Inguinal area</td>
           <td>L1</td><td>
           <input size="5" type="text" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" value="${hipexamdetails.iliopsoasfirstleft}"   name="iliopsoasfirstleft" id="iliopsoasfirstleft" >/5&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="text"   size="5" value="${hipexamdetails.iliopsoasfirstright}" name="iliopsoasfirstright"  id="iliopsoasfirstright" onKeyPress="return check(id,event,value)" onInput="checkLength(id)"
           >/5&nbsp;&nbsp; Iliopsoas</td><td></td><td></td></tr>
           <tr><td>L2</td><td>
           <input size="5" type="text" value="${hipexamdetails.antleft}" onkeypress="return validate(event)" name="antleft" id="antleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
           <input size="5" value="${hipexamdetails.antright}" onkeypress="return validate(event)" type="text" id="antright"name="antright"onInput="checkLength1(id);">&nbsp;&nbsp;Ant/med thigh</td><td>L2</td><td><input type="text"  name="iliopsoas1left" id="iliopsoas1left" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" value="${hipexamdetails.iliopsoas1left}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" value="${hipexamdetails.iliopsoas1right}"  type="text" id="iliopsoas1right" name="iliopsoas1right">/5&nbsp;&nbsp;Iliopsoas</td><td></td><td>&nbsp;(2+/5 is Normal)</td></tr>
           <tr><td>L3</td><td><input type="text" value="${hipexamdetails.kneeleft}" onkeypress="return validate(event)"  id="kneeleft" name="kneeleft" size="5"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
           <input size="5" type="text" onkeypress="return validate(event)" value="${hipexamdetails.kneeright}" id="kneeright" name="kneeright"onInput="checkLength1(id);">&nbsp;&nbsp;Medial knee</td><td>L3</td><td><input type="text" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" name="iliopsoas2left" id="iliopsoas2left" value="${hipexamdetails.iliopsoas2left}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" value="${hipexamdetails.iliopsoas2right}"  name="iliopsoas2right" id="iliopsoas2right" >/5&nbsp;&nbsp;Iliopsoas</td><td></td><td>&nbsp; </td></tr>
           <tr><td>L4</td><td>
           <input type="text" size="5" value="${hipexamdetails.medialleft}" onkeypress="return validate(event)"  name="medialleft"id="medialleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
           <input  size="5"type="text" onkeypress="return validate(event)"  value="${hipexamdetails.medialright}"  name="medialright"  id="medialright"onInput="checkLength1(id);">&nbsp;&nbsp;Medial leg</td><td>L4</td><td><input type="text"  onKeyPress="return check(id,event,value)" onInput="checkLength(id)" value="${hipexamdetails.femleft}"  name="femleft" id="femleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" value="${hipexamdetails.femright}" id="femright"  name="femright">/5&nbsp;&nbsp;Rectus Fem</td><td>L4</td><td><input type="text" value="${hipexamdetails.patellarleft}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" name="patellarleft" id="patellarleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.patellarright}"   id="patellarright" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" name="patellarright" size="5">/5&nbsp;&nbsp;Patellar</td></tr>
            <tr><td>L5</td><td><input type="text" size="5" value="${hipexamdetails.latleft}"  onkeypress="return validate(event)" name="latleft" id="latleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" size="5" name="latright"id="latright" onkeypress="return validate(event)" value="${hipexamdetails.latright}" onInput="checkLength1(id);">&nbsp;&nbsp;Ant/lat leg</td><td>L5</td><td><input type="text" name="medleft" id="medleft" value="${hipexamdetails.medleft}"  onKeyPress="return check(id,event,value)" onInput="checkLength(id)" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"  onKeyPress="return check(id,event,value)" onInput="checkLength(id)" type="text" name="medright" id="medright" value="${hipexamdetails.medright}" >/5&nbsp;&nbsp;Glut Med</td><td>L5</td><td><input type="text" name="hsleft" id="check(id,event,value)" onInput="checkLength(id)" value="${hipexamdetails.hsleft}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" value="${hipexamdetails.hsright}"  name="hsright" id="hsright" size="5">/5&nbsp;&nbsp;Med HS</td></tr>
            <tr><td>S1</td><td>
            <input size="5" type="text" value="${hipexamdetails.plantarleft}" onkeypress="return validate(event)"  name="plantarleft"id="plantarleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
            <input size="5" type="text" value="${hipexamdetails.plantarright}"  onkeypress="return validate(event)" name="plantarright"id="plantarright"onInput="checkLength1(id);">&nbsp;&nbsp;Big toe/plantar</td><td>S1</td><td><input type="text"value="${hipexamdetails.maxleft}"  name="maxleft" id="maxleft" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text"  onKeyPress="return check(id,event,value)" onInput="checkLength(id)"value="${hipexamdetails.maxright}" id="maxright" name="maxright">/5&nbsp;&nbsp;Glut Max</td><td>S1</td><td><input type="text" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" value="${hipexamdetails.achillesleft}"  name="achillesleft" id="achillesleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipexamdetails.achillesright}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" name="achillesright" id="achillesright" >/5&nbsp;&nbsp;Achilles</td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><input type="checkbox"  <c:if test="${hipexamdetails.walking=='walking'}"> <c:out value="checked=checked"></c:out></c:if> name="walking" value="walking">Walking</td><td width="110"><input type="checkbox" name="standing"  <c:if test="${hipexamdetails.standing=='standing'}"> <c:out value="checked=checked"></c:out></c:if> value="standing"> Standing</td><td width="70"><input type="checkbox" name="stairs"  <c:if test="${hipexamdetails.stairs=='stairs'}"> <c:out value="checked=checked" ></c:out></c:if> value="stairs">Stairs</td>
           <td><input type="checkbox" name="other" id="other" <c:if test="${hipexamdetails.other=='other'}"> <c:out value="checked=checked"></c:out></c:if> value="other"   onclick="visible(this.value)">Other</td>
           <td><input type="text" name="otherdefict" value="${hipexamdetails.otherdefict}" id="otherdefict" style="display:none "onInput="return validatename(id);">
           <span id="otherdeficterror" style="color:red"></span>
           </td><td width="300"></td></tr>
           
           </table>
           <table>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><textarea rows="5" cols="50" name="comments"id="comments" onInput="return validatename1(id);">${hipexamdetails.comments}</textarea> 
           <span id="commentserror" style="color:red"></span> 
             </td></tr>
           <tr height="10"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td><select name="patientstatus">
               <option  <c:if test="${hipexamdetails.patientstatus=='Excellent'}"> <c:out value="selected"></c:out></c:if>  >Excellent</option> 
                 <option <c:if test="${hipexamdetails.patientstatus=='Good'}"> <c:out value="selected"></c:out></c:if>> Good</option>  
                  <option <c:if test="${hipexamdetails.patientstatus=='Fair'}"> <c:out value="selected"></c:out></c:if>> Fair</option> 
                    <option <c:if test="${hipexamdetails.patientstatus=='Poor'}"> <c:out value="selected"></c:out></c:if>>Poor</option>               
               </select></td></tr>      
                </table>
                </br>
                <table width="100%">
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">
           1)&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.diagnosis1}"id="diagnosis1" name="diagnosis1"onInput="return validatename(id);"><span id="diagnosis1error" style="color:red"></span></td>
           <td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.diagnosis2}" id="diagnosis2"name="diagnosis2"onInput="return validatename(id);"><span id="diagnosis2error" style="color:red"></span></td>
           <td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text"id="diagnosis3" name="diagnosis3" value="${hipexamdetails.diagnosis3}"onInput="return validatename(id);"><span id="diagnosis3error" style="color:red"></span></td>
           <td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.diagnosis4}"id="diagnosis4" name="diagnosis4"onInput="return validatename(id);"><span id="diagnosis4error" style="color:red"></span></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.diagnosis5}" id="diagnosis5"name="diagnosis5"onInput="return validatename(id);"><span id="diagnosis5error" style="color:red"></span></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" value="${hipexamdetails.times}" name="times"id="times"onInput="return validatename3(id)";>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b>
           <input type="text"  value="${hipexamdetails.weeks}" name="weeks"id="weeks"onInput="return validatename2(id)";>&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><input type="checkbox"  <c:if test="${hipexamdetails.spinaldecompression=='Spinal Decompression'}"> <c:out value="checked=checked"></c:out></c:if> name="spinaldecompression" value="Spinal Decompression">Spinal Decompression</td><td width="100"><input type="checkbox" name="chiropractic"  <c:if test="${hipexamdetails.chiropractic=='Chiropractic'}"> <c:out value="checked=checked"></c:out></c:if> value="Chiropractic">Chiropractic</td>
           <td width="150"><input type="checkbox" name="physicaltherapy"   <c:if test="${hipexamdetails.physicaltherapy=='Physical Therapy'}"> <c:out value="checked=checked"></c:out></c:if> value="Physical Therapy">Physical Therapy</td><td width="150"><input type="checkbox"  <c:if test="${hipexamdetails.bracing=='Orthotics/Bracing'}"> <c:out value="checked=checked"></c:out></c:if>  name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
           <td width="150"><input type="checkbox" name="modalities"   <c:if test="${hipexamdetails.modalities=='Modalities'}"> <c:out value="checked=checked"></c:out></c:if> value="Modalities">Modalities</td> <td width="150"><input type="checkbox" name="supplementation"  <c:if test="${hipexamdetails.supplementation=='Supplementation'}"> <c:out value="checked=checked"></c:out></c:if>  value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep"  <c:if test="${hipexamdetails.hep=='HEP'}"> <c:out value="checked=checked"></c:out></c:if>  value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic"   <c:if test="${hipexamdetails.radiographic=='Radiographic X-Ray'}"> <c:out value="checked=checked"></c:out></c:if> value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri"   <c:if test="${hipexamdetails.mri=='MRI'}"> <c:out value="checked=checked"></c:out></c:if> value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan"  <c:if test="${hipexamdetails.scan=='CT Scan'}"> <c:out value="checked=checked"></c:out></c:if> value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction"  <c:if test="${hipexamdetails.conduction=='Nerve Conduction'}"> <c:out value="checked=checked"></c:out></c:if>  value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg"  <c:if test="${hipexamdetails.emg=='EMG'}"> <c:out value="checked=checked"></c:out></c:if> value="EMG"	>EMG	</td> <td width="150"><input type="checkbox"   <c:if test="${hipexamdetails.outsidereferral=='Outside Referral'}"> <c:out value="checked=checked"></c:out></c:if> name="outsidereferral" value="Outside Referral">Outside Referral 	</td><td><input type="checkbox"  <c:if test="${hipexamdetails.dc=='D/C'}"> <c:out value="checked=checked"></c:out></c:if>  name="dc" value="D/C">D/C</td>
           </tr>         
                      
           </table>
           </br>
           <div><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.signature }" id="sign"name="signature" onInput="return validatename(id);"><span id="signerror" class="err"><form:errors path="hipexamdetails.signature"></form:errors></div>
           
         
         <table align="right"><tr><td><input type="submit" value="Save" onclick="return checkSubmit('this');"class="submit_btn"></td><td> <a href="viewhipexam" style="color: white" onclick="myclose()"   class="submit_btn">Cancel</a></td></tr></table>
         </div></td></tr></table></div></div></div>
         
         <script>
 function myclose()
 {
	 window.close();
 }
 </script>
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            