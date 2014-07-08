<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
   </script>
    <script>
  var currentTab=0;
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
  
  
  </script>
   
  <script>
$(function() {
   //$( "#draggable" ).draggable({ revert: "not valid" });
   
   $(window).load(function(){	
	    
   
   }); 
   $('input:checkbox[name=leglengthl]').each(function() 
			{    
			   if($(this).is(':checked'))
			   var other=$(this).val();
			      if(other=="left")
			   {
			   document.getElementById("break5").style.display="block";
			   }
			   else
			   {
				   document.getElementById("break5").style.display="none";
			   }  
			});
   $('input:checkbox[name=leglengthr]').each(function() 
			{    
			   if($(this).is(':checked'))
			   var other=$(this).val();
			      if(other=="right")
			   {
			   document.getElementById("break6").style.display="block";
			   }
			   else
			   {
				   document.getElementById("break6").style.display="none";
			   }  
			});

    $('input:checkbox[name=otherfunctional]').each(function() 
		{    
		   if($(this).is(':checked'))
		   var other=$(this).val();
		      if(other=="Other")
		   {
		   document.getElementById("break3").style.display="block";
		   }
		   else
		   {
			   document.getElementById("break3").style.display="none";
		   }  
		});
    
    $('input:checkbox[name=otheraddress]').each(function() 
    		{    
    		   if($(this).is(':checked'))
    		   var other=$(this).val();   
    		      if(other=="Other")
    		   {
    		   document.getElementById("break4").style.display="block";
    		   }
    		   else
    		   {
    			   document.getElementById("break4").style.display="none";
    		   }  
    		});
});
</script>
   
   <script type="text/javascript">
function Checksymptom(val){
 var element=document.getElementById('other1');
 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
}
function Checksymptom(val){
 var element=document.getElementById('other2');
 if(val=='other')
  element.style.display='block';
 else  
  element.style.display='none';
	}
</script >
<script type="text/javascript">
$(function() {
    $( "#datepicker" ).datepicker();
  });

</script>
  <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
  <script>
