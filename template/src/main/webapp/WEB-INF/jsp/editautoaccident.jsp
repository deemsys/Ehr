<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
  <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
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
<script type="text/javascript">
  function confirmation() 
	{
	var answer = confirm("Are you Sure You Want to Delete Patient ?");
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
  </script>
  
  
  <script type="text/javascript">
       function validate(event) {
          
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
  $(function() {
	$("#adjustersname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#companion").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#conditions").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#body_position1").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#head_position1").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#injury").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#patient_body1").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#head_hit").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#rlshoulder_hit").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#rlhip_hit").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#rlknee_hit").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#chest_hit").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#rlarm_hit").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>


<script>
  $(function() {
	$("#rlarm_hit").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#rlleg_hit").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
  
</script>

<script>
  $(function() {
	$("#otherpart_hit").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>


<script>
  $(function() {
	$("#xray").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#hospital1").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#city").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#hosname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#accident").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#symptom").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#wrong").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
function change44()
{

if(document.getElementById("body_strike").checked)
{

		document.getElementById("head_hit").style.visibility = 'hidden';
		document.getElementById("rlshoulder_hit").style.visibility = 'hidden';
		document.getElementById("rlhip_hit").style.visibility = 'hidden';
		document.getElementById("rlknee_hit").style.visibility = 'hidden';
		document.getElementById("chest_hit").style.visibility = 'hidden';
		document.getElementById("rlarm_hit").style.visibility = 'hidden';
		document.getElementById("rlleg_hit").style.visibility = 'hidden';
		document.getElementById("otherpart_hit").style.visibility = 'hidden';



		}
		else  {
			document.getElementById("head_hit").style.visibility = 'visible';
		document.getElementById("rlshoulder_hit").style.visibility = 'visible';
		document.getElementById("rlhip_hit").style.visibility = 'visible';
		document.getElementById("rlknee_hit").style.visibility = 'visible';
		document.getElementById("chest_hit").style.visibility = 'visible';
		document.getElementById("rlarm_hit").style.visibility = 'visible';
		document.getElementById("rlleg_hit").style.visibility = 'visible';
		document.getElementById("otherpart_hit").style.visibility = 'visible';

		}
}
</script>
<script>


function validateusername(){
    var textInput = document.getElementById("claimno").value;
    textInput = textInput.replace(/[^A-Z0-9]/g, "");
    document.getElementById("claimno").value = textInput;
}

</script>

<script>
function validatenamehos(){
    var textInput = document.getElementById("hosname").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("hosname").value = textInput;
}
</script>
<script>
function validatename(){
    var textInput = document.getElementById("adjustersname").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("adjustersname").value = textInput;
}
</script>

<script>
function validatename1(){
    var textInput = document.getElementById("companion").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("companion").value = textInput;
}
</script>

<script>
function validatename3(){
    var textInput = document.getElementById("vehicle_model").value;
    textInput = textInput.replace(/[^A-Za-z0-9]/g, "");
    
    document.getElementById("vehicle_model").value = textInput;
}
</script>


<script>
function validatename2(){
    var textInput = document.getElementById("vehicle_make").value;
    textInput = textInput.replace(/[^A-Za-z]/g, "");
    document.getElementById("vehicle_make").value = textInput;
}
</script>



<script>
function validatename4(){
    var textInput = document.getElementById("other_vehicle_make").value;
    textInput = textInput.replace(/[^A-Za-z]/g, "");
    document.getElementById("other_vehicle_make").value = textInput;
}
</script>

<script>
function validatename5(){
    var textInput = document.getElementById("other_vehicle_model").value;
    textInput = textInput.replace(/[^A-Za-z0-9]/g, "");
    document.getElementById("other_vehicle_model").value = textInput;
}
</script>
<script>
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}
</script>

   <script>
  function checksub()
  {
	  document.getElementById("claimnoerror").innerHTML=""; 
	  if(document.getElementById("claimno").value=="")
	  {
	   document.getElementById("claimnoerror").innerHTML="Required field should not be empty";
	   return false;
	  }
	  document.getElementById("claimnoerror").innerHTML="";
	  if(document.getElementById("claimno").value.length<9 || document.getElementById("claimno").value.length>=32)
	  {
	  	
	  	document.getElementById("claimnoerror").innerHTML="Claim Number should be min 9 and max 32";
	  	
	      return false;
	  }
	  
	   document.getElementById("adjustersnameerror").innerHTML=""; 
	  if(document.getElementById("adjustersname").value=="")
	  {
	   document.getElementById("adjustersnameerror").innerHTML="Required field should not be empty";
	   return false;
	  }
	  document.getElementById("adjustersnameerror").innerHTML=" ";
	 	
	 	if(document.getElementById("adjustersname").value.substring(0,1)==" ")
	 	{
	 	document.getElementById("adjustersnameerror").innerHTML="Initial space not allowed";
	 	
	 	return false;
	 	}
	 	document.getElementById("adjustersnameerror").innerHTML="";
	     if(document.getElementById("adjustersname").value.length<4 || document.getElementById("adjustersname").value.length>=32)
	     {
	     	
	     	document.getElementById("adjustersnameerror").innerHTML="Name should be of length 4 to 32";
	     	
	         return false;
	     }
	   document.getElementById("companionerror").innerHTML="";
	   if(document.getElementById("companion").value=="")
	  {
	   document.getElementById("companionerror").innerHTML="Required field should not be empty";
	   return false;
	  }
	   

	   document.getElementById("companionerror").innerHTML=" ";
	  	
	  	if(document.getElementById("companion").value.substring(0,1)==" ")
	  	{
	  	document.getElementById("companionerror").innerHTML="Initial space not allowed";
	  	
	  	return false;
	  	}
	  	document.getElementById("companionerror").innerHTML="";
	     if(document.getElementById("companion").value.length<4 || document.getElementById("companion").value.length>=32)
	     {
	     	
	     	document.getElementById("companionerror").innerHTML="Name should be of length 4 to 32";
	     	
	         return false;
	     }
	  document.getElementById("vehicle_makeerror").innerHTML="";
	   if(document.getElementById("vehicle_make").value=="")
	  {
	   document.getElementById("vehicle_makeerror").innerHTML="Required field should not be empty";
	   return false;
	  }
	   document.getElementById("vehicle_makeerror").innerHTML=" ";
	 	
	 	if(document.getElementById("vehicle_make").value.substring(0,1)==" ")
	 	{
	 	document.getElementById("vehicle_makeerror").innerHTML="Initial space not allowed";
	 	
	 	return false;
	 	}
	 	document.getElementById("vehicle_makeerror").innerHTML="";
	   if(document.getElementById("vehicle_make").value.length<4 || document.getElementById("vehicle_make").value.length>=32)
	   {
	   	
	   	document.getElementById("vehicle_makeerror").innerHTML="Name should be of length 4 to 32";
	   	
	       return false;
	   }
	  document.getElementById("vehicle_modelerror").innerHTML="";
	   if(document.getElementById("vehicle_model").value=="")
	  {
	   document.getElementById("vehicle_modelerror").innerHTML="Required field should not be empty";
	   return false;
	  }
	  
	   document.getElementById("vehicle_modelerror").innerHTML=" ";
	 	
	 	if(document.getElementById("vehicle_model").value.substring(0,1)==" ")
	 	{
	 	document.getElementById("vehicle_modelerror").innerHTML="Initial space not allowed";
	 	
	 	return false;
	 	}
	 	document.getElementById("vehicle_modelerror").innerHTML="";
	 if(document.getElementById("vehicle_model").value.length<4 || document.getElementById("vehicle_model").value.length>=32)
	 {
	 	
	 	document.getElementById("vehicle_modelerror").innerHTML=" should be of length 4 to 32";
	 	
	     return false;
	 }
	  document.getElementById("vehicle_yearerror").innerHTML="";
	   if(document.getElementById("vehicle_year").value=="")
	  {
	   document.getElementById("vehicle_yearerror").innerHTML="Required field should not be empty";
	   return false;
	  }
	   document.getElementById("vehicle_yearerror").innerHTML=" ";
	 	
	 	if(document.getElementById("vehicle_year").value.substring(0,1)==" ")
	 	{
	 	document.getElementById("vehicle_yearerror").innerHTML="Initial space not allowed";
	 	
	 	return false;
	 	}
	  document.getElementById("vehicle_yearerror").innerHTML="";
	 	if(document.getElementById("vehicle_year").value.length<4)
	 	{
	 	document.getElementById("vehicle_yearerror").innerHTML="Invalid year format";
	 	return false;
	 	
	 	}
	   document.getElementById("other_vehicle_makeerror").innerHTML="";
	   if(document.getElementById("other_vehicle_make").value=="")
	  {
	   document.getElementById("other_vehicle_makeerror").innerHTML="Required field should not be empty";
	   return false;
	  }
	   document.getElementById("other_vehicle_makeerror").innerHTML="";
	   if(document.getElementById("other_vehicle_make").value.length<4 || document.getElementById("other_vehicle_make").value.length>=32)
	   {
	   	
	   	document.getElementById("other_vehicle_makeerror").innerHTML="should be of length 4 to 32";
	   	
	       return false;
	   }
	   document.getElementById("other_vehicle_modelerror").innerHTML="";
	   if(document.getElementById("other_vehicle_model").value=="")
	  {
	   document.getElementById("other_vehicle_modelerror").innerHTML="Required field should not be empty";
	   return false;
	  }
	   document.getElementById("other_vehicle_modelerror").innerHTML="";
	   if(document.getElementById("other_vehicle_model").value.length<4 || document.getElementById("other_vehicle_model").value.length>=32)
	   {
	   	
	   	document.getElementById("other_vehicle_modelerror").innerHTML="should be of length 4 to 32";
	   	
	       return false;
	   }
	   document.getElementById("other_vehicle_yearerror").innerHTML="";
	   if(document.getElementById("other_vehicle_year").value=="")
	  {
	   document.getElementById("other_vehicle_yearerror").innerHTML="Required field should not be empty";
	   return false;
	  }
	  document.getElementById("other_vehicle_yearerror").innerHTML="";
	 	if(document.getElementById("other_vehicle_year").value.length<4)
	 	{
	 	document.getElementById("other_vehicle_yearerror").innerHTML="Invalid year format";
	 	return false;
	 	
	 	}
	  /* document.getElementById("yeserror").innerHTML="";
	   if( ( document.getElementById("yes").checked == false ) && ( document.getElementById("no").checked == false ) )

	 {
	 document.getElementById("yeserror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 } */
	 document.getElementById("speederror").innerHTML="";
	 	if(document.getElementById("speed").value=="")
	 	{
	 	document.getElementById("speederror").innerHTML="Required Field Should not be Empty";
	 	
	 	return false;
	 	}
	 	document.getElementById("estimateddamageerror").innerHTML="";
	 	if(document.getElementById("estimateddamage").value=="")
	 	{
	 	document.getElementById("estimateddamageerror").innerHTML="Required Field Should not be Empty";
	 	
	 	return false;
	 	}
	 document.getElementById("afteraccidenterror").innerHTML=""; 
	 	if( ( document.getElementById("headache").checked == false ) && ( document.getElementById("dizziness").checked == false ) && ( document.getElementById("nausea").checked == false )&& ( document.getElementById("confusion").checked == false )

	 && ( document.getElementById("disorientation").checked == false ) && ( document.getElementById("neckpain").checked == false ) && ( document.getElementById("otherpain").checked == false ) )



	 	 {
	 	 document.getElementById("afteraccidenterror").innerHTML="Required Field Should not be Empty";
	 	 		
	 	 		return false;
	 	 		
	 	 }

	 	document.getElementById("injuryerror").innerHTML="";
	 		if(document.getElementById("injury").value=="")
	 		{
	 		document.getElementById("injuryerror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		}
	 	
	 	document.getElementById("injuryerror").innerHTML="";
	 	if(document.getElementById("injury").value!="")
	 	{
	     if(document.getElementById("injury").value.length<4 || document.getElementById("injury").value.length>=32)
	     {
	     	
	     	document.getElementById("injuryerror").innerHTML="Name should be of length 4 to 32";
	     	
	         return false;
	     }
	     }
	 	
	 	
	 	 document.getElementById("head_hiterror").innerHTML=" ";
	 		
	 		if(document.getElementById("head_hit").value.substring(0,1)==" ")
	 		{
	 		document.getElementById("head_hiterror").innerHTML="Initial space not allowed";
	 		
	 		return false;
	 		}
	 		document.getElementById("head_hiterror").innerHTML="";
	 		if(document.getElementById("head_hit").value!="")
	 		{
	 		
	 	    if(document.getElementById("head_hit").value.length<4 || document.getElementById("head_hit").value.length>=32)
	 	    {
	 	    	document.getElementById("head_hiterror").innerHTML="Name should be of length 4 to 32";
	 	    	
	 	        return false;
	 	    }
	 	    
	 		}
		 	 document.getElementById("rlshoulder_hiterror").innerHTML=" ";
		 		
		 		if(document.getElementById("rlshoulder_hit").value.substring(0,1)==" ")
		 		{
		 		document.getElementById("rlshoulder_hit").innerHTML="Initial space not allowed";
		 		
		 		return false;
		 		}
		 		document.getElementById("rlshoulder_hiterror").innerHTML="";
		 		if(document.getElementById("rlshoulder_hit").value!="")
		 		{
		 		
		 	    if(document.getElementById("rlshoulder_hit").value.length<4 || document.getElementById("rlshoulder_hit").value.length>=32)
		 	    {
		 	    	document.getElementById("rlshoulder_hiterror").innerHTML="Name should be of length 4 to 32";
		 	    	
		 	        return false;
		 	    }
  
		 		}
		 		document.getElementById("rlhip_hiterror").innerHTML="";
		 		if(document.getElementById("rlhip_hit").value!="")
		 		{
				 	 
				 		
				 		 		
				 		document.getElementById("rlhip_hiterror").innerHTML="";
				 	    if(document.getElementById("rlhip_hit").value.length<4 || document.getElementById("rlhip_hit").value.length>=32)
				 	    {
				 	    	document.getElementById("rlhip_hiterror").innerHTML="Name should be of length 4 to 32";
				 	    	
				 	        return false;
				 	    }
		 		}
		 		document.getElementById("rlknee_hiterror").innerHTML="";
		 		if(document.getElementById("rlknee_hit").value!="")
		 		{
						 	 
						 		if(document.getElementById("rlknee_hit").value.substring(0,1)==" ")
						 		{
						 		document.getElementById("rlknee_hit").innerHTML="Initial space not allowed";
						 		
						 		return false;
						 		}
						 		document.getElementById("rlknee_hiterror").innerHTML="";
						 	    if(document.getElementById("rlknee_hit").value.length<4 || document.getElementById("rlknee_hit").value.length>=32)
						 	    {
						 	    	document.getElementById("rlknee_hiterror").innerHTML="Name should be of length 4 to 32";
						 	    	
						 	        return false;
						 	    }

		 		}
		 		document.getElementById("chest_hiterror").innerHTML="";
		 		if(document.getElementById("chest_hit").value!="")
		 		{
								 		document.getElementById("chest_hiterror").innerHTML="";
								 	    if(document.getElementById("chest_hit").value.length<4 || document.getElementById("chest_hit").value.length>=32)
								 	    {
								 	    	document.getElementById("chest_hiterror").innerHTML="Name should be of length 4 to 32";
								 	    	
								 	        return false;
								 	    }
		 		}
									 	  
		 		document.getElementById("rlarm_hiterror").innerHTML="";
		 		if(document.getElementById("rlarm_hit").value!="")
		 		{
		 		
										 		document.getElementById("rlarm_hiterror").innerHTML="";
										 	    if(document.getElementById("rlarm_hit").value.length<4 || document.getElementById("rlarm_hit").value.length>=32)
										 	    {
										 	    	document.getElementById("rlarm_hiterror").innerHTML="Name should be of length 4 to 32";
										 	    	
										 	        return false;
										 	    }
		 		}
		 		
		 		document.getElementById("rlleg_hiterror").innerHTML="";
		 		if(document.getElementById("rlleg_hit").value!="")
		 		{
										 	   
											 	  
											 		document.getElementById("rlleg_hiterror").innerHTML="";
											 	    if(document.getElementById("rlleg_hit").value.length<4 || document.getElementById("rlleg_hit").value.length>=32)
											 	    {
											 	    	document.getElementById("rlleg_hiterror").innerHTML="Name should be of length 4 to 32";
											 	    	
											 	        return false;
											 	    }    
											 	    
		 		}
		 		
		 		document.getElementById("otherpart_hiterror").innerHTML="";
		 		if(document.getElementById("otherpart_hit").value!="")
		 		{
											  	 
												 		document.getElementById("otherpart_hiterror").innerHTML="";
												 	    if(document.getElementById("otherpart_hit").value.length<4 || document.getElementById("otherpart_hit").value.length>=32)
												 	    {
												 	    	document.getElementById("otherpart_hiterror").innerHTML="Name should be of length 4 to 32";
												 	    	
												 	        return false;
												 	    } 
		 		}
  }
  
  
  </script>
  
  <script>
		 window.onload = function()
{
if (document.getElementById("airbagcheck").checked ==true) {
document.getElementById("mytext").style.visibility = 'visible';


}
else  {
document.getElementById("mytext").style.visibility = 'hidden';



}
}
</script>

 <script>
		 window.onload = function()
{
if (document.getElementById("furthercheck").checked ==true) {
document.getElementById("injury").style.visibility = 'visible';


}
else  {
document.getElementById("injury").style.visibility = 'hidden';



}
}
</script>

   <script type="text/javascript">
       function validate1(event) {
          
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
       function validate2(event) {
          
           var regex = new RegExp("^[a-zA-Z0-9]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script>
<style>
  /* force a height so the tabs don't jump as content height changes */
  #tabs .tabs-spacer { float: left; height: 200px; }
  .tabs-bottom .ui-tabs-nav { clear: left; padding: 0 .2em .2em .2em; }
  .tabs-bottom .ui-tabs-nav li { top: auto; bottom: 0; margin: 0 .2em 1px 0; border-bottom: auto; border-top: 0; }
  .tabs-bottom .ui-tabs-nav li.ui-tabs-active { margin-top: -1px; padding-top: 1px; }
  </style>
</head>
<div id="tabs" class="tabs-bottom" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">2</a></li>
    <li><a href="#tabs-3">3</a></li>
    <li><a href="#tabs-4">4</a></li>
  </ul>
  <div class="tabs-spacer"></div>
  <div id="tabs-1">
 

<div id="right_content">
 <form action="updateautoaccident" method="POST"> 
 
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
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
	              <h2>Auto Accident</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <c:set value="${autoaccidentForm.autoaccident[0]}" var="autoaccident"/>
  				<tr>
  				<td align="left" valign="top" width="50%" style="padding-right:25px;">
  				<table cellpadding="0" cellspacing="0" border="0" width="100%">
                 <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>What Is The Claim Number Of Your Accident?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="hidden" class="input_txtbx1" id="inp_id" value="${autoaccident.patient_number}" name="patient_number" />
				  <input type="text" class="input_txtbx1" id="claimno" name="claimnumber" value="${autoaccident.claimnumber }" onInput="return validateusername()"; /><span id="claimnoerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.claimnumber"></form:errors></span></td>

				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Adjuster's Name:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="adjustersname" name="adjustersname" value="${autoaccident.adjustersname }" min="4" maxlength="32" onInput="return validatename(id)";/><span id="adjustersnameerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.adjustersname"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Who Gave You The Estimate?</td>
				  <td valign="top" align="left" class="input_txt">
				  <select  name="estimate" class="input_cmbbx1">
					<option  value="your insurance" <c:if test="${autoaccident.estimate=='your insurance'}"><c:out value="selected"/></c:if>>Your Insurance company</option>
					<option value="other insurance" <c:if test="${autoaccident.estimate=='other insurance'}"><c:out value="selected"/></c:if>>Other Driver's Insurance company</option>
					<option value="body shop" <c:if test="${autoaccident.estimate=='body shop'}"><c:out value="selected"/></c:if>>Body shop</option>
				  </select><span class="err"><form:errors path="Autoaccident.estimate"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Were You The:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="seating" class="input_cmbbx1">
					<option  value="driver" <c:if test="${autoaccident.seating=='driver'}"><c:out value="selected"/></c:if>>Driver</option>
					<option value="front seat" <c:if test="${autoaccident.seating=='front seat'}"><c:out value="selected"/></c:if>>Front seat Passenger</option>
					<option value="back seat" <c:if test="${autoaccident.seating=='back seat'}"><c:out value="selected"/></c:if>>Back seat Passenger</option>
					<option value="on job" <c:if test="${autoaccident.seating=='on job'}"><c:out value="selected"/></c:if>>On the job at the time of accident</option>
				  </select><span class="err"><form:errors path="Autoaccident.seating"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was Anyone Else In The Car With You During The Accident?Who?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="companion" min="4" maxlength="32" onInput="return validatename1()"; name="companion" value="${autoaccident.companion }"/><span id="companionerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.companion"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Description Of Vehicle You Were In:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="smlinput_txtbx1" id="vehicle_make" name="vehicle_make" style="width:70px" onInput="return validatename2()"; value="${autoaccident.vehicle_make }"/><span id="vehicle_makeerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.vehicle_make"></form:errors></span>
				  <input type="text" class="smlinput_txtbx1" id="vehicle_model" name="vehicle_model" style="width:70px" onInput="return validatename3()"; value="${autoaccident.vehicle_model }" /><span id="vehicle_modelerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.vehicle_model"></form:errors></span>
				  <input type="text" class="smlinput_txtbx1" id="vehicle_year" maxlength="4" name="vehicle_year" style="width:70px" maxlength="4"  onkeypress="return validate(event)"; value="${autoaccident.vehicle_year }"/><span id="vehicle_yearerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.vehicle_year"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Portion Of The Vehicle Hit?</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="vehicle_hit" class="input_cmbbx1">
					<option  value="right front" <c:if test="${autoaccident.vehicle_hit=='right front'}"><c:out value="selected"/></c:if>>Right Front</option>
					<option value="left front" <c:if test="${autoaccident.vehicle_hit=='left front'}"><c:out value="selected"/></c:if>>Left Front</option>
					<option value="right rear" <c:if test="${autoaccident.vehicle_hit=='right rear'}"><c:out value="selected"/></c:if>>Right Rear</option>
					<option value="left rear" <c:if test="${autoaccident.vehicle_hit=='left rear'}"><c:out value="selected"/></c:if>>Left Rear</option>
					<option value="right side" <c:if test="${autoaccident.vehicle_hit=='right side'}"><c:out value="selected"/></c:if>>Right side</option>
					<option value="left side" <c:if test="${autoaccident.vehicle_hit=='left side'}"><c:out value="selected"/></c:if>>Left side</option>
				  </select><span class="err"><form:errors path="Autoaccident.vehicle_hit"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Description Of Other Vehicle: </td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="smlinput_txtbx1" id="other_vehicle_make" name="other_vehicle_make" value="${autoaccident.other_vehicle_make }" onInput="return validatename4()"; style="width:70px" value="${autoaccident.other_vehicle_make }" /><span id="other_vehicle_makeerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.other_vehicle_make"></form:errors></span>
				  <input type="text" class="smlinput_txtbx1" id="other_vehicle_model" name="other_vehicle_model" onInput="return validatename5()";style="width:70px" value="${autoaccident.other_vehicle_model }" /><span id="other_vehicle_modelerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.other_vehicle_model"></form:errors></span>
				  <input type="text" class="smlinput_txtbx1" id="other_vehicle_year" maxlength="4" name="other_vehicle_year" style="width:70px" onkeypress="return validate(event)"; value="${autoaccident.other_vehicle_year }"/><span id="other_vehicle_yearerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.other_vehicle_year"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was You Car Stopped At The Time Of Accident?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="carstopped" value="yes" class="input_txt"  <c:if test="${autoaccident.carstopped=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="carstopped" value="no" class="input_txt"  <c:if test="${autoaccident.carstopped=='no'}"><c:out value="Checked"/></c:if>>No<span class="err"><form:errors path="Autoaccident.carstopped"></form:errors></span></td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>If You Were The Driver,Was Your Foot On The Brake?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="driverposition" value="yes" class="input_txt" <c:if test="${autoaccident.driverposition=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="driverposition" value="no" class="input_txt" <c:if test="${autoaccident.driverposition=='no'}"><c:out value="Checked"/></c:if>>No <span class="err"><form:errors path="Autoaccident.driverposition"></form:errors></span></td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was Your Vehicle Moving At Time Of Impact?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="vehicle_moving_time" value="yes" class="input_txt" <c:if test="${autoaccident.vehicle_moving_time=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="vehicle_moving_time" value="no" class="input_txt" <c:if test="${autoaccident.vehicle_moving_time=='no'}"><c:out value="Checked"/></c:if>>No<span class="err"><form:errors path="Autoaccident.vehicle_moving_time"></form:errors></span></td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was Car:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="wascar" class="input_cmbbx1">
					<option  value="slowing down" <c:if test="${autoaccident.wascar=='slowing down'}"><c:out value="selected"/></c:if> >Slowing Down</option>
					<option value="gaining speed" <c:if test="${autoaccident.wascar=='gaining speed'}"><c:out value="selected"/></c:if>>Gaining Speed</option>
					<option value="steady rate of speed" <c:if test="${autoaccident.wascar=='steady rate of speed'}"><c:out value="selected"/></c:if>>Steady Rate of Speed</option>	
				  </select><span class="err"><form:errors path="Autoaccident.wascar"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Estimated Rate Of Speed:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="speed" name="estimated_rate" maxlength="18"  onkeypress="return validate(event)"; value="${autoaccident.estimated_rate }"/><span id="speederror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.estimated_rate"></form:errors></span>
				  </td>
				  </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Time Of Day:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="time_of_day" class="input_cmbbx1">
					<option  value="day light" <c:if test="${autoaccident.time_of_day=='day light'}"><c:out value="selected"/></c:if>>DayLight</option>
					<option value="dawn" <c:if test="${autoaccident.time_of_day=='dawn'}"><c:out value="selected"/></c:if>>Dawn</option>
					<option value="dusk" <c:if test="${autoaccident.time_of_day=='dusk'}"><c:out value="selected"/></c:if>>Dusk</option>
					<option value="dark" <c:if test="${autoaccident.time_of_day=='dark'}"><c:out value="selected"/></c:if>>Dark</option>
					<option value="unknown" <c:if test="${autoaccident.time_of_day=='unknown'}"><c:out value="selected"/></c:if>>Unknown</option>	
				  </select><span class="err"><form:errors path="Autoaccident.time_of_day"></form:errors></span>
				  </td>
				  </tr> 
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Road Conditions:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="road_conditions" class="input_cmbbx1" id="road" onclick='CheckConditions();'>
					<option  value=" conditions" <c:if test="${autoaccident.road_conditions==' conditions'}"><c:out value="selected"/></c:if> > conditions</option>
					<option value="dry" <c:if test="${autoaccident.road_conditions=='dry'}"><c:out value="selected"/></c:if>>Dry</option>
					<option value="damp" <c:if test="${autoaccident.road_conditions=='damp'}"><c:out value="selected"/></c:if>>Damp</option>
					<option value="wet" <c:if test="${autoaccident.road_conditions=='wet'}"><c:out value="selected"/></c:if>>Wet</option>
					<option value="snow" <c:if test="${autoaccident.road_conditions=='snow'}"><c:out value="selected"/></c:if>>Snow</option>
					<option value="ice" <c:if test="${autoaccident.road_conditions=='ice'}"><c:out value="selected"/></c:if>>Ice</option>	
					<option value="other" <c:if test="${autoaccident.road_conditions=='other'}"><c:out value="selected"/></c:if>>Other</option>
					<option value="unknown" <c:if test="${autoaccident.road_conditions=='unknown'}"><c:out value="selected"/></c:if>>Unknown</option>
				  </select><span class="err"><form:errors path="Autoaccident.road_conditions"></form:errors></span>
				  
				
				  </td>
				   <td><input type="text"name="conditions" id="conditions" style='display:none' value="${autoaccident.conditions}" name="conditions" /></td>
				  </tr> 
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Head Restraints:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="head_restraints" class="input_cmbbx1">
					<option value="up" <c:if test="${autoaccident.head_restraints=='up'}"><c:out value="selected"/></c:if> >Up</option>
					<option value="down" <c:if test="${autoaccident.head_restraints=='down'}"><c:out value="selected"/></c:if>>Down</option>
					<option value="do_no" <c:if test="${autoaccident.head_restraints=='do_no'}"><c:out value="selected"/></c:if>>Don't know</option>	
				  </select><span class="err"><form:errors path="Autoaccident.head_restraints"></form:errors></span>
				  </td>
				  </tr>
				  
				  </table>
				  <table align="right">
				  <tr>
				  <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
				  <td>&nbsp;&nbsp;</td>
				  <td><br><!-- <input type="button"  class="submit_btn" value="Cancel" onclick="window.location.href='viewautoaccident'"/> --><br></td>
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
				<!--  </form> -->
				  </div>
				  </div>
				  <div id="tabs-2">
				  <div id="right_content">
<!-- <form action="autoaccident" method="POST"> -->

<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
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
	              <h2>Auto Accident</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
  				<td align="left" valign="top" width="50%" style="padding-right:25px;">
  				<table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Seat Position After Accident:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="seatpos_after_accident" class="input_cmbbx1">
					<option  value="was_altered" <c:if test="${autoaccident.seatpos_after_accident=='was_altered'}"><c:out value="selected"/></c:if>>Was Altered</option>
					<option value="was_not_altered" <c:if test="${autoaccident.seatpos_after_accident=='was_not_altered'}"><c:out value="selected"/></c:if>>Was Not Altered</option>
					<option value="dontknow" <c:if test="${autoaccident.seatpos_after_accident=='dontknow'}"><c:out value="selected"/></c:if>>Don't know</option>
				  </select><span class="err"><form:errors path="Autoaccident.seatpos_after_accident"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Seat After The Accident:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="seat_after_accident" class="input_cmbbx1">
					<option  value="broken" <c:if test="${autoaccident.seat_after_accident=='broken'}"><c:out value="selected"/></c:if> >Broken</option>
					<option value="notbroken" <c:if test="${autoaccident.seat_after_accident=='notbroken'}"><c:out value="selected"/></c:if>>Not Broken</option>
				  </select><span class="err"><form:errors path="Autoaccident.seat_after_accident"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Lap Seat belt:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="lap_seat_belt" class="input_cmbbx1">
					<option  value="worn" <c:if test="${autoaccident.lap_seat_belt=='worn'}"><c:out value="selected"/></c:if>>Worn</option>
					<option value="not_worn" <c:if test="${autoaccident.lap_seat_belt=='not_worn'}"><c:out value="selected"/></c:if>>Not Worn</option>
					<option value="dont_know" <c:if test="${autoaccident.lap_seat_belt=='dont_know'}"><c:out value="selected"/></c:if>>Don't know</option>
				  </select><span class="err"><form:errors path="Autoaccident.lap_seat_belt"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Shoulder Seat Belt:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="shoulder_seat_belt" class="input_cmbbx1">
					<option  value="worns" <c:if test="${autoaccident.shoulder_seat_belt=='worns'}"><c:out value="selected"/></c:if>>Worn</option>
					<option value="notworn" <c:if test="${autoaccident.shoulder_seat_belt=='notworn'}"><c:out value="selected"/></c:if>>Not Worn</option>
					<option value="donno" <c:if test="${autoaccident.shoulder_seat_belt=='donno'}"><c:out value="selected"/></c:if>>Don't know</option>
				  </select><span class="err"><form:errors path="Autoaccident.shoulder_seat_belt"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Air Bag Deployed:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="airbag" value="yes" class="input_txt" id="airbagcheck" onclick="toggle()"<c:if test="${autoaccident.airbag=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="airbag" value="No" class="input_txt" onclick="toggle()"<c:if test="${autoaccident.airbag=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				 <span class="err"><form:errors path="Autoaccident.airbag"></form:errors></span>  <select name="wereyou" class="input_cmbbx1" id="mytext"  style='display:none'>
				 <option  value="struck" <c:if test="${autoaccident.wereyou=='struck'}"><c:out value="selected"/></c:if>>Struck</option>
				 <option value="notstruck" <c:if test="${autoaccident.wereyou=='notstruck'}"><c:out value="selected"/></c:if>>Not Struck</option>
				  </select><span class="err"><form:errors path="Autoaccident.wereyou"></form:errors></span>
				 </td>
				  </tr>
				  <script>
				  if (document.getElementById("airbagcheck").checked) {
				            	
document.getElementById('mytext').style.display="block";

				            	} else{
				            	document.getElementById('mytext').style.display="none";
				            	}
				           </script> 	
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Body Position At Time Of Accident:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="body_position" class="input_cmbbx1" id="bodyposition" onclick='Checkposition();'>
					<option  value="good" <c:if test="${autoaccident.body_position=='good'}"><c:out value="selected"/></c:if>>Good</option>
					<option value="forward" <c:if test="${autoaccident.body_position=='forward'}"><c:out value="selected"/></c:if>>Forward</option>
					<option value="leaning" <c:if test="${autoaccident.body_position=='learning'}"><c:out value="selected"/></c:if>>Leaning</option>
					<option value="others" <c:if test="${autoaccident.body_position=='others'}"><c:out value="selected"/></c:if>>Other</option>
					<option value="un_known" <c:if test="${autoaccident.body_position=='un_known'}"><c:out value="selected"/></c:if>>Unknown</option>
				  </select><span class="err"><form:errors path="Autoaccident.body_position"></form:errors></span>
				   <input type="text" name="body_position1" id="body_position1" value="${autoaccident.body_position1}"style='display:none' min="4" maxlength="32" onInput="return validatename(id)";/><span class="err"><form:errors path="Autoaccident.body_position1"></form:errors></span>
				  </td>
				  </tr>
				 <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Head Position:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="head_position" class="input_cmbbx1" id="headposition"onclick='CheckHeadposition();'>
					<option  value="forwardpos" <c:if test="${autoaccident.head_position=='forwardpos'}"><c:out value="selected"/></c:if>>Forward</option>
					<option value="left" <c:if test="${autoaccident.head_position=='left'}"><c:out value="selected"/></c:if>>Left</option>
					<option value="right" <c:if test="${autoaccident.head_position=='right'}"><c:out value="selected"/></c:if>>Right</option>
					<option value="up_pos" <c:if test="${autoaccident.head_position=='up_pos'}"><c:out value="selected"/></c:if>>Up</option>
					<option value="down_pos" <c:if test="${autoaccident.head_position=='down_pos'}"><c:out value="selected"/></c:if>>Down</option>
					<option value="others" <c:if test="${autoaccident.head_position=='others'}"><c:out value="selected"/></c:if>>Other</option>
					<option value="unknown_pos" <c:if test="${autoaccident.head_position=='unknown_pos'}"><c:out value="selected"/></c:if>>Unknown</option>
				  </select><span class="err"><form:errors path="Autoaccident.head_position"></form:errors></span>
				   <input type="text" name="head_position1" id="head_position1" min="4" maxlength="32" onInput="return validatename(id)"; value="${autoaccident.head_position1}"style='display:none' /><span class="err"><form:errors path="Autoaccident.head_position1"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Hands On Wheel:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="hands_on_wheel" value="one" class="input_txt" <c:if test="${autoaccident.hands_on_wheel=='one'}"><c:out value="Checked"/></c:if>>One&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="hands_on_wheel" value="two" class="input_txt" <c:if test="${autoaccident.hands_on_wheel=='two'}"><c:out value="Checked"/></c:if>>Two<span class="err"><form:errors path="Autoaccident.hands_on_wheel"></form:errors></span></td>
				  </tr>
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Aware Of Crash:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="aware_of_crash" class="input_cmbbx1" >
					<option value="aware" <c:if test="${autoaccident.aware_of_crash=='aware'}"><c:out value="selected"/></c:if> >Aware</option>
					<option value="surprised" <c:if test="${autoaccident.aware_of_crash=='surprised'}"><c:out value="selected"/></c:if>>Surprised</option>
				  </select><span class="err"><form:errors path="Autoaccident.aware_of_crash"></form:errors></span>
				  </td>
				  </tr>
				   <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Did You Brace Yourself?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="brace" value="yes" class="input_txt" id="bracecheck" onclick="toggle1();"<c:if test="${autoaccident.brace=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="brace" value="No" class="input_txt" onclick="toggle1()"<c:if test="${autoaccident.brace=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.brace"></form:errors></span>
				<select name="ifyes" class="input_cmbbx1" id="mybrace"  style='display:none'>
				  <option  value="bracearms" <c:if test="${autoaccident.ifyes=='bracearms'}"><c:out value="selected"/></c:if>>Braced with arms</option>
				  <option value="bracelegs" <c:if test="${autoaccident.ifyes=='bracelegs'}"><c:out value="selected"/></c:if>>Braced with legs</option>
				  </select>
				  </td>
				  </tr>
				  <script>
				  if (document.getElementById("bracecheck").checked) {
				            
				            	document.getElementById('mybrace').style.display="block";

				            	} else {
				            	document.getElementById('mybrace').style.display="none";
				            	}
				  </script>
				 <!--  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If yes</td>
				 <td valign="top" align="left" class="input_txt">
				  < name="ifyes" class="input_cmbbx1">
					<option ed="ed" value="bracearms" >Braced with arms</option>
					<option value="bracelegs">Braced with legs</option>
				  </>
				  </td>
				  </tr>  -->
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Did This Cause Further Injury?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="further_injury" value="yes" class="input_txt" id="furthercheck" onclick="toggle2();" <c:if test="${autoaccident.further_injury=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="further_injury" value="no" class="input_txt" onclick="toggle2();" <c:if test="${autoaccident.further_injury=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.further_injury"></form:errors></span>
				  <textarea rows='3' cols='35' id="injury"  style='display:none' min="4" maxlength="32" onInput="return validatename(id)"; placeholder="Please explain" name="injurytext">${autoaccident.injurytext}</textarea><span class="err" id="injuryerror"><form:errors path="Autoaccident.injurytext"></form:errors></span>
				  </td>
				  </tr>
				  
				  <script>
				  if (document.getElementById("furthercheck").checked) {
				            
				            	document.getElementById('injury').style.display="block";

				            	} else {
				            	document.getElementById('injury').style.display="none";
				            	}
				  </script>
				  <!--  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If yes, please explain</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="ifyes_explain" />
				  </td>
				  </tr> -->
				  <!-- <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>During/After crash</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="during_after_crash" />
				  </td>
				  </tr>
				 <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient's body</td>
				 <td valign="top" align="left" class="input_txt">
				  < name="patient_body" class="input_cmbbx1" onchange='Checkposition(this.value);'>
					<option ed="ed" value="jolted" >Jolted</option>
					<option value="thrown_about">Thrown About</option>
					<option value="stunned">Stunned</option>
					<option value="dazed">Dazed</option>
					<option value="whipped">Whipped</option>
					<option value="slammed">Slammed</option>
					<option value="otherbody">Other</option>
				  </>
				  <input type="text" name="patient_body" id="body_position" style='display:none'/>
				  </td>
				  </tr>  -->
				 <!--  <tr>
				  <td valign="top" align="center">&nbsp;</td>
				  <td valign="top" align="left"><input type="button" class="submit_btn2" value="Previous" onclick="history.go(-1)"></td> 
                  <td valign="top" align="right"><input type="submit" class="submit_btn2" value="Submit"></td>
				  </tr>  -->
				  </table>
				  <table align="right">
				  <tr>
				  	<td><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  /></td>
				  	<td>&nbsp;&nbsp;</td>
				  <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
				  <td>&nbsp;&nbsp;</td>
				  <td><br><!-- <input type="button"  class="submit_btn" value="Cancel" onclick="window.location.href='viewautoaccident'"/> --><br></td>
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
				 <!--  </form> -->
				  </div>
				  </div>
				  <div id="tabs-3">
				   <div id="right_content">
				   <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
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
	              <h2>Auto Accident</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
  				<td align="left" valign="top" width="50%" style="padding-right:25px;">
  				<table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr class="row1">
  				<td valign="middle" align="left" class="input_txt"><h6 >During / After crash</h6></td>
  				<td></td>
  				</tr>
  				<tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Patient's Body:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="patient_body" class="input_cmbbx1" id="patientbody" onclick='CheckPatientposition();'>
					<option value="jolted" <c:if test="${autoaccident.patient_body=='jolted'}"><c:out value="selected"/></c:if>>Jolted</option>
					<option value="thrown_about" <c:if test="${autoaccident.patient_body=='thrown_about'}"><c:out value="selected"/></c:if>>Thrown About</option>
					<option value="stunned" <c:if test="${autoaccident.patient_body=='stunned'}"><c:out value="selected"/></c:if>>Stunned</option>
					<option value="dazed" <c:if test="${autoaccident.patient_body=='dazed'}"><c:out value="selected"/></c:if>>Dazed</option>
					<option value="whipped" <c:if test="${autoaccident.patient_body=='whipped'}"><c:out value="selected"/></c:if>>Whipped</option>
					<option value="slammed" <c:if test="${autoaccident.patient_body=='slammed'}"><c:out value="selected"/></c:if>>Slammed</option>
					<option value="otherbody" <c:if test="${autoaccident.patient_body=='otherbody'}"><c:out value="selected"/></c:if>>Other</option>
				  </select><span class="err"><form:errors path="Autoaccident.patient_body"></form:errors></span>
				  <input type="text" name="patient_body1" id="patient_body1" onInput="return validatename(id)"; min="4" maxlength="32" value="${autoaccident.patient_body1}"style='display:none'/><span class="err"><form:errors path="Autoaccident.patient_body1"></form:errors></span>
				  </td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Did Patient's Body Strike Interior Of Car:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="body_strike"  value="yes" id="yeschecked" onchange="change44();" class="input_txt"  onclick="strike();" <c:if test="${autoaccident.body_strike=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="body_strike" id="body_strike" value="no" id="nochecked" onchange="change44();" class="input_txt"  onclick="strike();"<c:if test="${autoaccident.body_strike=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.body_strike"></form:errors></span>
				  </td>
				  </tr>
				  
				  
				<div id="hit" style="display:block;">
				<!-- <div class="contentbox"> -->
				
				  
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My head hit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="head_hit" name="head_hit" min="4" maxlength="32" onInput="return validatename(id);" value="${autoaccident.head_hit}"/>
				  <br/><span id="head_hiterror" class="err"></span></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Right Left Shoulder hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlshoulder_hit" name="rlshoulder_hit" min="4" maxlength="32" onInput="return validatename(id)" value="${autoaccident.rlshoulder_hit }" />
				  <br/><span id="rlshoulder_hiterror" class="err"></span></td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Right Left Hip hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlhip_hit" name="rlhip_hit" value="${autoaccident.rlhip_hit }" min="4" maxlength="32" onInput="return validatename(id);"/>
				  <br/><span id="rlhip_hiterror" class="err"></span></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Right Left Knee hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlknee_hit" name="rlknee_hit" value="${autoaccident.rlknee_hit }" min="4" maxlength="32" onInput="return validatename(id);"/>
				  <br/><span id="rlknee_hiterror" class="err"></span></td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Chest hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="chest_hit" name="chest_hit" value="${autoaccident.chest_hit }" onInput="return validatename(id);" min="4" maxlength="32"/>
				  <br/><span id="chest_hiterror" class="err"></span></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Right Left Arm hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlarm_hit" name="rlarm_hit" value="${autoaccident.rlarm_hit }" onInput="return validatename(id);" min="4" maxlength="32"/>
				  <br/><span id="rlarm_hiterror" class="err"></span></td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Right Left Leg hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlleg_hit" name="rlleg_hit" value="${autoaccident.rlleg_hit }" onInput="return validatename(id);" min="4" maxlength="32"/>
				  <br/><span class="err" id="rlleg_hiterror"></span></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Other body part hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="otherpart_hit" name="otherpart_hit" value="${autoaccident.otherpart_hit }" onInput="return validatename(id);" min="4" maxlength="32" />
				  <br/><span class="err" id="otherpart_hiterror"></span>
				  </td>
				  </tr>
				  <script>
				  if (document.getElementById("yeschecked").checked) {
				            
				            	document.getElementById('hit').style.display="block";

				            	} else {
				            	document.getElementById('hit').style.display="none";
				            	}
				  </script>
				 
				  </div>
				  </div>
				  <!-- </td>
				  </tr> -->
				  
				  
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt" width = "54%"><span class="err">* </span>Were You Wearing Glasses At The Time Of Accident?nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="wearing_glasses" value="yes" class="input_txt" <c:if test="${autoaccident.wearing_glasses=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="wearing_glasses" value="no" class="input_txt" <c:if test="${autoaccident.wearing_glasses=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.wearing_glasses"></form:errors></span>
			      </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Were The Glasses Still In Place After Impact?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="glasses_impact" value="yes" class="input_txt" <c:if test="${autoaccident.glasses_impact=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="glasses_impact" value="no" class="input_txt" <c:if test="${autoaccident.glasses_impact=='no'}"><c:out value="Checked"/></c:if> >No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.glasses_impact"></form:errors></span>
			      </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Unconscious:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="unconscious" value="yes" class="input_txt" id="unconcheck"onclick="toggle4();" <c:if test="${autoaccident.unconscious=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="unconscious" value="no" class="input_txt" onclick="toggle4();" <c:if test="${autoaccident.unconscious=='no'}"><c:out value="Checked"/></c:if> >No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.unconscious"></form:errors></span>
			      <input type="text" class="input_txtbx1" id="uncon" name="uncon" onkeypress="return validate(event)";  maxlength="18"; value="${autoaccident.uncon }"  style='display:none'> (minutes)<span class="err"><form:errors path="Autoaccident.uncon"></form:errors></span></input>
			      </td>
				  </tr>
				  <script>
				  if (document.getElementById("unconcheck").checked) {
				            
				            	document.getElementById('uncon').style.display="block";

				            	} else {
				            	document.getElementById('uncon').style.display="none";
				            	}
				  </script>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Estimated Amount of Property Damage:</td>
				  <td valign="top" align="left" class="input_txt">$
				  <input type="text" class="input_txtbx1" id="estimateddamage" name="estimated_amount" value="${autoaccident.estimated_amount }" onkeypress="return validate1(event)";/><span id="estimateddamageerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.estimated_amount"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Damage To The other Car:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="damage" class="input_cmbbx1" >
					<option ed="ed" value="minimal" <c:if test="${autoaccident.damage=='minimal'}"><c:out value="selected"/></c:if>>Minimal</option>
					<option value="moderate" <c:if test="${autoaccident.damage=='moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
					<option value="major" <c:if test="${autoaccident.damage=='major'}"><c:out value="selected"/></c:if>>Major</option>
					<option value="totaled" <c:if test="${autoaccident.damage=='totaled'}"><c:out value="selected"/></c:if>>Totaled</option>
				  </select><span class="err"><form:errors path="Autoaccident.damage"></form:errors></span>
				  </td>
				  </tr> 
				 </table>
				  <table align="right">
				  <tr>
				  	<td><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  /></td>
				  	<td>&nbsp;&nbsp;</td>
				  <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
				  <td>&nbsp;&nbsp;</td>
				  <td><br><!-- <input type="button"  class="submit_btn" value="Cancel" onclick="window.location.href='viewautoaccident'"/> --><br></td>
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
				 </div>
				 </div>
				 <div id="tabs-4">
				   <div id="right_content">
				   <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
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
	              <h2>Auto Accident</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
				 <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was Anyone Cited?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="was_anyone_cited" value="yes" class="input_txt" <c:if test="${autoaccident.was_anyone_cited=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="was_anyone_cited" value="no" class="input_txt" <c:if test="${autoaccident.was_anyone_cited=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.was_anyone_cited"></form:errors></span>
			      </td>
				  </tr> 
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Who?</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="who" class="input_cmbbx1" >
					<option  value="you" <c:if test="${autoaccident.who=='you'}"><c:out value="selected"/></c:if>>You</option>
					<option value="other_driver" <c:if test="${autoaccident.who=='other_driver'}"><c:out value="selected"/></c:if>>Other Driver</option>
				  </select><span class="err"><form:errors path="Autoaccident.who"></form:errors></span>
				  </td><td width="680" ></td>
				  </tr> 
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>After Accident,I Had The Following?</td>
				 <td valign="top" align="left" class="input_txt" style="width: 886px; ">
				 <input type="checkbox" id="headache" name="headache" value="headache" <c:if test="${autoaccident.headache=='headache'}"><c:out value="Checked"/></c:if> >Headache&nbsp;&nbsp;&nbsp;&nbsp; 
				 <input type="checkbox" id="dizziness" name="dizziness" value="dizziness" <c:if test="${autoaccident.dizziness=='dizziness'}"><c:out value="Checked"/></c:if> >Dizziness&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" id="nausea" name="nausea" value="nausea" <c:if test="${autoaccident.nausea=='nausea'}"><c:out value="Checked"/></c:if> >Nausea&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" id="confusion" name="confusion" value="confusion" <c:if test="${autoaccident.confusion=='confusion'}"><c:out value="Checked"/></c:if> >Confusion&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" id="disorientation"name="disorientation" value="disorientation" <c:if test="${autoaccident.disorientation=='disorientation'}"><c:out value="Checked"/></c:if> >Disorientation&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" id="neckpain" name="neckpain" value="neckpain" <c:if test="${autoaccident.neckpain=='neckpain'}"><c:out value="Checked"/></c:if> >Neck pain&nbsp;&nbsp;&nbsp;&nbsp;
				 
				 <input type="checkbox" id="otherpain" name="otherpain" value="other pain" id="othercheck" onclick="Other();" <c:if test="${autoaccident.otherpain=='other pain'}"><c:out value="Checked"/></c:if> >Other&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="text" class="input_txtbx1" id="other1" name="otherpaintext"  placeholder="If other" value="${autoaccident.otherpaintext}" style='display:none'/>
				 
				 <span id="afteraccidenterror" style="color: red;font-style:italic;">
				 </td><form:errors path="Autoaccident.after_accident"></form:errors></span>
				 </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Symptoms First Appeared:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="first_symptom" class="input_cmbbx1" id="firstsymptom"  onchange='Checksymptom();'>
					<option  value="immediately" <c:if test="${autoaccident.first_symptom=='immediately'}"><c:out value="selected"/></c:if> >Immediately</option>
					<option value="hours" <c:if test="${autoaccident.first_symptom=='hours'}"><c:out value="selected"/></c:if> >hours after the accident</option>
					<option value="next_day" <c:if test="${autoaccident.first_symptom=='next_day'}"><c:out value="selected"/></c:if> >The next day</option>
					<option value="days" <c:if test="${autoaccident.first_symptom=='days'}"><c:out value="selected"/></c:if> >days</option>
				  </select><span class="err"><form:errors path="Autoaccident.first_symptom"></form:errors></span>
				 <input type="text" name="symptom" id="symptom" value="${autoaccident.symptom}"style='display:none'/>
				  </td><td width="680" ></td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>After The Accident I Went:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="after_accident" class="input_cmbbx1"  id="afteraccident"onclick='Check();'>
					<option  value="hospital" <c:if test="${autoaccident.after_accident=='hospital'}"><c:out  value="selected"/></c:if>  >Hospital</option>
					<option value="work" <c:if test="${autoaccident.after_accident=='work'}"><c:out  value="selected"/></c:if> >Work</option>
					<option value="home" <c:if test="${autoaccident.after_accident=='home'}"><c:out  value="selected"/></c:if> >Home</option>
					<option value="family" <c:if test="${autoaccident.after_accident=='family'}"><c:out  value="selected"/></c:if> >Family</option>
					<option value="physician" <c:if test="${autoaccident.after_accident=='physician'}"><c:out  value="selected"/></c:if> >Physician</option>
					<option value="otheracc" <c:if test="${autoaccident.after_accident=='otheracc'}"><c:out  value="selected"/></c:if> >Other</option>
				  </select><span class="err"><form:errors path="Autoaccident.after_accident"></form:errors></span>
				 <input type="text" name="accident" id="accident" value="${autoaccident.accident}"style='display:none'/><span class="err"><form:errors path="Autoaccident.accident"></form:errors></span>
				  </td>
				  </tr> 
				  
				   
				   <!-- <div id="accident_hospital" style='display:none' > -->
				  	
				   <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"  width = "17.5%" >&nbsp;&nbsp;&nbsp;Name Of The Hospital:</td><!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
				  
				 
				  <td><input type="text" align="left" class="input_txtbx1" id="hosname" onInput="return validatename(id);" name="hosname" value="${autoaccident.hosname }" /></td>
				  <td width="680" ></td>
				
				  </tr>
				   <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;City:</td><td><!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
				  
				  <input type="text" class="input_txtbx1" id="city" name="city" value="${autoaccident.city }"  onInput="return validatename(id);"/>
				  </td>
				  </tr>
				   <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;Length of Stay:</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  
				  <td>
				  <input type="text" class="input_txtbx1" id="staylength" name="staylength" onkeypress="return validate(event)"; value="${autoaccident.staylength }"/>
				  <br><span class="err" id="staylengtherror"></span>
				  </td>
				  <td></td>
				  
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>How Did You Get to the  &nbsp;&nbsp;Hospital?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td><td>
				  <select name="hospitalget" class="input_cmbbx1" id="hospitalget" onchange='Checkhospital(this.value);'>
					<option  value="ambulance" <c:if test="${autoaccident.hospitalget=='ambulance'}"><c:out value="selected"/></c:if>>Ambulance</option>
					<option value="otherhos" <c:if test="${autoaccident.hospitalget=='otherhos'}"><c:out value="selected"/></c:if>>Other</option>
				   </select>
				 <input type="text" name="hospital1" id="hospital1" value="${autoaccident.hospital1}" style='display:none'/>
				  </td>
				  </tr> 
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt" style="width: 465px; ">&nbsp;&nbsp;&nbsp;What Body Parts Were X-Rayed,What &nbsp;&nbsp;&nbsp;&nbsp;Treatment   Was Given?
				  </td><td>
				  <input type="text" class="input_txtbx1" id="xray" name="xray" value="${autoaccident.xray }" onInput="return validatename(id)";min="4" maxlength="32"/>
				  </td>
				  <td ></td>
				 
				  </tr>
				   <tr class="row1">
                  <td valign="middle"  align="left" class="input_txt">&nbsp;&nbsp;&nbsp;What Did They Tell You Was Wrong?<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
				  </td><td>
				  <input type="text" onInput="return validatename(id);" class="input_txtbx1" id="wrong" name="wrong" value="${autoaccident.wrong }" />
				  </td>
				  
				  </tr>
				   
				  </table>
				  <%-- <table cellpadding="0" cellspacing="0" border="0" width="100%">
				   <tr class="row2">
                  <td valign="middle" align="left" class="input_txt" width = "21%">Name of the hospital&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td width = "4.5%"></td>
				  <td><input type="text" class="input_txtbx1" id="inp_id" name="hosname" value="${autoaccident.hosname }"/></td>
				  
			
				 
				  </tr>
				   <tr class="row1">
                  <td valign="middle" align="left" class="input_txt" width = "21%">City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  
				  <td><input type="text" class="input_txtbx1" id="inp_id" name="city" value="${autoaccident.city }" />
				  </td>
				  </tr>
				   <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">Length of stay&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  
				  <input type="text" class="input_txtbx1" id="inp_id" name="staylength" value="${autoaccident.staylength }"/>
				  </td>
				  <td></td>
				  <td></td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How did you get to the hospital?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				  <select name="hospitalget" class="input_cmbbx1" id="checkhospital"  onclick='Checkhospital();'>
					<option  value="ambulance" <c:if test="${autoaccident.hospitalget=='ambulance'}"><c:out value="selected"/></c:if>>Ambulance</option>
					<option value="otherhos" <c:if test="${autoaccident.hospitalget=='otherhos'}"><c:out value="selected"/></c:if>>Other</option>
				   </select><span class="err"><form:errors path="Autoaccident.hospitalget"></form:errors></span>
				  
				 <input type="text" name="hospital1" id="hospital1" value="${autoaccident.hospital1}" style='display:none'/>
				  </td>
				  </tr> 
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">What body parts were x-rayed,what treatment was given
				  
				  <input type="text" class="input_txtbx1" id="inp_id" name="xray" value="${autoaccident.xray }"/>
				  </td>
				  <td></td>
				  <td></td>
				  </tr>
				   <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">What did they tell you was wrong&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  
				  <input type="text" class="input_txtbx1" id="inp_id" name="wrong" value="${autoaccident.wrong }" />
				  </td>				  
				  </tr>				  
				  </table>
				  </div>
				  </div>
				  </div>
				  </td>
				  </tr>
				  </table> --%>
				 <table align="right">
				  <br><tr>
				 <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous" style = "display:none" />&nbsp;</td>
                <td><input type="submit" class="submit_btn" value="Update" onclick="return checksub('this');"></td>
                <td><a href="deleteautoaccident" class="submit_btn" style="text-decoration: none;color:white" onclick="return confirmation() ">Delete</a><!-- <input type="reset" class="submit_btn" value="Cancel" onclick="window.location.href='viewautoaccident'"> --></td>				 
				</table> 
				  
				     </div>
				  </div>
				 
				  </div>
				  </body>
				  </html>
				  
				  
<script type="text/javascript">
function CheckConditions(){
 var element=document.getElementById('conditions');
 var type1=document.getElementById('road');
 var type = type1.options[type1.selectedIndex].value;
 if(type=='other')
   element.style.display='block';
 else  
   element.style.display='none';
} 

function Checkposition(){
 var element=document.getElementById('body_position1');
 var type1=document.getElementById('bodyposition');
 var type = type1.options[type1.selectedIndex].value;
 if(type=='others')
   element.style.display='block';
 else  
   element.style.display='none';
} 

function CheckHeadposition(){
 var element=document.getElementById('head_position1');
 var type1=document.getElementById('headposition');
 var type = type1.options[type1.selectedIndex].value;
 if(type=='others')
   element.style.display='block';
 else  
   element.style.display='none';
} 

function CheckPatientposition(){
 var element=document.getElementById('patient_body1');
 var type1=document.getElementById('patientbody');
 var type = type1.options[type1.selectedIndex].value;
 if(type=='otherbody')
   element.style.display='block';
 else  
   element.style.display='none';
} 

function toggle(){
	
		var element = document.getElementById('mytext');
		if(document.getElementById('airbagcheck').checked)
			{
			
				element.style.display="block";
			
			}
		else
			element.style.display="none";
		
		
	}
function toggle1(){
	
		
		var element = document.getElementById('mybrace');
		if(document.getElementById('bracecheck').checked)
			{
			
				element.style.display="block";
			
			}
		else
			element.style.display="none";
		
		
	}


function toggle2(){

		var element = document.getElementById('injury');
		if(document.getElementById('furthercheck').checked)
			{
			
				element.style.display="block";
			
			}
		else
			element.style.display="none";
		
		
	}

function strike(){
	/* alert(value); */
	var e = document.getElementById('hit');
	if(document.getElementById('yeschecked').checked)
	
		
		e.style.display="block";
	else
		 e.style.display="none";
}

function toggle4(){
		var element = document.getElementById('uncon');
		if(document.getElementById('unconcheck').checked)
			{
			
				element.style.display="block";
			
			}
		else
			element.style.display="none";
}
function Checksymptom(){
 var element=document.getElementById('symptom');
 var type1=document.getElementById('firstsymptom');
 var type = type1.options[type1.selectedIndex].value;

 if(type=='hours' ||  type=='days')
   element.style.display='block';
 else  
   element.style.display='none';
} 

function Checkhospital(){
	
 var element=document.getElementById('hospital1');
 var type1=document.getElementById('checkhospital');
 var type = type1.options[type1.selectedIndex].value;
 
 if(type=='otherhos')
   element.style.display='block';
 else  
   element.style.display='none';
} 

function Check(){
 var element=document.getElementById('accident_hospital');
 
 var element1 = document.getElementById('accident');
 var type1=document.getElementById('afteraccident');
 var type = type1.options[type1.selectedIndex].value;
 
 if(type=='hospital'){
	
   element.style.display='block';
   element1.style.display='none';
 }
 else if(type =='otheracc'){
	
	 element1.style.display='block';
	 element.style.display='none';
 }
 else {
   element.style.display='none';
 element1.style.display='none';
 }
}
</script>
<script type="text/javascript">
function Other()
	{
		var element = document.getElementById('other1');
		if(document.getElementById('othercheck').checked)
			{
				element.style.display="block";
			}
		else
			element.style.display="none";
	}


</script>
 
				
<script>
window.onload = function(){

	Checkhospital();CheckPatientposition();CheckHeadposition();Checkposition();CheckConditions();Check();strike();Other();toggle2();toggle1();toggle();toggle4();Checksymptom();
	
	
}

</script>


			  <jsp:include page="footer.jsp"></jsp:include>
				  
				  
				  