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
		 window.onload = function()
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
		 window.onload = function()
{
if (document.getElementById("road").value == "Select Conditions") {
document.getElementById("conditions").style.visibility = 'visible';


}
else  {
document.getElementById("conditions").style.visibility = 'hidden';


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
function checkValid(e)
{
	
	document.getElementById("claimnoerror").innerHTML=""; 
	 if(document.getElementById("claimno").value=="")
	 {
	  document.getElementById("claimnoerror").innerHTML="Required field should not be empty";
      document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
      return false;
	 }
	 
	 document.getElementById("claimnoerror").innerHTML="";
	 if(document.getElementById("claimno").value.length<9 )
	 {
	 	
	 	document.getElementById("claimnoerror").innerHTML="Claim Number should be of length 9";
	 	document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	     return false;
	 }
	
	 
	 

	  document.getElementById("adjustersnameerror").innerHTML=""; 
	 if(document.getElementById("adjustersname").value=="")
	 {
	  document.getElementById("adjustersnameerror").innerHTML="Required field should not be empty";
	  document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	  return false;
	 }

	 
		document.getElementById("adjustersnameerror").innerHTML="";
	    if(document.getElementById("adjustersname").value.length<4 || document.getElementById("adjustersname").value.length>=32)
	    {
	    	
	    	document.getElementById("adjustersnameerror").innerHTML="Name should be of length 4 to 32";
	    	 document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	        return false;
	    }

		
	  document.getElementById("companionerror").innerHTML="";
	  if(document.getElementById("companion").value=="")
	 {
	  document.getElementById("companionerror").innerHTML="Required field should not be empty";
	  document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	  return false;
	 }

		
	  

	 	document.getElementById("companionerror").innerHTML="";
	    if(document.getElementById("companion").value.length<4 || document.getElementById("companion").value.length>=32)
	    {
	    	
	    	document.getElementById("companionerror").innerHTML="Name should be of length 4 to 32";
	    	 document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	        return false;
	    }

	 document.getElementById("vehicle_makeerror").innerHTML="";
	  if(document.getElementById("vehicle_make").value=="")
	 {
	  document.getElementById("vehicle_makeerror").innerHTML="Required field should not be empty";
	  document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	  return false;
	 }

		document.getElementById("vehicle_makeerror").innerHTML="";
	  if(document.getElementById("vehicle_make").value.length<4 || document.getElementById("vehicle_make").value.length>=32)
	  {
	  	
	  	document.getElementById("vehicle_makeerror").innerHTML="Name should be of length 4 to 32";
	  	 document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	      return false;
	  }

	 document.getElementById("vehicle_modelerror").innerHTML="";
	  if(document.getElementById("vehicle_model").value=="")
	 {
	  document.getElementById("vehicle_modelerror").innerHTML="Required field should not be empty";
	  document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	  return false;
	 }

		
	
		document.getElementById("vehicle_modelerror").innerHTML="";
	if(document.getElementById("vehicle_model").value.length<4 || document.getElementById("vehicle_model").value.length>=32)
	{
		
		document.getElementById("vehicle_modelerror").innerHTML=" should be of length 4 to 32";
		 document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	    return false;
	}

	
	 document.getElementById("vehicle_yearerror").innerHTML="";
	  if(document.getElementById("vehicle_year").value=="")
	 {
	  document.getElementById("vehicle_yearerror").innerHTML="Required field should not be empty";
	  document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	  return false;
	 }

		
	 document.getElementById("vehicle_yearerror").innerHTML="";
		if(document.getElementById("vehicle_year").value.length<4)
		{
		document.getElementById("vehicle_yearerror").innerHTML="Invalid year format";
		 document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		return false;
		
		}
	
	  document.getElementById("other_vehicle_makeerror").innerHTML="";
	  if(document.getElementById("other_vehicle_make").value=="")
	 {
	  document.getElementById("other_vehicle_makeerror").innerHTML="Required field should not be empty";
	  document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	  return false;
	 }
	
	  document.getElementById("other_vehicle_makeerror").innerHTML="";
	  if(document.getElementById("other_vehicle_make").value.length<4 || document.getElementById("other_vehicle_make").value.length>=32)
	  {
	  	
	  	document.getElementById("other_vehicle_makeerror").innerHTML="should be of length 4 to 32";
	  	 document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	      return false;
	  }
	
	  document.getElementById("other_vehicle_modelerror").innerHTML="";
	  if(document.getElementById("other_vehicle_model").value=="")
	 {
	  document.getElementById("other_vehicle_modelerror").innerHTML="Required field should not be empty";
	  document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	  return false;
	 }
	
	  document.getElementById("other_vehicle_modelerror").innerHTML="";
	  if(document.getElementById("other_vehicle_model").value.length<4 || document.getElementById("other_vehicle_model").value.length>=32)
	  {
	  	
	  	document.getElementById("other_vehicle_modelerror").innerHTML="should be of length 4 to 32";
	  	 document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	      return false;
	  }
	 
	  document.getElementById("other_vehicle_yearerror").innerHTML="";
	  if(document.getElementById("other_vehicle_year").value=="")
	 {
	  document.getElementById("other_vehicle_yearerror").innerHTML="Required field should not be empty";
	  document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	  return false;
	 }
	 
	 document.getElementById("other_vehicle_yearerror").innerHTML="";
		if(document.getElementById("other_vehicle_year").value.length<4)
		{
		document.getElementById("other_vehicle_yearerror").innerHTML="Invalid year format";
		 document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		return false;
		
		}
	
	
	document.getElementById("speederror").innerHTML="";
		if(document.getElementById("speed").value=="")
		{
		document.getElementById("speederror").innerHTML="Required Field Should not be Empty";
		 document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		return false;
		}

		 else
			 {
			  document.getElementById("speederror").innerHTML="";
			  document.getElementById('btnvisible1').style.visibility='hidden';
			  document.getElementById('btnNext').style.visibility='visible';
			  document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";		 
			 }
	 
}


</script>

<script>
function checkValid2(e){
	
	if(document.getElementById("unconscious").checked)
	{
		if(document.getElementById("uncon").value=="")
		{
		document.getElementById("unconerror").innerHTML="Required Field Should not be Empty";
		document.getElementById('uncon').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid2(event);'>";
		return false;
		}
	}
	document.getElementById("estimateddamageerror").innerHTML="";
	if(document.getElementById("estimateddamage").value=="")
	{
	document.getElementById("estimateddamageerror").innerHTML="Required Field Should not be Empty";
	document.getElementById('tblbtn2').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid2(event);'>";
	return false;
	}
	
	
	 document.getElementById("head_hiterror").innerHTML="";
	if(document.getElementById("head_hit").value!="")
	{
    if(document.getElementById("head_hit").value.length<4 || document.getElementById("head_hit").value.length>=32)
    {
    	
    	document.getElementById("head_hiterror").innerHTML="Should be of length 4 to 32";
    	document.getElementById('tblbtn2').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid2(event);'>";		 
        return false;
    }
    }
	
	document.getElementById("rlshoulder_hiterror").innerHTML="";
	if(document.getElementById("rlshoulder_hit").value!="")
	{
    if(document.getElementById("rlshoulder_hit").value.length<4 || document.getElementById("rlshoulder_hit").value.length>=32)
    {
    	
    	document.getElementById("rlshoulder_hiterror").innerHTML="Should be of length 4 to 32";
    	document.getElementById('tblbtn2').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid2(event);'>";
        return false;
    }
    }
	
	
	document.getElementById("rlhip_hiterror").innerHTML="";
	if(document.getElementById("rlhip_hit").value!="")
	{
    if(document.getElementById("rlhip_hit").value.length<4 || document.getElementById("rlhip_hit").value.length>=32)
    {
    	
    	document.getElementById("rlhip_hiterror").innerHTML="Should be of length 4 to 32";
    	document.getElementById('tblbtn2').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid2(event);'>";
        return false;
    }
    }
	
	document.getElementById("rlknee_hiterror").innerHTML="";
	if(document.getElementById("rlknee_hit").value!="")
	{
    if(document.getElementById("rlknee_hit").value.length<4 || document.getElementById("rlknee_hit").value.length>=32)
    {
    	
    	document.getElementById("rlknee_hiterror").innerHTML="Should be of length 4 to 32";
    	document.getElementById('tblbtn2').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid2(event);'>";
        return false;
    }
    }
	
	document.getElementById("chest_hiterror").innerHTML="";
	if(document.getElementById("chest_hit").value!="")
	{
    if(document.getElementById("chest_hit").value.length<4 || document.getElementById("chest_hit").value.length>=32)
    {
    	
    	document.getElementById("chest_hiterror").innerHTML="Should be of length 4 to 32";
    	document.getElementById('tblbtn2').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid2(event);'>";
        return false;
    }
    }
	else
	 {
	  document.getElementById("chest_hiterror").innerHTML="";
	  document.getElementById('btnvisible1').style.visibility='hidden';
	  document.getElementById('btnNext').style.visibility='visible';
	  document.getElementById('tblbtn2').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid2(event);'>";		 
	 }
	
	document.getElementById("rlarm_hiterror").innerHTML="";
	if(document.getElementById("rlarm_hit").value!="")
	{
    if(document.getElementById("rlarm_hit").value.length<4 || document.getElementById("rlarm_hit").value.length>=32)
    {
    	
    	document.getElementById("rlarm_hiterror").innerHTML="Should be of length 4 to 32";
    	document.getElementById('tblbtn2').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid2(event);'>";
        return false;
    }
    }
	
	document.getElementById("rlleg_hiterror").innerHTML="";
	if(document.getElementById("rlleg_hit").value!="")
	{
    if(document.getElementById("rlleg_hit").value.length<4 || document.getElementById("rlleg_hit").value.length>=32)
    {
    	
    	document.getElementById("rlleg_hiterror").innerHTML="Should be of length 4 to 32";
    	document.getElementById('tblbtn2').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid2(event);'>";
        return false;
    }
    }
	
	document.getElementById("otherpart_hiterror").innerHTML="";
	if(document.getElementById("otherpart_hit").value!="")
	{
    if(document.getElementById("otherpart_hit").value.length<4 || document.getElementById("otherpart_hit").value.length>=32)
    {
    	
    	document.getElementById("otherpart_hiterror").innerHTML="Should be of length 4 to 32";
    	document.getElementById('tblbtn2').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid2(event);'>";
        return false;
    }
    } 
	

	else
	 {
	  document.getElementById("estimateddamageerror").innerHTML="";
	  document.getElementById('btnvisible1').style.visibility='hidden';
	  document.getElementById('btnNext').style.visibility='visible';
	  document.getElementById('tblbtn2').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next'>";		 		 
	 }
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
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>What is the Claim Number of your accident?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="hidden" class="input_txtbx1" id="inp_id" value="${autoaccident.patient_number}" name="patient_number" />
				  <input type="text" class="input_txtbx1" id="claimno" name="claimnumber" maxlength="10" value="${autoaccident.claimnumber }" onInput="return validateusername()"; /><br><span id="claimnoerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.claimnumber"></form:errors></span></td>
<td width="10%">
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Adjuster's Name:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="adjustersname" name="adjustersname" value="${autoaccident.adjustersname }" min="4" maxlength="32" onInput="return validatename(id)";/><br><span id="adjustersnameerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.adjustersname"></form:errors></span>
				  </td><td width="10%"></tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Who gave you the estimate?</td>
				  <td valign="top" align="left" class="input_txt">
				  <select  name="estimate" class="input_cmbbx1">
					<option  value="Your Insurance Company" <c:if test="${autoaccident.estimate=='Your Insurance Company'}"><c:out value="selected"/></c:if>>Your Insurance company</option>
					<option value="Other Drivers Insurance Company" <c:if test="${autoaccident.estimate=='Other Drivers Insurance Company'}"><c:out value="selected"/></c:if>>Other Driver's Insurance company</option>
					<option value="Body Shop" <c:if test="${autoaccident.estimate=='Body Shop'}"><c:out value="selected"/></c:if>>Body shop</option>
				  </select><span class="err"><form:errors path="Autoaccident.estimate"></form:errors></span>
				  </td><td width="10%"></tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Were you the:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="seating" class="input_cmbbx1">
					<option  value="Driver" <c:if test="${autoaccident.seating=='Driver'}"><c:out value="selected"/></c:if>>Driver</option>
					<option value="Front seat Passenger" <c:if test="${autoaccident.seating=='Front seat Passenger'}"><c:out value="selected"/></c:if>>Front seat Passenger</option>
					<option value="Back seat Passenger" <c:if test="${autoaccident.seating=='Back seat Passenger'}"><c:out value="selected"/></c:if>>Back seat Passenger</option>
					<option value="On the job at the time of accident" <c:if test="${autoaccident.seating=='On the job at the time of accident'}"><c:out value="selected"/></c:if>>On the job at the time of accident</option>
				  </select><span class="err"><form:errors path="Autoaccident.seating"></form:errors></span>
				  </td><td width="10%"></tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was anyone else in the car with you during the accident? </td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="companion" min="4" maxlength="32" name="companion" value="${autoaccident.companion }" onInput="return validatename1()"; /><br><span id="companionerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.companion"></form:errors></span>
				  </td><td width="10%"></tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Description of vehicle you were in: </td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="smlinput_txtbx1" id="vehicle_make" name="vehicle_make" style="width:70px" onInput="return validatename2()"; value="${autoaccident.vehicle_make }"/><span id="vehicle_makeerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.vehicle_make"></form:errors></span>
				  <input type="text" class="smlinput_txtbx1" id="vehicle_model" name="vehicle_model" style="width:70px" onInput="return validatename3()"; value="${autoaccident.vehicle_model }" /><span id="vehicle_modelerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.vehicle_model"></form:errors></span>
				  <input type="text" class="smlinput_txtbx1" id="vehicle_year" maxlength="4" name="vehicle_year" style="width:70px" maxlength="4"  onkeypress="return validate(event)"; value="${autoaccident.vehicle_year }"/><span id="vehicle_yearerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.vehicle_year"></form:errors></span>
				  </td><td width="10%"></tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Portion of the vehicle hit: </td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="vehicle_hit" class="input_cmbbx1">
					<option  value="Right Front" <c:if test="${autoaccident.vehicle_hit=='Right Front'}"><c:out value="selected"/></c:if>>Right Front</option>
					<option value="Left Front" <c:if test="${autoaccident.vehicle_hit=='Left Front'}"><c:out value="selected"/></c:if>>Left Front</option>
					<option value="Right Rear" <c:if test="${autoaccident.vehicle_hit=='Right Rear'}"><c:out value="selected"/></c:if>>Right Rear</option>
					<option value="Left Rear" <c:if test="${autoaccident.vehicle_hit=='Left Rear'}"><c:out value="selected"/></c:if>>Left Rear</option>
					<option value="Right Side" <c:if test="${autoaccident.vehicle_hit=='Right Side'}"><c:out value="selected"/></c:if>>Right side</option>
					<option value="Left Side" <c:if test="${autoaccident.vehicle_hit=='Left Side'}"><c:out value="selected"/></c:if>>Left side</option>
					
						<option value="Other" <c:if test="${autoaccident.vehicle_hit=='Other'}"><c:out value="selected"/></c:if>>Other</option>
					
				  </select><span class="err"><form:errors path="Autoaccident.vehicle_hit"></form:errors></span>
				  </td><td width="10%"></tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Description of other vehicle: </td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="smlinput_txtbx1" id="other_vehicle_make" name="other_vehicle_make" value="${autoaccident.other_vehicle_make }" onInput="return validatename4()"; style="width:70px" value="${autoaccident.other_vehicle_make }" /><span id="other_vehicle_makeerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.other_vehicle_make"></form:errors></span>
				  <input type="text" class="smlinput_txtbx1" id="other_vehicle_model" name="other_vehicle_model" onInput="return validatename5()";style="width:70px" value="${autoaccident.other_vehicle_model }" /><span id="other_vehicle_modelerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.other_vehicle_model"></form:errors></span>
				  <input type="text" class="smlinput_txtbx1" id="other_vehicle_year" maxlength="4" name="other_vehicle_year" style="width:70px" onkeypress="return validate(event)"; value="${autoaccident.other_vehicle_year }"/><span id="other_vehicle_yearerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.other_vehicle_year"></form:errors></span>
				  </td><td width="10%"></tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was your car stopped at the time of the accident? </td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="carstopped" value="Yes" class="input_txt"  <c:if test="${autoaccident.carstopped=='Yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="carstopped" value="No" class="input_txt"  <c:if test="${autoaccident.carstopped=='No'}"><c:out value="Checked"/></c:if>>No<span class="err"><form:errors path="Autoaccident.carstopped"></form:errors></span></td>
				  <td width="10%"></tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>If you were the driver, was your foot on the brake? </td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="driverposition" value="Yes" class="input_txt" <c:if test="${autoaccident.driverposition=='Yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="driverposition" value="No" class="input_txt" <c:if test="${autoaccident.driverposition=='No'}"><c:out value="Checked"/></c:if>>No <span class="err"><form:errors path="Autoaccident.driverposition"></form:errors></span></td>
				 <td width="10%"> </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was your vehicle moving at time of impact?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="vehicle_moving_time" value="Yes" class="input_txt" <c:if test="${autoaccident.vehicle_moving_time=='Yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="vehicle_moving_time" value="No" class="input_txt" <c:if test="${autoaccident.vehicle_moving_time=='No'}"><c:out value="Checked"/></c:if>>No<span class="err"><form:errors path="Autoaccident.vehicle_moving_time"></form:errors></span></td>
				  <td width="10%"></tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was car:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="wascar" class="input_cmbbx1">
					<option  value="Slowing Down" <c:if test="${autoaccident.wascar=='Slowing Down'}"><c:out value="selected"/></c:if> >Slowing Down</option>
					<option value="Gaining Speed" <c:if test="${autoaccident.wascar=='Gaining Speed'}"><c:out value="selected"/></c:if>>Gaining Speed</option>
					<option value="Steady Rate of Speed" <c:if test="${autoaccident.wascar=='Steady Rate of Speed'}"><c:out value="selected"/></c:if>>Steady Rate of Speed</option>	
				  </select><span class="err"><form:errors path="Autoaccident.wascar"></form:errors></span>
				  </td><td width="10%">
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Estimated rate of speed?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="speed" placeholder="MPH"  name="estimated_rate" maxlength="18"  onkeypress="return validate(event)"; value="${autoaccident.estimated_rate }"/><br><span id="speederror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.estimated_rate"></form:errors></span>
				  </td><td width="10%">
				  </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Time of day:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="time_of_day" class="input_cmbbx1">
					<option  value="DayLight" <c:if test="${autoaccident.time_of_day=='DayLight'}"><c:out value="selected"/></c:if>>DayLight</option>
					<option value="Dawn" <c:if test="${autoaccident.time_of_day=='Dawn'}"><c:out value="selected"/></c:if>>Dawn</option>
					<option value="Dusk" <c:if test="${autoaccident.time_of_day=='Dusk'}"><c:out value="selected"/></c:if>>Dusk</option>
					<option value="Dark" <c:if test="${autoaccident.time_of_day=='Dark'}"><c:out value="selected"/></c:if>>Dark</option>
					<option value="Unknown" <c:if test="${autoaccident.time_of_day=='Unknown'}"><c:out value="selected"/></c:if>>Unknown</option>	
				  </select><span class="err"><form:errors path="Autoaccident.time_of_day"></form:errors></span>
				  </td><td width="10%">
				  </tr> 
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Road conditions:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="road_conditions" class="input_cmbbx1" id="road" onchange="if (this.value=='Select Conditions'){this.form['conditions'].style.visibility='visible'}else {this.form['conditions'].style.visibility='hidden'};">
					<option  value="Select Conditions" <c:if test="${autoaccident.road_conditions=='Select Conditions'}"><c:out value="selected"/></c:if> >Select Conditions</option>
					
					<option value="Dry" <c:if test="${autoaccident.road_conditions=='Dry'}"><c:out value="selected"/></c:if>>Dry</option>
					<option value="Damp" <c:if test="${autoaccident.road_conditions=='Damp'}"><c:out value="selected"/></c:if>>Damp</option>
					<option value="Wet" <c:if test="${autoaccident.road_conditions=='Wet'}"><c:out value="selected"/></c:if>>Wet</option>
					<option value="Snow" <c:if test="${autoaccident.road_conditions=='Snow'}"><c:out value="selected"/></c:if>>Snow</option>
					<option value="Ice" <c:if test="${autoaccident.road_conditions=='Ice'}"><c:out value="selected"/></c:if>>Ice</option>	
					<option value="Other" <c:if test="${autoaccident.road_conditions=='Other'}"><c:out value="selected"/></c:if>>Other</option>
					<option value="Unknown" <c:if test="${autoaccident.road_conditions=='Unknown'}"><c:out value="selected"/></c:if>>Unknown</option>
				  </select><span class="err"><form:errors path="Autoaccident.road_conditions"></form:errors></span>
				  
				
				  </td>
				   <td><input type="text"name="conditions" id="conditions" style="visibility:hidden;" value="${autoaccident.conditions}" name="conditions" /></td>
				   
				   <script>
		 window.onload = function()
{
if (document.getElementById("road").value == "Select Conditions") {
document.getElementById("conditions").style.visibility = 'visible';


}
else  {
document.getElementById("conditions").style.visibility = 'hidden';


}
}
</script> 
				  </tr> 
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Head Restraints:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="head_restraints" class="input_cmbbx1">
					<option value="Up" <c:if test="${autoaccident.head_restraints=='Up'}"><c:out value="selected"/></c:if> >Up</option>
					<option value="Down" <c:if test="${autoaccident.head_restraints=='Down'}"><c:out value="selected"/></c:if>>Down</option>
					<option value="Dont Know" <c:if test="${autoaccident.head_restraints=='Dont Know'}"><c:out value="selected"/></c:if>>Don't Know</option>	
				  </select><span class="err"><form:errors path="Autoaccident.head_restraints"></form:errors></span>
				  </td><td width="10%">
				  </tr>
				  
				  </table>
				  <table align="right">
				  <tr>
				  <td id="tblbtn"><br><input type="button" id="btnNext" class="submit_btn" value="Next" onmouseover="checkValid(event);"/><br></td>
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
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Seat position after accident:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="seatpos_after_accident" class="input_cmbbx1">
					<option  value="Was Altered" <c:if test="${autoaccident.seatpos_after_accident=='Was Altered'}"><c:out value="selected"/></c:if>>Was Altered</option>
					<option value="Was Not Altered" <c:if test="${autoaccident.seatpos_after_accident=='Was Not Altered'}"><c:out value="selected"/></c:if>>Was Not Altered</option>
					<option value="Dont know" <c:if test="${autoaccident.seatpos_after_accident=='Dont Know'}"><c:out value="selected"/></c:if>>Don't know</option>
				  </select><span class="err"><form:errors path="Autoaccident.seatpos_after_accident"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Seat after the accident:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="seat_after_accident" class="input_cmbbx1">
					<option  value="Broken" <c:if test="${autoaccident.seat_after_accident=='Broken'}"><c:out value="selected"/></c:if> >Broken</option>
					<option value="Not Broken" <c:if test="${autoaccident.seat_after_accident=='Not Broken'}"><c:out value="selected"/></c:if>>Not Broken</option>
				  </select><span class="err"><form:errors path="Autoaccident.seat_after_accident"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Lap seat belt:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="lap_seat_belt" class="input_cmbbx1">
					<option  value="Worn" <c:if test="${autoaccident.lap_seat_belt=='Worn'}"><c:out value="selected"/></c:if>>Worn</option>
					<option value="Not Worn" <c:if test="${autoaccident.lap_seat_belt=='Not Worn'}"><c:out value="selected"/></c:if>>Not Worn</option>
					<option value="Dont Know" <c:if test="${autoaccident.lap_seat_belt=='Dont Know'}"><c:out value="selected"/></c:if>>Don't know</option>
				  </select><span class="err"><form:errors path="Autoaccident.lap_seat_belt"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Shoulder seat belt:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="shoulder_seat_belt" class="input_cmbbx1">
					<option  value="Worn" <c:if test="${autoaccident.shoulder_seat_belt=='Worn'}"><c:out value="selected"/></c:if>>Worn</option>
					<option value="Not Worn" <c:if test="${autoaccident.shoulder_seat_belt=='Not Worn'}"><c:out value="selected"/></c:if>>Not Worn</option>
					<option value="Dont Know" <c:if test="${autoaccident.shoulder_seat_belt=='Dont Know'}"><c:out value="selected"/></c:if>>Don't know</option>
				  </select><span class="err"><form:errors path="Autoaccident.shoulder_seat_belt"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Air bag deployed:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="airbag" value="Yes" class="input_txt" id="airbagcheck" onclick="toggle()"<c:if test="${autoaccident.airbag=='Yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="airbag" value="No" class="input_txt" onclick="toggle()"<c:if test="${autoaccident.airbag=='No'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				 <span class="err"><form:errors path="Autoaccident.airbag"></form:errors></span>  <select name="wereyou" class="input_cmbbx1" id="mytext"  style='display:none'>
				 <option  value="Struck" <c:if test="${autoaccident.wereyou=='Struck'}"><c:out value="selected"/></c:if>>Struck</option>
				 <option value="Not Struck" <c:if test="${autoaccident.wereyou=='Not Struck'}"><c:out value="selected"/></c:if>>Not Struck</option>
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
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Body position at time of accident:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="body_position" class="input_cmbbx1" id="bodyposition" onchange="if (this.value=='Other'){this.form['body_position1'].style.visibility='visible'}else {this.form['body_position1'].style.visibility='hidden'};">
					<option  value="Good" <c:if test="${autoaccident.body_position=='Good'}"><c:out value="selected"/></c:if>>Good</option>
					<option value="Forward" <c:if test="${autoaccident.body_position=='Forward'}"><c:out value="selected"/></c:if>>Forward</option>
					<option value="Leaning" <c:if test="${autoaccident.body_position=='Leaning'}"><c:out value="selected"/></c:if>>Leaning</option>
					<option value="Other" <c:if test="${autoaccident.body_position=='Other'}"><c:out value="selected"/></c:if>>Other</option>
					<option value="Unknown" <c:if test="${autoaccident.body_position=='Unknown'}"><c:out value="selected"/></c:if>>Unknown</option>
				  </select><span class="err"><form:errors path="Autoaccident.body_position"></form:errors></span>
				   <input type="text" name="body_position1" id="body_position1" value="${autoaccident.body_position1}" style="visibility:hidden;" min="4" maxlength="32" onInput="return validatename(id)";/><span class="err"><form:errors path="Autoaccident.body_position1"></form:errors></span>
				  </td>
				  </tr>
				 <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Head Position:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="head_position" class="input_cmbbx1" id="headposition" onchange="if (this.value=='Other'){this.form['head_position1'].style.visibility='visible'}else {this.form['head_position1'].style.visibility='hidden'};">
					<option  value="Forward" <c:if test="${autoaccident.head_position=='Forward'}"><c:out value="selected"/></c:if>>Forward</option>
					<option value="Left" <c:if test="${autoaccident.head_position=='Left'}"><c:out value="selected"/></c:if>>Left</option>
					<option value="Right" <c:if test="${autoaccident.head_position=='Right'}"><c:out value="selected"/></c:if>>Right</option>
					<option value="Up" <c:if test="${autoaccident.head_position=='Up'}"><c:out value="selected"/></c:if>>Up</option>
					<option value="Down" <c:if test="${autoaccident.head_position=='Down'}"><c:out value="selected"/></c:if>>Down</option>
					<option value="Other" <c:if test="${autoaccident.head_position=='Other'}"><c:out value="selected"/></c:if>>Other</option>
					<option value="Unknown" <c:if test="${autoaccident.head_position=='Unknown'}"><c:out value="selected"/></c:if>>Unknown</option>
				  </select><span class="err"><form:errors path="Autoaccident.head_position"></form:errors></span>
				   <input type="text" name="head_position1" id="head_position1" min="4" maxlength="32" onInput="return validatename(id)"; value="${autoaccident.head_position1}" style="visibility:hidden;" /><span class="err"><form:errors path="Autoaccident.head_position1"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Hands on wheel:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="hands_on_wheel" value="One" class="input_txt" <c:if test="${autoaccident.hands_on_wheel=='One'}"><c:out value="Checked"/></c:if>>One&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="hands_on_wheel" value="Two" class="input_txt" <c:if test="${autoaccident.hands_on_wheel=='Two'}"><c:out value="Checked"/></c:if>>Two<span class="err"><form:errors path="Autoaccident.hands_on_wheel"></form:errors></span></td>
				  </tr>
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Aware of crash:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="aware_of_crash" class="input_cmbbx1" >
					<option value="Aware" <c:if test="${autoaccident.aware_of_crash=='Aware'}"><c:out value="selected"/></c:if> >Aware</option>
					<option value="Surprised" <c:if test="${autoaccident.aware_of_crash=='Surprised'}"><c:out value="selected"/></c:if>>Surprised</option>
				  </select><span class="err"><form:errors path="Autoaccident.aware_of_crash"></form:errors></span>
				  </td>
				  </tr>
				   <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Did you brace yourself?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="brace" value="Yes" class="input_txt" id="bracecheck" onclick="toggle1();"<c:if test="${autoaccident.brace=='Yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="brace" value="No" class="input_txt" onclick="toggle1()"<c:if test="${autoaccident.brace=='No'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.brace"></form:errors></span>
				<select name="ifyes" class="input_cmbbx1" id="mybrace"  style='display:none'>
				  <option  value="Braced With Arms" <c:if test="${autoaccident.ifyes=='Braced With Arms'}"><c:out value="selected"/></c:if>>Braced With Arms</option>
				  <option value="Braced With Legs" <c:if test="${autoaccident.ifyes=='Braced With Legs'}"><c:out value="selected"/></c:if>>Braced with legs</option>
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
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Did this cause further injury?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="further_injury" value="Yes" class="input_txt" id="furthercheck" onclick="toggle2();" <c:if test="${autoaccident.further_injury=='Yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="further_injury" value="No" class="input_txt" onclick="toggle2();" <c:if test="${autoaccident.further_injury=='No'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.further_injury"></form:errors></span>
				  <textarea rows='3' cols='35' id="injury"  style='display:none' min="4" maxlength="32" onInput="return validatename(id)"; placeholder="Please explain" name="injurytext">${autoaccident.injurytext}</textarea><br><span class="err" id="injuryerror"><form:errors path="Autoaccident.injurytext"></form:errors></span>
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
				  <select name="patient_body" class="input_cmbbx1" id="patientbody" onchange="if (this.value=='Other'){this.form['patient_body1'].style.visibility='visible'}else {this.form['patient_body1'].style.visibility='hidden'};">
					<option value="Jolted" <c:if test="${autoaccident.patient_body=='Jolted'}"><c:out value="selected"/></c:if>>Jolted</option>
					<option value="Thrown About" <c:if test="${autoaccident.patient_body=='Thrown About'}"><c:out value="selected"/></c:if>>Thrown About</option>
					<option value="Stunned" <c:if test="${autoaccident.patient_body=='Stunned'}"><c:out value="selected"/></c:if>>Stunned</option>
					<option value="Dazed" <c:if test="${autoaccident.patient_body=='Dazed'}"><c:out value="selected"/></c:if>>Dazed</option>
					<option value="Whipped" <c:if test="${autoaccident.patient_body=='Whipped'}"><c:out value="selected"/></c:if>>Whipped</option>
					<option value="Slammed" <c:if test="${autoaccident.patient_body=='Slammed'}"><c:out value="selected"/></c:if>>Slammed</option>
					<option value="Other" <c:if test="${autoaccident.patient_body=='Other'}"><c:out value="selected"/></c:if>>Other</option>
				  </select><span class="err"><form:errors path="Autoaccident.patient_body"></form:errors></span>
				  <input type="text" name="patient_body1" id="patient_body1" onInput="return validatename(id)"; min="4" maxlength="32" value="${autoaccident.patient_body1}" style="visibility:hidden;"/><span class="err"><form:errors path="Autoaccident.patient_body1"></form:errors></span>
				  </td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Did patient's body strike interior of car? </td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="body_strike"  value="Yes" id="yeschecked" onchange="change44();" class="input_txt"  onclick="strike();" <c:if test="${autoaccident.body_strike=='Yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="body_strike" id="body_strike" value="No" id="nochecked" onchange="change44();" class="input_txt"  onclick="strike();"<c:if test="${autoaccident.body_strike=='No'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.body_strike"></form:errors></span>
				  </td>
				  </tr>
				  
				  
				<div id="hit" style="display:block;">
				<!-- <div class="contentbox"> -->
				
				  
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My head hit:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="head_hit" name="head_hit" min="4" maxlength="32" onInput="return validatename(id);" value="${autoaccident.head_hit}"/>
				  <br/><span id="head_hiterror" class="err"></span></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Right Left Shoulder hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlshoulder_hit" name="rlshoulder_hit" min="4" maxlength="32" onInput="return validatename(id)" value="${autoaccident.rlshoulder_hit }" />
				  <br/><span id="rlshoulder_hiterror" class="err"></span></td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Right Left Hip hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlhip_hit" name="rlhip_hit" value="${autoaccident.rlhip_hit }" min="4" maxlength="32" onInput="return validatename(id);"/>
				  <br/><span id="rlhip_hiterror" class="err"></span></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Right Left Knee hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlknee_hit" name="rlknee_hit" value="${autoaccident.rlknee_hit }" min="4" maxlength="32" onInput="return validatename(id);"/>
				  <br/><span id="rlknee_hiterror" class="err"></span></td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Chest hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="chest_hit" name="chest_hit" value="${autoaccident.chest_hit }" onInput="return validatename(id);" min="4" maxlength="32"/>
				  <br/><span id="chest_hiterror" class="err"></span></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Right Left Arm hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlarm_hit" name="rlarm_hit" value="${autoaccident.rlarm_hit }" onInput="return validatename(id);" min="4" maxlength="32"/>
				  <br/><span id="rlarm_hiterror" class="err"></span></td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Right Left Leg hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlleg_hit" name="rlleg_hit" value="${autoaccident.rlleg_hit }" onInput="return validatename(id);" min="4" maxlength="32"/>
				  <br/><span class="err" id="rlleg_hiterror"></span></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My Other body part hit:</td>
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
				  <td valign="middle" align="left" class="input_txt" width = "54%"><span class="err">* </span>Were you wearing glasses at the time of the accident? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="wearing_glasses" value="Yes" class="input_txt" <c:if test="${autoaccident.wearing_glasses=='Yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="wearing_glasses" value="No" class="input_txt" <c:if test="${autoaccident.wearing_glasses=='No'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.wearing_glasses"></form:errors></span>
			      </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Were the glasses still in place after impact?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="glasses_impact" value="Yes" class="input_txt" <c:if test="${autoaccident.glasses_impact=='Yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="glasses_impact" value="No" class="input_txt" <c:if test="${autoaccident.glasses_impact=='No'}"><c:out value="Checked"/></c:if> >No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.glasses_impact"></form:errors></span>
			      </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Unconscious:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="unconscious" id="unconscious" value="Yes" class="input_txt" id="unconcheck"onclick="toggle4();" <c:if test="${autoaccident.unconscious=='Yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="unconscious" value="No" class="input_txt" onclick="toggle4();" <c:if test="${autoaccident.unconscious=='No'}"><c:out value="Checked"/></c:if> >No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.unconscious"></form:errors></span>
			      <input type="text" class="input_txtbx1" id="uncon" name="uncon"  placeholder="If yes, unconscious for (minutes) " onkeypress="return validate(event)";  maxlength="18"; value="${autoaccident.uncon }"  style='display:none'>  <br><span id="unconerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.uncon"></form:errors></span></input>
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
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Damage to the other car:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="damage" class="input_cmbbx1" >
					<option ed="ed" value="Minimal" <c:if test="${autoaccident.damage=='Minimal'}"><c:out value="selected"/></c:if>>Minimal</option>
					<option value="Moderate" <c:if test="${autoaccident.damage=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
					<option value="Major" <c:if test="${autoaccident.damage=='Major'}"><c:out value="selected"/></c:if>>Major</option>
					<option value="Totaled" <c:if test="${autoaccident.damage=='Totaled'}"><c:out value="selected"/></c:if>>Totaled</option>
				  </select><span class="err"><form:errors path="Autoaccident.damage"></form:errors></span>
				  </td>
				  </tr> 
				 </table>
				  <table align="right">
				  <tr>
				  	<td><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  /></td>
				  	<td>&nbsp;&nbsp;</td>
				  <td id="tblbtn2"><br><input type="button" id="btnNext" class="submit_btn" value="Next" onmouseover="checkValid2(event);"/><br></td>
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
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was anyone cited?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="was_anyone_cited" value="Yes" class="input_txt" <c:if test="${autoaccident.was_anyone_cited=='Yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="was_anyone_cited" value="No" class="input_txt" <c:if test="${autoaccident.was_anyone_cited=='No'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.was_anyone_cited"></form:errors></span>
			      </td>
				  </tr> 
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Who?</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="who" class="input_cmbbx1" >
					<option  value="You" <c:if test="${autoaccident.who=='You'}"><c:out value="selected"/></c:if>>You</option>
					<option value="Other Driver" <c:if test="${autoaccident.who=='Other Driver'}"><c:out value="selected"/></c:if>>Other Driver</option>
				  </select><span class="err"><form:errors path="Autoaccident.who"></form:errors></span>
				  </td><td width="680" ></td>
				  </tr> 
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>After Accident,I had the following:</td>
				 <td valign="top" align="left" class="input_txt" style="width: 886px; ">
				 <input type="checkbox" id="headache" name="headache" value="Headache" <c:if test="${autoaccident.headache=='Headache'}"><c:out value="Checked"/></c:if> >Headache&nbsp;&nbsp;&nbsp;&nbsp; 
				 <input type="checkbox" id="dizziness" name="dizziness" value="Dizziness" <c:if test="${autoaccident.dizziness=='Dizziness'}"><c:out value="Checked"/></c:if> >Dizziness&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" id="nausea" name="nausea" value="Nausea" <c:if test="${autoaccident.nausea=='Nausea'}"><c:out value="Checked"/></c:if> >Nausea&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" id="confusion" name="confusion" value="Confusion" <c:if test="${autoaccident.confusion=='Confusion'}"><c:out value="Checked"/></c:if> >Confusion&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" id="disorientation"name="disorientation" value="Disorientation" <c:if test="${autoaccident.disorientation=='Disorientation'}"><c:out value="Checked"/></c:if> >Disorientation&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" id="neckpain" name="neckpain" value="Neck Pain" <c:if test="${autoaccident.neckpain=='Neck Pain'}"><c:out value="Checked"/></c:if> >Neck pain&nbsp;&nbsp;&nbsp;&nbsp;
				 
				 <input type="checkbox" id="otherpain" name="otherpain" value="Other"   <c:if test="${autoaccident.otherpain=='Other'}" ><c:out value="Checked"/></c:if> onchange="if (this.value=='Other'){this.form['otherpaintext'].style.visibility='visible'}else {this.form['otherpaintext'].style.visibility='hidden'};" >Other&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="text" class="input_txtbx1" id="otherpaintext" name="otherpaintext"  placeholder="If other" value="${autoaccident.otherpaintext}" style="visibility:hidden;"/>
				 
				<br> <span id="afteraccidenterror" style="color: red;font-style:italic;">
				 </td><form:errors path="Autoaccident.after_accident"></form:errors></span>
				 
				 <script>
		 window.onload = function()
{
if (document.getElementById("otherpain").value == "Other") {
document.getElementById("otherpaintext").style.visibility = 'visible';


}
else  {
document.getElementById("otherpaintext").style.visibility = 'hidden';


}
}
</script>                    	
				 
				 </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Symptoms first appeared:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="first_symptom" class="input_cmbbx1" id="firstsymptom"  onchange='Checksymptom();'>
					<option  value="Immediately" <c:if test="${autoaccident.first_symptom=='Immediately'}"><c:out value="selected"/></c:if> >Immediately</option>
					<option value="Hours After The Accident" <c:if test="${autoaccident.first_symptom=='Hours After The Accident'}"><c:out value="selected"/></c:if> >Hours After The Accident</option>
					<option value="The Next Day" <c:if test="${autoaccident.first_symptom=='The Next Day'}"><c:out value="selected"/></c:if> >The Next Day</option>
					<option value="Days" <c:if test="${autoaccident.first_symptom=='Days'}"><c:out value="selected"/></c:if> >Days</option>
				  </select><span class="err"><form:errors path="Autoaccident.first_symptom"></form:errors></span>
				 <input type="text" name="symptom" id="symptom" value="${autoaccident.symptom}"style="visibility:hidden;"/>
				  </td><td width="680" ></td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>After the accident i went:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="after_accident" class="input_cmbbx1"  id="afteraccident" onchange="if (this.value=='Other'){this.form['accident'].style.visibility='visible'}else {this.form['accident'].style.visibility='hidden'};">
					<option  value="Hospital" <c:if test="${autoaccident.after_accident=='Hospital'}"><c:out  value="selected"/></c:if>  >Hospital</option>
					<option value="Work" <c:if test="${autoaccident.after_accident=='Work'}"><c:out  value="selected"/></c:if> >Work</option>
					<option value="Home" <c:if test="${autoaccident.after_accident=='Home'}"><c:out  value="selected"/></c:if> >Home</option>
					<option value="Family" <c:if test="${autoaccident.after_accident=='Family'}"><c:out  value="selected"/></c:if> >Family</option>
					<option value="Physician" <c:if test="${autoaccident.after_accident=='Physician'}"><c:out  value="selected"/></c:if> >Physician</option>
					<option value="Other" <c:if test="${autoaccident.after_accident=='Other'}"><c:out  value="selected"/></c:if> >Other</option>
				  </select><span class="err"><form:errors path="Autoaccident.after_accident"></form:errors></span>
				 <input type="text" name="accident" id="accident" value="${autoaccident.accident}" style="visibility:hidden;"/><span class="err"><form:errors path="Autoaccident.accident"></form:errors></span>
				  </td>
				  
				  <script>
		 window.onload = function()
{
if (document.getElementById("afteraccident").value == "Other") {
document.getElementById("accident").style.visibility = 'visible';


}
else  {
document.getElementById("accident").style.visibility = 'hidden';


}
}
</script>                    	
				  
				  </tr> 
				  
				   
				   <!-- <div id="accident_hospital" style='display:none' > -->
				  	
				   <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"  width = "17.5%" >&nbsp;&nbsp;&nbsp;Name of the hospital:</td><!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
				  
				 
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
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>How did you get to the  &nbsp;&nbsp;hospital?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td><td>
				  <select name="hospitalget" class="input_cmbbx1" id="hospitalget" onchange="if (this.value=='Other'){this.form['hospital1'].style.visibility='visible'}else {this.form['hospital1'].style.visibility='hidden'};">
					<option  value="Ambulance" <c:if test="${autoaccident.hospitalget=='Ambulance'}"><c:out value="selected"/></c:if>>Ambulance</option>
					<option value="Other" <c:if test="${autoaccident.hospitalget=='Other'}"><c:out value="selected"/></c:if>>Other</option>
				   </select>
				 <input type="text" name="hospital1" id="hospital1" value="${autoaccident.hospital1}" style="visibility:hidden;"/>
				  </td>
				  </tr> 
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt" style="width: 465px; ">&nbsp;&nbsp;&nbsp;What body parts were X-rayed,what &nbsp;&nbsp;&nbsp;&nbsp;treatment was given?
				  </td><td>
				  <input type="text" class="input_txtbx1" id="xray" name="xray" value="${autoaccident.xray }" onInput="return validatename(id)";min="4" maxlength="32"/>
				  </td>
				  <td ></td>
				 
				  </tr>
				   <tr class="row1">
                  <td valign="middle"  align="left" class="input_txt">&nbsp;&nbsp;&nbsp;What did they tell you was wrong?<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
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
				  
				  
				  