function visible(val)
{

if(document.getElementById('otherfunctional').checked)
{
var element=document.getElementById('break3');
element.style.display='block';
}
else
{
	document.getElementById('break3error').innerHTML="";
var element=document.getElementById('break3');
element.style.display='none';
}

if(document.getElementById('otheraddress').checked)
{
var element=document.getElementById('break4');
element.style.display='block';
}
else
{
	document.getElementById('break4error').innerHTML="";
var element=document.getElementById('break4');
element.style.display='none';
}

if(document.getElementById('leglengthl').checked)
{
var element=document.getElementById('break5');
element.style.display='block';
}
else
{
	document.getElementById('break5error').innerHTML="";
var element=document.getElementById('break5');
element.style.display='none';
}


if(document.getElementById('leglengthr').checked)
{
var element=document.getElementById('break6');
element.style.display='block';
}
else
{
	document.getElementById('break6error').innerHTML="";
var element=document.getElementById('break6');
element.style.display='none';
}
}
</script>
  <script>
          function isNumberKey(evt)
          {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

             return true;
          }  
          
          </script>
       <script>
  function checkValid(e)
  {
	  document.getElementById("pnameerror").innerHTML=" ";
		
		if(document.getElementById("pname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required Field Should not be Empty";
		document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		}
		
		else if(document.getElementById("pname").value.length<=4 && document.getElementById("pname").value.length<=32)
		{
		document.getElementById("pnameerror").innerHTML="Name should be length of 4 to 32";
		document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		}
		 else if(document.getElementById("pname").value!="")
		 {
		  document.getElementById("pnameerror").innerHTML="";
		  document.getElementById("btnvisible1").style.visibility="hidden";
		 //document.getElementById("btnNext").style.display="block";
		  document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";		 
		 //document.getElementById("btnNext").style.visibility="visible";
		 }
		
		document.getElementById("datepickererror").innerHTML="";
	if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		}
  	else if(document.getElementById("datepicker").value!="")
		 {
		  document.getElementById("datepickererror").innerHTML="";
		  document.getElementById("btnvisible1").style.visibility="hidden";
		 //document.getElementById("btnNext").style.display="block";
		  document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";		 
		 //document.getElementById("btnNext").style.visibility="visible";
		 }
	
  	
  }

  
  
  </script>            
          <!--  <script>

	function checkSubmit()
	{
		var error = "";
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
	document.getElementById("datepickererror").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		if(document.getElementById("datepicker").value.match(datechk)==null)
	    {
	    	document.getElementById("datepickererror").innerHTML="Invalid Date format";
	    	
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
	
	var otherdefict = document.getElementById('break5').value;
	var other = document.getElementById('leglengthl');
	if(other.checked)
		{
	if(otherdefict =="")
		{
		document.getElementById("break5error").innerHTML="required field should not be Empty";
		error="true";
		}
	else if((otherdefict.length < 4 )|| (otherdefict.length > 32))
		{
		
			document.getElementById("break5error").innerHTML="Required Field should be Length of 4 to 32";
    	
    	error="true";
		}
	else{
		document.getElementById("break5error").innerHTML="";
	}
		}
	else{
		document.getElementById("break5error").innerHTML="";
	}
	
	var otherdefict = document.getElementById('break6').value;
	var other = document.getElementById('leglengthr');
	if(other.checked)
		{
	if(otherdefict =="")
		{
		document.getElementById("break6error").innerHTML="required field should not be Empty";
		error="true";
		}
	else if((otherdefict.length < 4 )|| (otherdefict.length > 32))
		{
		
			document.getElementById("break6error").innerHTML="Required Field should be Length of 4 to 32";
    	
    	error="true";
		}
	else{
		document.getElementById("break6error").innerHTML="";
	}
		}
	else{
		document.getElementById("break6error").innerHTML="";
	}
	
	var otherdefict = document.getElementById('break3').value;
	var other = document.getElementById('otherfunctional');
	if(other.checked)
		{
	if(otherdefict =="")
		{
		document.getElementById("break3error").innerHTML="required field should not be Empty";
		error="true";
		}
	else if((otherdefict.length < 4 )|| (otherdefict.length > 32))
		{
		
			document.getElementById("break3error").innerHTML="Required Field should be Length of 4 to 32";
    	
    	error="true";
		}
	else{
		document.getElementById("break3error").innerHTML="";
	}
		}
	else{
		document.getElementById("break3error").innerHTML="";
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
	var swelling = document.getElementById('diagnosis6').value;
				
				if(swelling =="")
					{
					document.getElementById("diagnosis6error").innerHTML="";
					}
				else if((swelling.length < 4 )|| (swelling.length > 32))
					{
					
						document.getElementById("diagnosis6error").innerHTML="Required Field should be Length of 4 to 32";
			    	
			    	error="true";
					}
				else
					{
					document.getElementById("diagnosis6error").innerHTML="";
					}
				
				var otherdefict = document.getElementById('break4').value;
				var other = document.getElementById('otheraddress');
				if(other.checked)
					{
				if(otherdefict =="")
					{
					document.getElementById("break4error").innerHTML="required field should not be Empty";
					error="true";
					}
				else if((otherdefict.length < 4 )|| (otherdefict.length > 32))
					{
					
						document.getElementById("break4error").innerHTML="Required Field should be Length of 4 to 32";
			    	
			    	error="true";
					}
				else{
					document.getElementById("break4error").innerHTML="";
				}
					}
				else{
					document.getElementById("break4error").innerHTML="";
				}
				
	if(error=="true")
		{
		
		return false;
		}
	}
	</script> -->
	<script>
	function checkSubmit1(){
		
		document.getElementById("datepickererror").innerHTML="";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
			if(document.getElementById("datepicker").value.match(datechk)==null)
		    {
		    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
		    	
		        return false;
		    }	
	document.getElementById("signerror").innerHTML="";
	if(document.getElementById("sign").value=="")
	{
	document.getElementById("signerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("signerror").innerHTML="";
	    if(document.getElementById("sign").value.length<4 || document.getElementById("sign").value.length>=32)
	    {
	    	
	    	document.getElementById("signerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	
	
	
	}
	
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
	
</head>
 <body>
 <br><br>
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li>          
       </ul>
         
   <div id="tabs-1"> 
 <div id="right_content">
<form action="updatekneeexam" method="post" name="update" id="update">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>KNEE REEXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
        <c:set value="${kneeexamForm.kneeexam[0]}" var="kneeexam"/>   
 <tr class="row1">
 <input type="hidden" name="kneeexamid" id="inp_id" value="${kneeexam.kneeexamid}">
<td><h2><span class="err">*</span> Patient Name:</h2></td><td><input type="text" id="pname" name="pname" value="${kneeexam.pname}" onInput="return validatename(id)";/><span class="err" id="pnameerror"><form:errors path="Kneeexam.pname"></form:errors></span></td>
<td width="600">
<td><h2><span class="err">*</span> Date:</h2></td><td><input type="text"  id="datepicker" name="date" value="${kneeexam.date}"/><span class="err" id="datepickererror"><form:errors path="Kneeexam.date"></form:errors></span></td>
</tr>
</table>
<br/>
<br/>
 <table>
 <tr class="row1">
 <td width="500"><B style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</B></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="200">Gait:</td><td>  <select style="width:180px" name="gait" id="gait"  onchange='Checksymptom(this.value);'>
					<option value="normal" <c:if test="${kneeexam.gait=='normal'}"><c:out value="selected"/></c:if> >Normal</option>
					<option value="antalgic" <c:if test="${kneeexam.gait=='antalgic'}"><c:out value="selected"/></c:if>>Antalgic</option>
					<option value="shuffling" <c:if test="${kneeexam.gait=='shuffling'}"><c:out value="selected"/></c:if>>Shuffling</option>
					<option value="limp" <c:if test="${kneeexam.gait=='limp'}"><c:out value="selected"/></c:if>>Limp</option>
					<option value="stagger" <c:if test="${kneeexam.gait=='stagger'}"><c:out value="selected"/></c:if>>Stagger</option>
					<option value="caneassited" <c:if test="${kneeexam.gait=='caneassited'}"><c:out value="selected"/></c:if>>Cane Assisted</option>
					<option value="wheelchair" <c:if test="${kneeexam.gait=='wheelchair'}"><c:out value="selected"/></c:if>>Wheel Chair</option>
					</select></td> 
 <td></td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Pelvic Unleveling:</td><td><select style="width:180px" name="pelvicunleveling" id="pelvicunleveling"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="none" <c:if test="${kneeexam.pelvicunleveling=='none'}"><c:out value="selected"/></c:if>>None</option>
					<option value="superiorilliaccrestright" <c:if test="${kneeexam.pelvicunleveling=='superiorilliaccrestright'}"><c:out value="selected"/></c:if>>superior illiac crest right</option>
					<option value="superioriliaccrestleft" <c:if test="${kneeexam.pelvicunleveling=='superiorilliaccrestleft'}"><c:out value="selected"/></c:if>>superior iliac crest left</option>
					</select></td> 
  <td>A & O:<select name="ao" id="ao"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="excellent" <c:if test="${kneeexam.ao=='excellent'}"><c:out value="selected"/></c:if>>Excellent</option>
					<option value="good" <c:if test="${kneeexam.ao=='good'}"><c:out value="selected"/></c:if>>Good</option>
					<option value="fair" <c:if test="${kneeexam.ao=='fair'}"><c:out value="selected"/></c:if>>Fair</option>
					<option value="severe" <c:if test="${kneeexam.ao=='severe'}"><c:out value="selected"/></c:if>>Severe</option>
					</select> </td>
 <td></td>
 <td></td> 
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="300"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable" <c:if test="${kneeexam.allsoft=='All Soft Tissue Unremarkable'}"><c:out value="Checked"/></c:if>> All Soft Tissue Unremarkable</td> 
 <td> <%-- <input type="checkbox" name="except" value="Except" <c:if test="${kneeexam.except=='Except'}"><c:out value="Checked"/></c:if>> Except --%> </td>
 <td></td>
 <td></td> 
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
  <tr class="row1">
 <td width="200">Leg Length Discrepancy:Short Leg-  </td> 
 <td><input type="checkbox" id="leglengthl" name="leglengthl" value="left" onclick="visible(this.value)" <c:if test="${kneeexam.leglengthl=='left'}"><c:out value="Checked"/></c:if>>Left</td>
 <td><input type="text" name="leglengthtextl" id="break5" style="display:none" value="${kneeexam.leglengthtextl}"onInput="return validatename(id);">
 <span id="break5error" style="color:red"> </span>
 </td>
 <td><input type="checkbox" id="leglengthr" name="leglengthr" value="right" onclick="visible(this.value)" <c:if test="${kneeexam.leglengthr=='right'}"><c:out value="Checked"/></c:if>>Right</td>
 <td><input type="text" name="leglengthtextr" id="break6" style="display:none" value="${kneeexam.leglengthtextr}" onInput="return validatename(id);">
 <span id="break6error" style="color:red"> </span>
 </td>
					<td></td>
					<td></td>
					<td></td> 
					
 </tr>
 <tr class="row1">
 <td>VMO:</td><td width="100"><input type="radio" name="vmo" value="Left" <c:if test="${kneeexam.vmo=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="vmo" value="Right" <c:if test="${kneeexam.vmo=='Right'}"><c:out value="checked=checked"/></c:if> >Right</td> 
 
 <td>Quads (-VMO):</td><td width="200"><input type="radio" name="quads" value="Left" <c:if test="${kneeexam.quads=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="quads" value="Right" <c:if test="${kneeexam.quads=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 
 <td>Semimemb:</td><td width="100"><input type="radio" name="semimemb" value="Left" <c:if test="${kneeexam.semimemb=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="semimemb" value="Right" <c:if test="${kneeexam.semimemb=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
<td>Semitend:</td><td width="100"><input type="radio" name="semitend" value="Left" <c:if test="${kneeexam.semitend=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="semitend" value="Right" <c:if test="${kneeexam.semitend=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Gastroc::</td><td><input type="radio" name="gastroc" value="Left" <c:if test="${kneeexam.gastroc=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="gastroc" value="Right" <c:if test="${kneeexam.gastroc=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Soleus:</td><td width="200"><input type="radio" name="soleus" value="Left" <c:if test="${kneeexam.soleus=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="soleus" value="Right" <c:if test="${kneeexam.soleus=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Iliotib Band:</td><td><input type="radio" name="iliotibband" value="Left" <c:if test="${kneeexam.iliotibband=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="iliotibband" value="Right" <c:if test="${kneeexam.iliotibband=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 <td>Biceps Fem:</td><td><input type="radio" name="bicepsfem" value="Left" <c:if test="${kneeexam.bicepsfem=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="bicepsfem" value="Right" <c:if test="${kneeexam.bicepsfem=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="150"><input type="radio" name="functionalrangeofmotion" value="Unremarkable" <c:if test="${kneeexam.functionalrangeofmotion=='Unremarkable'}"><c:out value="checked=checked"/></c:if> >Unremarkable </td> 
 <td width="250"></td>
 <td width="300"><B style="font-size:14px">ORTHOPEDIC TESTING </B></td><td width="300"><input type="radio" name="orthopedic" value="Unremarkable" <c:if test="${kneeexam.orthopedic=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable</td>
 </tr>
  <tr class="row1">
 <td></td><td width="50"> <b>Normal</b> </td><td><b> Actual</b></td>  
 <td></td><td><b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (60)</td><td>&nbsp;&nbsp;&nbsp; 
 <input type="text" name="flexion" id="flexion"size="7" value="${kneeexam.flexion}"  onkeypress="return validate(event)"onInput="checkLength1(id);"></td>  
 <td><b>Ant. Drawer (ACL):</b> </td><td>
 <input type="text" name="acll" id="acll" size="5" value="${kneeexam.acll}" onkeypress="return validate(event)"onInput="checkLength1(id);"> 
 <input type="text" name="aclr" id="aclr" size="5" onkeypress="return validate(event)" value="${kneeexam.aclr}"onInput="checkLength1(id);"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (25) </td><td> &nbsp;&nbsp;&nbsp;&nbsp;
 <input type="text" name="extension" id="extension"size="7" value="${kneeexam.extension}"  onkeypress="return validate(event)"onInput="checkLength1(id);"></td>  
 <td><b>Post. Drawer (PCL):	</b> </td><td>
 <input type="text" name="pcll"id="pcll" size="5" onkeypress="return validate(event)" value="${kneeexam.pcll}"onInput="checkLength1(id);"> 
 <input type="text" name="pclr"id="pclr" size="5" onkeypress="return validate(event)" value="${kneeexam.pclr}"onInput="checkLength1(id);"></td>
 </tr>
  <tr class="row1">
 <td><b>Internal Rotation:</b> </td><td> (25)</td><td>L &nbsp;
 <input type="text" name="internalrotationl"id="internalrotationl" size="7" value="${kneeexam.internalrotationl}"  onkeypress="return validate(event)"onInput="checkLength1(id);"><br/><br/>R 
 <input type="text" name="internalrotationr"id="internalrotationr" size="7" value="${kneeexam.internalrotationr}"  onkeypress="return validate(event)"onInput="checkLength1(id);"></td>  
 <td><b>Lateral (Varus) Stability (LCL):</b> </td><td>
 <input type="text" name="lcll" id="lcll" size="5" onkeypress="return validate(event)" value="${kneeexam.lcll}"onInput="checkLength1(id);"> 
 <input type="text" name="lclr"id="lclr" size="5" onkeypress="return validate(event)" value="${kneeexam.lclr}"onInput="checkLength1(id);"></td>
 </tr>
  <tr class="row1">
  <td><b> External Rotation:</b> </td><td> (45)</td><td>L &nbsp;
  <input type="text" name="externalrotationl"  id="externalrotationl" size="7" value="${kneeexam.externalrotationl}"  onkeypress="return validate(event)"onInput="checkLength1(id);"><br/><br/>R 
  <input type="text" name="externalrotationr"id="externalrotationr" size="7" value="${kneeexam.externalrotationr}"  onkeypress="return validate(event)"onInput="checkLength1(id);"></td>  
 <td><b>Medial (Valgus) Stability (MCL):</b> </td><td>
 <input type="text" name="mcll" id="mcll" size="5"  onkeypress="return validate(event)" value="${kneeexam.mcll}"onInput="checkLength1(id);"> 
 <input type="text" name="mclr" id="mclr" size="5" onkeypress="return validate(event)" value="${kneeexam.mclr}"onInput="checkLength1(id);"> </td>
 </tr>
  <tr class="row1">
 <td><b>GIRTH</b>&nbsp;&nbsp;&nbsp; <input type="checkbox" name="circumferential" value="Circumferential Measures are Unremarkable" <c:if test="${kneeexam.circumferential=='Circumferential Measures are Unremarkable'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Circumferential Measures are 	</td><td>Unremarkable </td>  
 <td></td>
 <td><b>McMurray's (Med Meniscus):	</b> </td><td>
 <input type="text" name="meniscusl"id="meniscusl" size="5" onkeypress="return validate(event)" value="${kneeexam.meniscusl}"onInput="checkLength1(id);"> 
 <input type="text" name="meniscusr" id="meniscusr" onkeypress="return validate(event)" size="5" value="${kneeexam.meniscusr}"onInput="checkLength1(id);"></td>
 </tr>
  <tr class="row1">
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>5 cm Above</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Suprapatellar</b></td><td><b>Infrapatellar</b> </td>  
 <td><b>5 cm Below</b>	</td>
 <td><b>Apley's Compress (Meniscus):	</b> </td><td>
 <input type="text" name="apleysl" id="apleysl"size="5" onkeypress="return validate(event)" value="${kneeexam.apleysl}"onInput="checkLength1(id);"> 
 <input type="text" name="apleysr" id="apleysr"size="5" onkeypress="return validate(event)" value="${kneeexam.apleysr}"onInput="checkLength1(id);"></td>
 </tr>
  <tr class="row1">
 <td>Left &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="text" name="cmabovel"  id="cmabovel"size="8" value="${kneeexam.cmabovel}"  onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="text" name="suprapatellarl" id="suprapatellarl"size="8" value="${kneeexam.suprapatellarl}"  onkeypress="return validate(event)"onInput="checkLength1(id);"></td><td>
 <input type="text" name="infrapatellarl"id="infrapatellarl" size="8" value="${kneeexam.infrapatellarl }"  onkeypress="return validate(event)"onInput="checkLength1(id);"> </td>  
 <td><input type="text" name="belowl" id="belowl"size="8" value="${kneeexam.belowl}"  onkeypress="return validate(event)"onInput="checkLength1(id);"></td>
 <td><b>Apley's Distraction (Cor ligs):		</b> </td><td>
 <input type="text" name="distractionl" id="distractionl" size="5" onkeypress="return validate(event)" value="${kneeexam.distractionl}"onInput="checkLength1(id);"> 
 <input type="text" name="distractionr" id="distractionr"size="5" onkeypress="return validate(event)" value="${kneeexam.distractionr}"onInput="checkLength1(id);"> </td>
 </tr>
 <tr class="row1">
 <td>Right &nbsp;&nbsp;&nbsp;&nbsp;
 <input type="text" name="cmabover"id="cmabover" size="8" value="${kneeexam.cmabover}"  onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="text" name="suprapatellarr" id="suprapatellarr"size="8" value="${kneeexam.suprapatellarr}"  onkeypress="return validate(event)"onInput="checkLength1(id);"></td><td>
 <input type="text" name="infrapatellarr"id="infrapatellarr" size="8" value="${kneeexam.infrapatellarr}"  onkeypress="return validate(event)"onInput="checkLength1(id);"> </td>  
 <td><input type="text" name="belowr"id="belowr" size="8" value="${kneeexam.belowr}"  onkeypress="return validate(event)"onInput="checkLength1(id);"></td>
 <td><b>Patellar Grind (CMP):		</b> </td><td>
 <input type="text" name="cmpl"id="cmpl" size="5" onkeypress="return validate(event)" value="${kneeexam.cmpl}"onInput="checkLength1(id);"> 
 <input type="text" name="cmpr"id="cmpr" size="5" onkeypress="return validate(event)" value="${kneeexam.cmpr}"onInput="checkLength1(id);"> </td>
 </tr>
 <tr class="row1">
 <td></td><td> </td> 
 <td></td> 
 <td><b>Patellar Apprehension (Pat D/L):		</b> </td><td>
 <input type="text" name="patdll"id="patdll" onkeypress="return validate(event)" size="5" value="${kneeexam.patdll}"onInput="checkLength1(id);"> 
 <input type="text" name="patdlr" id="patdlr"onkeypress="return validate(event)" size="5" value="${kneeexam.patdlr}"onInput="checkLength1(id);"> </td>
 </tr>
 <tr><td id="tblbtn"><input type="button" id="btnNext" class="submit_btn" value="Next" onmouseover="checkValid(event);"/></td></tr>
 </table>
 
</div>
</td>
</tr>
</table>
</div>
</div>
<div id="tabs-2"> 
 <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>KNEE REEXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row1">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable" <c:if test="${kneeexam.neurologicaltest=='Neurological Testing Unremarkable'}"><c:out value="Checked"/></c:if> >Neurological Testing Unremarkable</td><td><%-- <input type="checkbox" name="exceptn" value="Except" <c:if test="${kneeexam.exceptn=='Except'}"><c:out value="Checked"/></c:if>>Except --%></td>
 <td></td><td></td><td></td>
 </tr>
 <tr class="row1">
 <td><b>Level</b> </td>
 <td><b> Sensory</b></td>
 <td width="110"><b>Level</b></td>
 <td> <b>Motor / Strength</b></td>
 <td width="110"><b>Level</b> </td>
 <td> <b>Reflexes(Muscle Spindles)</td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td>Left &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Right</td>
 <td> </td>
 <td> Left &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; Right</td>
 <td> </td>
 <td> Left &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; Right</td>
 </tr>
 <tr class="row1">
 <td>L1</td>
 <td><input type="text" name="l1l" size="5" onkeypress="return validate(event)" value="${kneeexam.l1l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l1r" onkeypress="return validate(event)" size="5" value="${kneeexam.l1r}">&nbsp;(Inguinal area)</td>
 <td>L1 </td>
 <td> <input type="text" name="l15l" id="l15l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" size="5" value="${kneeexam.l15l}"  >&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l15r" id="l15r"value="${kneeexam.l15r}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" size="5" >&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td>  </td>
 </tr>
 <tr class="row1">
 <td>L2</td>
 <td><input type="text" name="l2l" size="5" onkeypress="return validate(event)" value="${kneeexam.l2l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l2r" onkeypress="return validate(event)" size="5" value="${kneeexam.l2r }">&nbsp;(Ant/med thigh)</td>
 <td>L2 </td>
 <td> <input type="text" name="l25l" id="l25l"  size="5" value="${kneeexam.l25l}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" >&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l25r" id="l25r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" size="5" value="${kneeexam.l25r}">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L3</td>
 <td><input type="text" name="l3l" onkeypress="return validate(event)" size="5" value="${kneeexam.l3l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l3r" onkeypress="return validate(event)" size="5" value="${kneeexam.l3r}">&nbsp;(Medial knee)	</td>
 <td>L3 </td>
 <td> <input type="text" name="l35l" id="l35l" size="5" value="${kneeexam.l35l}"  onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l35r" id="l35r" size="5" value="${kneeexam.l35r}"onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L4</td>
 <td><input type="text" name="l4l" size="5" onkeypress="return validate(event)" value="${kneeexam.l4l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l4r" onkeypress="return validate(event)" size="5" value="${kneeexam.l4r}">&nbsp;(Medial leg)	</td>
 <td>L4 </td>
 <td> <input type="text" name="l45l" id="l45l" size="5" value="${kneeexam.l45l}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l45r" id="l45r" size="5" value="${kneeexam.l45r}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;(Rectus fem.)</td>
 <td> L4</td>
 <td> <input type="text" name="l4l3" id="l4l3" size="5" value="${kneeexam.l4l3}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l4r3" id="l4r3" size="5" value="${kneeexam.l4r3}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;(Patellar)</td>
 </tr>
 <tr class="row1">
 <td>L5</td>
 <td><input type="text" name="l5l" size="5" onkeypress="return validate(event)" value="${kneeexam.l5l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l5r" onkeypress="return validate(event)" size="5" value="${kneeexam.l5r}">&nbsp;(Ant/lat leg)	</td>
 <td>L5 </td>
 <td> <input type="text" name="l55l" size="5" id="l55l" value="${kneeexam.l55l}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l55r" id="l55r" size="5" value="${kneeexam.l55r}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;  (Glut Med)</td>
 <td>L5 </td>
 <td><input type="text" name="l5l3" id="l5l3" size="5" value="${kneeexam.l5l3}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l5r3" id="l5r3" size="5" value="${kneeexam.l5r3}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;(Med HS) </td>
 </tr>
 <tr class="row1">
 <td>SI</td>
 <td><input type="text" name="sl" size="5"  onkeypress="return validate(event)" value="${kneeexam.sl}">&nbsp; &nbsp; &nbsp;<input type="text" name="sr" onkeypress="return validate(event)" size="5" value="${kneeexam.sr}">&nbsp;(Big toe/plantar)		</td>
 <td>SI </td>
 <td> <input type="text" name="s5l" id="s5l" size="5" value="${kneeexam.s5l}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="s5r" id="s5r" size="5" value="${kneeexam.s5r}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; (Glut Max)</td>
 <td>SI </td>
 <td> <input type="text" name="sil" id="sil" size="5" value="${kneeexam.sil}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="sir" id="sir" size="5" value="${kneeexam.sir}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;(Achilles)</td>
 </tr>
 <tr class="row1">
 <td></td>
 <td>("-" is Normal)</td>
 <td> </td>
 <td> (5/5 is Normal)</td>
 <td> </td>
 <td> (2+/5 is Normal)</td>
 </tr>
 </table>
<table>         
 <tr class="row1">
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td>
 <td width="150"><input type="checkbox" name="walking" value="Walking" <c:if test="${kneeexam.walking=='Walking'}"><c:out value="Checked"/></c:if>>Walking &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="standing" value="Standing" <c:if test="${kneeexam.standing=='Standing'}"><c:out value="Checked"/></c:if>>Standing</td>
 <td width="150"><input type="checkbox" name="stairs" value="Stairs" <c:if test="${kneeexam.stairs=='Stairs'}"><c:out value="Checked"/></c:if>>Stairs</td>
 <td width="150"><input type="checkbox" id="otherfunctional" name="otherfunctional" value="Other"  onclick="visible(this.value)" <c:if test="${kneeexam.otherfunctional=='Other'}"><c:out value="Checked"/></c:if> >Other&nbsp;</td>
 <td> <input type="text" id="break3" name="break_text3" style="display:none" value="${kneeexam.break_text3}"onInput="return validatename(id);"/>
 <br><span id="break3error" style="color:red"></span>
 </td>
 </tr>         
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td><textarea name="assessment" rows='5' cols='40' id="comments" onInput="return validatename1(id);" onInput="return validatename(id)";>${kneeexam.assessment}</textarea>
 <span id="commentserror" style="color:red"></span>
 
 </td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td><select name="patientstatus" id="patientstatus"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Excellent" <c:if test="${kneeexam.patientstatus=='Excellent'}"><c:out value="Selected"/></c:if> >Excellent</option>
					<option value="Good" <c:if test="${kneeexam.patientstatus=='Good'}"><c:out value="Selected"/></c:if>>Good</option>
					<option value="Fair" <c:if test="${kneeexam.patientstatus=='Fair'}"><c:out value="Selected"/></c:if>>Fair</option>
					<option value="Poor" <c:if test="${kneeexam.patientstatus=='Poor'}"><c:out value="Selected"/></c:if>>Poor</option>
					</select></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)<input type="text" name="diagnosis1" id="diagnosis1"value="${kneeexam.diagnosis1}" onInput="return validatename(id);"><span id="diagnosis1error" style="color:red"></span></td>
 <td width="250">2)<input type="text" name="diagnosis2" id="diagnosis2"value="${kneeexam.diagnosis2 }"onInput="return validatename(id);"><span id="diagnosis2error" style="color:red"></span></td>
 <td width="250">3)<input type="text" name="diagnosis3" id="diagnosis3"value="${kneeexam.diagnosis3 }"onInput="return validatename(id);"><span id="diagnosis3error" style="color:red"></span></td>
 <td width="250">4)<input type="text" name="diagnosis4" id="diagnosis4"value="${kneeexam.diagnosis4 }"onInput="return validatename(id);"><span id="diagnosis4error" style="color:red"></span></td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)<input type="text" name="diagnosis5" id="diagnosis5"value="${kneeexam.diagnosis5}"onInput="return validatename(id);"><span id="diagnosis5error" style="color:red"></span></td>
 <td width="250">6)<input type="text" name="diagnosis6" id="diagnosis6"value="${kneeexam.diagnosis6}"onInput="return validatename(id);"><span id="diagnosis6error" style="color:red"></span></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td><input type="text" name="times" id="times" value="${kneeexam.times}"onInput="return validatename3(id)";>Times/week for </td>
 <td><input type="text" name="week" id="weeks" value="${kneeexam.week}"onInput="return validatename2(id)";>weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="spinal" value="Spinal Decompression"  <c:if test="${kneeexam.spinal=='Spinal Decompression'}"><c:out value="Checked"/></c:if>>Spinal Decompression	</td>
 <td width="250"><input type="checkbox" name="chiropractic" value="Chiropractic"  <c:if test="${kneeexam.chiropractic=='Chiropractic'}"><c:out value="Checked"/></c:if>>Chiropractic</td>
 <td width="250"><input type="checkbox" name="physical" value="Physical Therapy"  <c:if test="${kneeexam.physical=='Physical Therapy'}"><c:out value="Checked"/></c:if>>Physical Therapy</td>
 <td width="250"><input type="checkbox" name="orthotics" value="Orthotics/Bracing"  <c:if test="${kneeexam.orthotics=='Orthotics/Bracing'}"><c:out value="Checked"/></c:if>>Orthotics/Bracing</td>
 <td width="250"><input type="checkbox" name="modalities" value="Modalities"  <c:if test="${kneeexam.modalities=='Modalities'}"><c:out value="Checked"/></c:if>>Modalities	</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="supplementation" value="Supplementation"  <c:if test="${kneeexam.supplementation=='Supplementation'}"><c:out value="Checked"/></c:if>>Supplementation</td>
 <td width="250"><input type="checkbox" name="hep" value="HEP"  <c:if test="${kneeexam.hep=='HEP'}"><c:out value="Checked"/></c:if>>HEP</td>
 <td width="250"><input type="checkbox" name="radiographic" value="Radiographic X-Ray"  <c:if test="${kneeexam.radiographic=='Radiographic X-Ray'}"><c:out value="Checked"/></c:if>> Radiographic X-Ray</td>
 <td width="250"><input type="checkbox" name="mri" value="MRI"  <c:if test="${kneeexam.mri=='MRI'}"><c:out value="Checked"/></c:if>>MRI</td>
 <td width="250"><input type="checkbox" name="ctscan" value="CT Scan"  <c:if test="${kneeexam.ctscan=='CT Scan'}"><c:out value="Checked"/></c:if>>CT Scan</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="nerve" value="Nerve Conduction"  <c:if test="${kneeexam.nerve=='Nerve Conduction'}"><c:out value="Checked"/></c:if>>Nerve Conduction</td>
 <td width="250"><input type="checkbox" name="emg" value="EMG"  <c:if test="${kneeexam.emg=='EMG'}"><c:out value="Checked"/></c:if>>EMG</td>
 <td width="250"><input type="checkbox" name="outside" value="Outside Referral"  <c:if test="${kneeexam.outside=='Outside Referral'}"><c:out value="Checked"/></c:if>>Outside Referral </td>
 <td width="250"><input type="checkbox" name="dc" value="D/C"  <c:if test="${kneeexam.dc=='D/C'}"><c:out value="Checked"/></c:if>>D/C</td>
 <td width="250"><input type="checkbox" id="otheraddress" name="otheraddress" value="Other" onclick="visible(this.value)" <c:if test="${kneeexam.otheraddress=='Other'}"><c:out value="Checked"/></c:if>>Other
 <input type="text" class="input_txtbx1" id="break4" name="break_text4"  style="display:none"  value="${kneeexam.break_text4}" onInput="return validatename(id);"/>
 <span id="break4error" style="color:red"></span>
 </td>
 </tr>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px"><span class="err">*</span> PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign" id="sign" value="${kneeexam.sign}"onInput="return validatename(id)";><span class="err" id="signerror"><form:errors path="Kneeexam.sign"></form:errors></span></B></td></tr></table>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Update"  onclick="return checkSubmit1('this');"></td>
<td><input type="reset" class="submit_btn" value="Cancel" onclick="myclose()"></td>
<script>
 function myclose()
 {
	 window.close();
 }
 </script>
</tr>
</table>
 </table>
  </div>
</div>
</form>
</body>   
