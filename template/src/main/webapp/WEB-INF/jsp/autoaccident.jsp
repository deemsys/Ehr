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
<script>
$(window).load(function(){
/*  $("#claimno").keyup(function() {
	 $("#claimnoerror").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	//var intRegex = /^\d+$/;
	//if(intRegex.test($(this).val())||$(this).val()=='') 
	//{
		//var $in = $(this).val();		 
//	}
	//else if($(this).val()!='')
		//{
		
	//	$("#claimnoerror").html('Kindly enter a number!!!!');
		//}
//}).keydown(function() {
  //oldValue = $(this).val();
//}) */
$("#speed").keyup(function() {
	 $("#speederror").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	var intRegex = /^\d+$/;
	if(intRegex.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#speederror").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
  oldValue = $(this).val();
})


</script>

<script>

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
<!-- <script>

	function checkSubmit()
	{
	
	document.getElementById("vehicleerr").innerHTML="";
		if(isNaN(document.getElementById("vehicle").value))
		{
		document.getElementById("vehicleerr").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		}
		document.getElementById("vehiclerr").innerHTML="";
		if(isNaN(document.getElementById("vehicl").value))
		{
		document.getElementById("vehiclerr").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		}
		
		}
</script> -->

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
function checkValid1(e)
{

	
	document.getElementById("injuryerror").innerHTML=""; 
	if(document.getElementById("injury").value!="")
	{
		if(document.getElementById("injury").value.length<4 || document.getElementById("injury").value.length>=32)
	    {
	    	
	    	document.getElementById("injuryerror").innerHTML="Should be of length 4 to 32";
	    	
	       
	   
	    	  document.getElementById('tblbtn1').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid1(event);'>";
	    }
	    
	    }
	 else
		 {
		  document.getElementById("injuryerror").innerHTML="";
		  document.getElementById('btnvisible').style.visibility='hidden';
		  //document.getElementById('btnNext').style.visibility='visible';
		  document.getElementById('tblbtn1').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid1(event);'>";		 
		 }
		
}
</script>
 <script>
function checkValid2(e){
	
	/* document.getElementById("head_hiterror").innerHTML="";
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
    } */
	
	document.getElementById("estimateddamageerror").innerHTML="";
	if(document.getElementById("estimateddamage").value=="")
	{
	document.getElementById("estimateddamageerror").innerHTML="Required Field Should not be Empty";
	document.getElementById('tblbtn2').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid2(event);'>";
	return false;
	}
	else
	 {
	  document.getElementById("estimateddamageerror").innerHTML="";
	  document.getElementById('btnvisible1').style.visibility='hidden';
	  document.getElementById('btnNext').style.visibility='visible';
	  document.getElementById('tblbtn2').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='NEXT' onmouseover='checkValid2(event);'>";		 		 
	 }
}

</script>
<script>
function checknext(){
	
	document.getElementById("claimnoerror").innerHTML=""; 
	 if(document.getElementById("claimno").value=="")
	 {
	  document.getElementById("claimnoerror").innerHTML="Required field should not be empty";
	  return false;
	 }
	 document.getElementById("claimnoerror").innerHTML="";
	 if(document.getElementById("claimno").value.length<9 )
	 {
	 	
	 	document.getElementById("claimnoerror").innerHTML="Claim Number should be of length 9";
	 	
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
}


</script>
<script>
function checknext1(){
	
	document.getElementById("injuryerror").innerHTML="";
	if(document.getElementById("injury").value!="")
	{
    if(document.getElementById("injury").value.length<4 || document.getElementById("injury").value.length>=32)
    {
    	
    	document.getElementById("injuryerror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    }
}

</script>

<script>
function checknext2(){
	
	document.getElementById("head_hiterror").innerHTML="";
	if(document.getElementById("head_hit").value!="")
	{
    if(document.getElementById("head_hit").value.length<4 || document.getElementById("head_hit").value.length>=32)
    {
    	
    	document.getElementById("head_hiterror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    }
	
	document.getElementById("rlshoulder_hiterror").innerHTML="";
	if(document.getElementById("rlshoulder_hit").value!="")
	{
    if(document.getElementById("rlshoulder_hit").value.length<4 || document.getElementById("rlshoulder_hit").value.length>=32)
    {
    	
    	document.getElementById("rlshoulder_hiterror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    }
	
	
	document.getElementById("rlhip_hiterror").innerHTML="";
	if(document.getElementById("rlhip_hit").value!="")
	{
    if(document.getElementById("rlhip_hit").value.length<4 || document.getElementById("rlhip_hit").value.length>=32)
    {
    	
    	document.getElementById("rlhip_hiterror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    }
	
	document.getElementById("rlknee_hiterror").innerHTML="";
	if(document.getElementById("rlknee_hit").value!="")
	{
    if(document.getElementById("rlknee_hit").value.length<4 || document.getElementById("rlknee_hit").value.length>=32)
    {
    	
    	document.getElementById("rlknee_hiterror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    }
	
	document.getElementById("chest_hiterror").innerHTML="";
	if(document.getElementById("chest_hit").value!="")
	{
    if(document.getElementById("chest_hit").value.length<4 || document.getElementById("chest_hit").value.length>=32)
    {
    	
    	document.getElementById("chest_hiterror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    }
	
	
	document.getElementById("rlarm_hiterror").innerHTML="";
	if(document.getElementById("rlarm_hit").value!="")
	{
    if(document.getElementById("rlarm_hit").value.length<4 || document.getElementById("rlarm_hit").value.length>=32)
    {
    	
    	document.getElementById("rlarm_hiterror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    }
	
	document.getElementById("rlleg_hiterror").innerHTML="";
	if(document.getElementById("rlleg_hit").value!="")
	{
    if(document.getElementById("rlleg_hit").value.length<4 || document.getElementById("rlleg_hit").value.length>=32)
    {
    	
    	document.getElementById("rlleg_hiterror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    }
	
	document.getElementById("otherpart_hiterror").innerHTML="";
	if(document.getElementById("otherpart_hit").value!="")
	{
    if(document.getElementById("otherpart_hit").value.length<4 || document.getElementById("otherpart_hit").value.length>=32)
    {
    	
    	document.getElementById("otherpart_hiterror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    }
	
	document.getElementById("estimateddamageerror").innerHTML="";
	if(document.getElementById("estimateddamage").value=="")
	{
	document.getElementById("estimateddamageerror").innerHTML="Required Field Should not be Empty";
	
	return false;
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
		 if(document.getElementById("claimno").value.length<9 )
		 {
		 	
		 	document.getElementById("claimnoerror").innerHTML="Claim Number should be of length 9";
		 	
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
			
			/* document.getElementById("injuryerror").innerHTML="";
			if(document.getElementById("injury").value!="")
			{
		    if(document.getElementById("injury").value.length<4 || document.getElementById("injury").value.length>=32)
		    {
		    	
		    	document.getElementById("injuryerror").innerHTML="Should be of length 4 to 32";
		    	
		        return false;
		    }
		    }
			
			document.getElementById("head_hiterror").innerHTML="";
			if(document.getElementById("head_hit").value!="")
			{
		    if(document.getElementById("head_hit").value.length<4 || document.getElementById("head_hit").value.length>=32)
		    {
		    	
		    	document.getElementById("head_hiterror").innerHTML="Should be of length 4 to 32";
		    	
		        return false;
		    }
		    }
			
			document.getElementById("rlshoulder_hiterror").innerHTML="";
			if(document.getElementById("rlshoulder_hit").value!="")
			{
		    if(document.getElementById("rlshoulder_hit").value.length<4 || document.getElementById("rlshoulder_hit").value.length>=32)
		    {
		    	
		    	document.getElementById("rlshoulder_hiterror").innerHTML="Should be of length 4 to 32";
		    	
		        return false;
		    }
		    }
			
			
			document.getElementById("rlhip_hiterror").innerHTML="";
			if(document.getElementById("rlhip_hit").value!="")
			{
		    if(document.getElementById("rlhip_hit").value.length<4 || document.getElementById("rlhip_hit").value.length>=32)
		    {
		    	
		    	document.getElementById("rlhip_hiterror").innerHTML="Should be of length 4 to 32";
		    	
		        return false;
		    }
		    }
			
			document.getElementById("rlknee_hiterror").innerHTML="";
			if(document.getElementById("rlknee_hit").value!="")
			{
		    if(document.getElementById("rlknee_hit").value.length<4 || document.getElementById("rlknee_hit").value.length>=32)
		    {
		    	
		    	document.getElementById("rlknee_hiterror").innerHTML="Should be of length 4 to 32";
		    	
		        return false;
		    }
		    }
			
			document.getElementById("chest_hiterror").innerHTML="";
			if(document.getElementById("chest_hit").value!="")
			{
		    if(document.getElementById("chest_hit").value.length<4 || document.getElementById("chest_hit").value.length>=32)
		    {
		    	
		    	document.getElementById("chest_hiterror").innerHTML="Should be of length 4 to 32";
		    	
		        return false;
		    }
		    }
			
			
			document.getElementById("rlarm_hiterror").innerHTML="";
			if(document.getElementById("rlarm_hit").value!="")
			{
		    if(document.getElementById("rlarm_hit").value.length<4 || document.getElementById("rlarm_hit").value.length>=32)
		    {
		    	
		    	document.getElementById("rlarm_hiterror").innerHTML="Should be of length 4 to 32";
		    	
		        return false;
		    }
		    }
			
			document.getElementById("rlleg_hiterror").innerHTML="";
			if(document.getElementById("rlleg_hit").value!="")
			{
		    if(document.getElementById("rlleg_hit").value.length<4 || document.getElementById("rlleg_hit").value.length>=32)
		    {
		    	
		    	document.getElementById("rlleg_hiterror").innerHTML="Should be of length 4 to 32";
		    	
		        return false;
		    }
		    }
			
			document.getElementById("otherpart_hiterror").innerHTML="";
			if(document.getElementById("otherpart_hit").value!="")
			{
		    if(document.getElementById("otherpart_hit").value.length<4 || document.getElementById("otherpart_hit").value.length>=32)
		    {
		    	
		    	document.getElementById("otherpart_hiterror").innerHTML="Should be of length 4 to 32";
		    	
		        return false;
		    }
		    }
			 */
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
  
	document.getElementById("cityerror").innerHTML="";
	if(document.getElementById("hosname").value!="")
	{
    if(document.getElementById("hosname").value.length<4 || document.getElementById("hosname").value.length>=32)
    {
    	
    	document.getElementById("cityerror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    }
	
	
	document.getElementById("xrayerror").innerHTML="";
	if(document.getElementById("xray").value!="")
	{
    if(document.getElementById("xray").value.length<4 || document.getElementById("xray").value.length>=32)
    {
    	
    	document.getElementById("xrayerror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    }
	
	
	document.getElementById("wrongerror").innerHTML="";
	if(document.getElementById("wrong").value!="")
	{
    if(document.getElementById("wrong").value.length<4 || document.getElementById("wrong").value.length>=32)
    {
    	
    	document.getElementById("wrongerror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    }
	
	
	document.getElementById("otherpart_hiterror").innerHTML="";
	if(document.getElementById("otherpart_hit").value!="")
	{
    if(document.getElementById("otherpart_hit").value.length<4 || document.getElementById("otherpart_hit").value.length>=32)
    {
    	
    	document.getElementById("otherpart_hiterror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    }
  }
  
  
  </script>
<script>
  function printPage(id)
  {
	
	        document.getElementById('print').style.visibility = 'hidden';
	        document.getElementById('print1').style.visibility = 'hidden';
	        document.getElementById('print2').style.visibility = 'hidden';
	        document.getElementById('print3').style.visibility = 'hidden';
	        document.getElementById('btnNext').style.visibility = 'hidden';
	        //document.getElementById('btnNext1').style.visibility = 'hidden';
	        document.getElementById('btnPrevious').style.visibility = 'hidden';
	        //document.getElementById('btnNext2').style.visibility = 'hidden';
	       // document.getElementById('btnPrevious2').style.visibility = 'hidden';
	        //document.getElementById('btnPrevious3').style.visibility = 'hidden';
	        document.getElementById('saveid').style.visibility = 'hidden';
		  
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
          document.getElementById('print1').style.visibility = 'visible';
     document.getElementById('print2').style.visibility = 'visible';
     document.getElementById('print3').style.visibility = 'visible';
     document.getElementById('btnNext').style.visibility = 'visible';
     document.getElementById('btnPrevious').style.visibility = 'visible';
     //document.getElementById('btnNext1').style.visibility = 'visible';
    // document.getElementById('btnPrevious2').style.visibility = 'visible';
   //  document.getElementById('btnNext2').style.visibility = 'visible';
     //document.getElementById('btnPrevious3').style.visibility = 'visible';
     document.getElementById('saveid').style.visibility = 'visible';
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
<body>
<div id="tabs" class="tabs-bottom" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">2</a></li>
    <li><a href="#tabs-3">3</a></li>
    <li><a href="#tabs-4">4</a></li>
  </ul>
  <div class="tabs-spacer"></div>
   <form action="autoaccident" method="POST"> 
   <c:choose>
    		<c:when test="${empty auto}">
  <div id="tabs-1">
 

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
        	<div id="block1">
	            <div class="headings altheading">
	         <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	              <h2>Auto Accident</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
  				<td align="left" valign="top" width="50%" style="padding-right:25px;">
  				<table cellpadding="0" cellspacing="0" border="0" width="100%">
                 <tr class="row1">
                  <td valign="middle" align="left" class="input_txt" style="width: 306px; "><span class="err">* </span>What is the Claim Number of your accident?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="claimno" placeholder="35W899112" name="claimnumber" maxlength="9" onInput="return validateusername()";/><br><span id="claimnoerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.claimnumber"></form:errors></span>
				  <br><span class="err"></span>
				  </td>

				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Adjuster's Name:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="adjustersname" name="adjustersname" min="4" maxlength="32" onInput="return validatename(id)";/><br><span id="adjustersnameerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.adjustersname"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Who gave you the estimate?</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="estimate" class="input_cmbbx1">
					<option selected="selected" value="your insurance" >Your Insurance company</option>
					<option value="other insurance">Other Driver's Insurance company</option>
					<option value="body shop">Body shop</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Were you the:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="seating" class="input_cmbbx1">
					<option selected="selected" value="driver" >Driver</option>
					<option value="front seat">Front seat Passenger</option>
					<option value="back seat">Back seat Passenger</option>
					<option value="on job">On the job at the time of accident</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was anyone else in the car with you during the accident?Who?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="companion" name="companion" min="4" maxlength="32" onInput="return validatename1()"; /><br><span id="companionerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.companion"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Description of vehicle you were in:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="smlinput_txtbx1" id="vehicle_make" name="vehicle_make"  onInput="return validatename2()"; style="width:70px" placeholder="make"/><span id="vehicle_makeerror" style="color: red;font-style:italic;"></span>
				  <input type="text" class="smlinput_txtbx1" id="vehicle_model" name="vehicle_model" onInput="return validatename3()"; style="width:70px" placeholder="model" /><span id="vehicle_modelerror" style="color: red;font-style:italic;"></span>
				  <input type="text" class="smlinput_txtbx1" id="vehicle_year" name="vehicle_year" style="width:70px" maxlength="4" onkeypress="return validate(event)"; placeholder="year"/><span  id="vehicle_yearerror" style="color: red;font-style:italic;"></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Portion of the vehicle hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="vehicle_hit" class="input_cmbbx1">
					<option selected="selected" value="right front" >Right Front</option>
					<option value="left front">Left Front</option>
					<option value="right rear">Right Rear</option>
					<option value="left rear">Left Rear</option>
					<option value="right side">Right side</option>
					<option value="left side">Left side</option>
					<option value="Other">Other</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Description of other vehicle: </td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="smlinput_txtbx1" id="other_vehicle_make" name="other_vehicle_make"  onInput="return validatename4()";style="width:70px" placeholder="    make" /><span id="other_vehicle_makeerror" style="color: red;font-style:italic;"></span>
				  <input type="text" class="smlinput_txtbx1" id="other_vehicle_model" name="other_vehicle_model" onInput="return validatename5()"; style="width:70px" placeholder="     model" /><span id="other_vehicle_modelerror" style="color: red;font-style:italic;"></span>
				  <input type="text" class="smlinput_txtbx1" id="other_vehicle_year" maxlength="4" name="other_vehicle_year" style="width:70px" onkeypress="return validate(event)"; placeholder="year"/><span class="err" id="other_vehicle_yearerror" style="color: red;font-style:italic;"></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was you car stopped at the time of accident?</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="carstopped" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="carstopped" value="no" class="input_txt">No</td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>If you were the driver, was your foot on the brake? </td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="driverposition" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="driverposition" value="no" class="input_txt">No</td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was your vehicle moving at time of impact?</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="vehicle_moving_time" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="vehicle_moving_time" value="no" class="input_txt">No</td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was Car:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="wascar" class="input_cmbbx1">
					<option selected="selected" value="slowing down" >Slowing Down</option>
					<option value="gaining speed">Gaining Speed</option>
					<option value="steady rate of speed">Steady Rate of Speed</option>	
				  </select>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Estimated rate of Speed:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="speed" name="estimated_rate" maxlength="18" placeholder="MPH" onkeypress="return validate(event)"; /><br><span id="speederror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.estimated_rate"></form:errors></span>
			<br>
			<span class="err" id="speederror"></span>
  </td>
				  </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Time of day:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="time_of_day" class="input_cmbbx1">
					<option selected="selected" value="day light" >DayLight</option>
					<option value="dawn">Dawn</option>
					<option value="dusk">Dusk</option>
					<option value="dark">Dark</option>
					<option value="unknown">Unknown</option>	
				  </select>
				  </td>
				  </tr> 
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Road Conditions:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="road_conditions" class="input_cmbbx1" onchange='CheckConditions(this.value);'>
					<option selected="selected" value="select conditions" >Select conditions</option>
					<option value="dry">Dry</option>
					<option value="damp">Damp</option>
					<option value="wet">Wet</option>
					<option value="snow">Snow</option>
					<option value="ice">Ice</option>	
					<option value="other">Other</option>
					<option value="unknown">Unknown</option>
				  </select>
				  <input type="text" name="conditions" id="conditions" min="4" maxlength="32" style='display:none'/>
				  </td>
				  </tr> 
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Head Restraints:</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="head_restraints" class="input_cmbbx1">
					<option selected="selected" value="up" >Up</option>
					<option value="down">Down</option>
					<option value="do_no">Don't know</option>	
				  </select>
				  </td>
				  </tr>
				  
				  </table>
				   <table align="right">
				               <tr>
				  <td id="tblbtn"><input type="button" id="btnNext" class="submit_btn" value="Next" onmouseover="checkValid(event);"/></td></tr>
                    <!--  <td><br><input type="button" id="btnNext" class="submit_btn" value="Next" /><br></td> -->
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
				  <div id="tabs-2">
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
        	<div id="block2">
	            <div class="headings altheading">
	          <img  src="resources/images/print.png" id="print1" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block2');" >
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
					<option selected="selected" value="was_altered" >Was Altered</option>
					<option value="was_not_altered">Was Not Altered</option>
					<option value="dontknow">Don't know</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Seat after the accident:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="seat_after_accident" class="input_cmbbx1">
					<option selected="selected" value="broken" >Broken</option>
					<option value="notbroken">Not Broken</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Lap seat belt:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="lap_seat_belt" class="input_cmbbx1">
					<option selected="selected" value="worn" >Worn</option>
					<option value="not_worn">Not Worn</option>
					<option value="dont_know">Don't know</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Shoulder seat belt:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="shoulder_seat_belt" class="input_cmbbx1">
					<option selected="selected" value="worns" >Worn</option>
					<option value="notworn">Not Worn</option>
					<option value="donno">Don't know</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Air bag deployed:</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" id="yes" name="airbag" value="yes" class="input_txt" checked="true" onclick="toggle('show')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" id="no" name="airbag" value="no" class="input_txt" onclick="toggle('hide')">No&nbsp;&nbsp;&nbsp;
				<span id="yeserror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.airbag"></form:errors></span> <select name="wereyou" class="input_cmbbx1" id="mytext">
				 <option selected="selected" value="struck" >Struck</option>
				 <option value="notstruck">Not Struck</option>
				  </select>
				 </td>
				  </tr>
				  <!-- <tr class="row2" id="mytext">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If yes, were you</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="wereyou" class="input_cmbbx1" id="mytext">
					<option selected="selected" value="struck" >Struck</option>
					<option value="notstruck">Not Struck</option>
				  </select>
				  </td>
				  </tr> -->
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Body position at time of accident:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="body_position" class="input_cmbbx1" id="body_position" onchange='Checkposition(this.value);'>
					<option selected="selected" value="good" >Good</option>
					<option value="forward">Forward</option>
					<option value="leaning">Leaning</option>
					<option value="others">Other</option>
					<option value="un_known">Unknown</option>
				  </select>
				   <input type="text" name="body_position1" id="body_position1" min="4" maxlength="32" onInput="return validatename(id)"; style='display:none'/>
				  </td>
				  </tr>
				 <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Head position:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="head_position" class="input_cmbbx1" id="head_position" onchange='CheckHeadposition(this.value);'>
					<option selected="selected" value="forwardpos" >Forward</option>
					<option value="left">Left</option>
					<option value="right">Right</option>
					<option value="up_pos">Up</option>
					<option value="down_pos">Down</option>
					<option value="others">Other</option>
					<option value="unknown_pos">Unknown</option>
				  </select>
				   <input type="text" name="head_position1" id="head_position1" min="4" maxlength="32" onInput="return validatename(id)"; style='display:none'/>
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Hands on wheel:</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="hands_on_wheel" value="one" class="input_txt" checked="true">One&nbsp;&nbsp;&nbsp;<input type="radio" name="hands_on_wheel" value="two" class="input_txt">Two</td>
				  </tr>
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Aware of crash:</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="aware_of_crash" class="input_cmbbx1">
					<option selected="selected" value="aware" >Aware</option>
					<option value="surprised">Surprised</option>
				  </select>
				  </td>
				  </tr>
				   <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Did you brace yourself? </td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" id="yes1" name="brace" value="yes" class="input_txt" checked="true" onclick="toggle1('show1')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="brace" id="no1" value="no" class="input_txt" onclick="toggle1('hide1')">No&nbsp;&nbsp;&nbsp;
				 <span id="yes1error" style="color: red;font-style:italic;"><form:errors path="Autoaccident.brace"></form:errors></span> <select name="ifyes" class="input_cmbbx1" id="mybrace">
				  <option selected="selected" value="bracearms" >Braced with arms</option>
				  <option value="bracelegs">Braced with legs</option>
				  </select>
<form:errors path="PatientDetails.insurance_phone"></form:errors>
				  </td>
				  </tr>
				 <!--  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If yes</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="ifyes" class="input_cmbbx1">
					<option selected="selected" value="bracearms" >Braced with arms</option>
					<option value="bracelegs">Braced with legs</option>
				  </select>
				  </td>
				  </tr>  -->
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Did this cause further injury: </td>
				  <td valign="middle" align="left" class="input_txt"><input type="radio" name="further_injury" value="yes" class="input_txt" checked="true" onclick="toggle2('show2')">Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="further_injury" value="no" class="input_txt" onclick="toggle2('hide2')">No&nbsp;&nbsp;&nbsp;
				  <textarea rows='3' cols='35' id="injury" name="injurytext" onInput="return validatename(id)"; min="4" maxlength="32" placeholder="Please explain"></textarea>
				  </td>
				  </tr>
				  
				  
				  </table>
				  	<table align="right">
				                  	 <tr>
				  <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  />&nbsp;</td>
                  <td>&nbsp;&nbsp;</td>
                  
                  <td id="tblbtn1" ><br><input type="button" id="btnNext" class="submit_btn" value="Next" onmouseover="checkValid1(event);"/><br></td>
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
        	<div id="block3">
	            <div class="headings altheading">
	            <img  src="resources/images/print.png" id="print2" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block3');" >
	              <h2>Auto Accident</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
  				<td align="left" valign="top"  >
  				<table cellpadding="0" cellspacing="0" border="0" width="100%" >
  				<tr class="row1">
  				<td valign="middle" align="left" class="input_txt" width="590"><h6 >During / After crash</h6></td>
  				<td></td>
  				</tr>
  				<tr class="row2">
                <td valign="middle" align="left" class="input_txt" width="590"><span class="err">* </span>Patient's body:</td>
				 <td valign="top" align="left" class="input_txt" width="50%">
				  <select name="patient_body" class="input_cmbbx1" id="patient_body" onchange='CheckPatientposition(this.value);'>
					<option selected="selected" value="jolted" >Jolted</option>
					<option value="thrown_about">Thrown About</option>
					<option value="stunned">Stunned</option>
					<option value="dazed">Dazed</option>
					<option value="whipped">Whipped</option>
					<option value="slammed">Slammed</option>
					<option value="otherbody">Other</option>
				  </select>
				  <input type="text" name="patient_body1" id="patient_body1" onInput="return validatename(id)"; min="4" maxlength="32" style='display:none'/>
				  </td><td width="55"></td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Did Patient's Body Strike Interior Of Car:</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="body_strike" value="yes" class="input_txt" checked="true" onchange="change44();">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="body_strike" id="body_strike" value="no" class="input_txt" onchange="change44();">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  </table>
				<span id="nohit" style="display:block;">
				<!-- <div class="contentbox"> -->
				<table cellpadding="0" cellspacing="0" border="0" width="100%" >
				  
				  <tr class="row2">
                  <td valign="middle" align="left" width="590" class="input_txt">&nbsp;&nbsp;&nbsp;My head hit:</td>
				  <td valign="top" align="left" class="input_txt" width="50%">
				  <input type="text" class="input_txtbx1" id="head_hit" name="head_hit" min="4" maxlength="32" onInput="return validatename(id)";/><span id="head_hiterror" style="color: red;font-style:italic;"> </span>
				  </td><td width="55"></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My right left shoulder hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlshoulder_hit"  min="4" maxlength="32" name="rlshoulder_hit" onInput="return validatename(id)"; /><span id="rlshoulder_hiterror" style="color: red;font-style:italic;"> </span>
				  </td><td width="55"></td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My right left hip hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlhip_hit"  min="4" maxlength="32" name="rlhip_hit" onInput="return validatename(id)"; /><span id="rlhip_hiterror" style="color: red;font-style:italic;"> </span>
				  </td><td width="55"></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My right left knee hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlknee_hit" min="4" maxlength="32" name="rlknee_hit" onInput="return validatename(id)"; /><span id="rlknee_hiterror" style="color: red;font-style:italic;"> </span>
				  </td><td width="55"></td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My chest hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="chest_hit" name="chest_hit" min="4" maxlength="32" onInput="return validatename(id)"; /><span id="chest_hiterror" style="color: red;font-style:italic;"> </span>
				  </td><td width="55"></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My right left arm hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlarm_hit" name="rlarm_hit"  min="4" maxlength="32" onInput="return validatename(id)";/><span id="rlarm_hiterror" style="color: red;font-style:italic;"> </span>
				  </td><td width="55"></td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My right left leg hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="rlleg_hit" name="rlleg_hit" min="4" maxlength="32" onInput="return validatename(id)";/><span id="rlleg_hiterror" style="color: red;font-style:italic;"> </span>
				  </td><td width="55"></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;&nbsp;My other body part hit:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="otherpart_hit" name="otherpart_hit" min="4" maxlength="32" onInput="return validatename(id)"; /><span id="otherpart_hiterror" style="color: red;font-style:italic;"> </span>
				  </td><td width="55"></td></span>
				  </tr>
				 
				  
				 
				   </td>
				  </tr> <tr class="row2">
				  <td  valign="middle" align="left" class="input_txt" style="width: 492px; "><span class="err">* </span>Were you wearing glasses at the time of accident?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="wearing_glasses" value="yes" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="wearing_glasses" value="no" class="input_txt" >No&nbsp;&nbsp;&nbsp;
			      </td><td width="55"></td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Were the glasses still in place after impact? </td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="glasses_impact" value="yes" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="glasses_impact" value="no" class="input_txt" >No&nbsp;&nbsp;&nbsp;
			      </td><td width="55"></td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Unconscious:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="unconscious" value="yes" class="input_txt" checked="true" onclick="toggle4('show4')" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="unconscious" value="no" class="input_txt" onclick="toggle4('hide4')" >No&nbsp;&nbsp;&nbsp;
			      <input type="text" class="input_txtbx1" id="uncon" name="uncon" placeholder="If yes, unconscious for (minutes) " onkeypress="return validate(event)";  maxlength="18" style="width: 222px; "/> 
			      </td><td width="55"></td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Estimated amount of property damage: </td>
				  <td valign="top" align="left" class="input_txt">$
				  <input type="text" class="input_txtbx1" id="estimateddamage" name="estimated_amount" maxlength="18" onkeypress="return validate1(event)";/><br><span id="estimateddamageerror" style="color: red;font-style:italic;"><form:errors path="Autoaccident.estimated_amount"></form:errors></span>
				 <br><span class="err" id="estimateddamageerror"></span>
				  </td><td width="55"></td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Damage to the other car: </td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="damage" class="input_cmbbx1" >
					<option selected="selected" value="minimal" >Minimal</option>
					<option value="moderate">Moderate</option>
					<option value="major">Major</option>
					<option value="totaled">Totaled</option>
				  </select>
				  </td><td width="55"></td>
				  </tr> 
				 </table>
				 	<table align="right">
				                  	 <tr>
				  <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  />&nbsp;</td>
                  <td>&nbsp;&nbsp;</td>
                  <td > <br><input type="button" id="btnNext" class="submit_btn" value="Next"  /><br>
                   
                  </td>
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
        	<div id="block4">
	            <div class="headings altheading">
	            <img  src="resources/images/print.png" id="print3" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block4');" >
	              <h2>Auto Accident</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
				 <tr class="row1">
				  <td  valign="middle" align="left" class="input_txt"><span class="err">* </span>Was anyone cited? </td>
				  <td valign="top" align="left" class="input_txt" width="60%">
				  <input type="radio" name="was_anyone_cited" value="yes" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="was_anyone_cited" value="no" class="input_txt" >No&nbsp;&nbsp;&nbsp;
			      </td> <td width="680" ></td>
				  </tr> 
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Who?</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="who" class="input_cmbbx1" >
					<option selected="selected" value="you" >You</option>
					<option value="other_driver">Other Driver</option>
				  </select>
				  </td> <td width="680" ></td>
				  </tr> 
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>After accident, I had the following: </td>
				 <td valign="top" align="left" class="input_txt" width="20%" style="width: 671px; ">
				 
				 <input type="checkbox" id="headache" name="headache" value="headache">Headache&nbsp;&nbsp;&nbsp;&nbsp; 
				 <input type="checkbox" id="dizziness" name="dizziness" value="dizziness">Dizziness&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" id="nausea"name="nausea" value="nausea">Nausea&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" id="confusion" name="confusion" value="confusion">Confusion&nbsp;&nbsp;&nbsp;&nbsp;
				<span id="afteraccidenterror" style="color: red;font-style:italic;"></span>
				<span class="err"><form:errors path="Autoaccident.after_accident"></form:errors></span>
				 </td> <td width="680" ></td>
				  <tr class="row1"> <td valign="middle" align="left" class="input_txt"><span class="err"></span></td>
				 <td valign="top" align="left" class="input_txt" width="20%">
				  <input type="checkbox" id="disorientation" name="disorientation" value="disorientation">Disorientation&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" id="neckpain" name="neckpain" value="neckpain">Neck pain&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" id="otherpain" name="otherpain" value="otherpain" id="otherpaincheck" onclick="this.form.otherplain1.style.visibility = this.checked? 'visible' : 'hidden'">Other&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="text" class="input_txtbx1" id="otherplain1" name="otherpaintext" placeholder="If other" style="visibility:hidden"/>
				<span class="err"><form:errors path="Autoaccident.after_accident"></form:errors></span></td> <td width="680" ></td>
				 </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Symptoms first appeared: </td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="first_symptom" class="input_cmbbx1"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="immediately" >Immediately</option>
					<option value="hours">hours after the accident</option>
					<option value="next_day">The next day</option>
					<option value="days">days</option>
				  </select>
				 <input type="text" name="symptom" id="symptom"  min="4" maxlength="32"style='display:none'/>
				  </td> <td width="680" ></td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>After the accident I went </td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="after_accident" class="input_cmbbx1"  onchange='Check(this.value);'>
					<option selected="selected" value="hospital" >Hospital</option>
					<option value="work">Work</option>
					<option value="home">Home</option>
					<option value="family">Family</option>
					<option value="physician">Physician</option>
					<option value="otheracc">Other</option>
				  </select>
				 <input type="text" name="accident" id="accident" style='display:none' min="4" maxlength="32"/>
				  </td> <td width="680" ></td>
				  </tr> 
				  
				  <!-- <div > -->
				 
				   <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"  width = "19.5%" >&nbsp;&nbsp;Name of the hospital:</td><!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
				  
				 
				  <td><input type="text" align="left" class="input_txtbx1" onInput="return validatename(id)"; id="hosname" name="hosname" min="4" maxlength="32"/><span id="hosnameerror" style="color: red;font-style:italic;"> </span></td>
				  <td width="680" ></td>
				
				  </tr>
				   <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;City:</td><td><!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
				  
				  <input type="text" class="input_txtbx1" id="city" name="city"  onInput="return validatename(id)"; min="4" maxlength="32"/><span id="cityerror" style="color: red;font-style:italic;"> </span>
				  </td>
				  </tr>
				   <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">&nbsp;&nbsp;Length of stay:</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  
				  <td>
				  <input type="text" class="input_txtbx1" id="staylength"  name="staylength" onkeypress="return validate(event)";/>
				  <br><span class="err" id="staylengtherror"></span>
				  </td>
				  <td></td>
				  
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>How did you get to the hospital?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td><td>
				  <select name="hospitalget" class="input_cmbbx1" id="hospitalget" onchange='Checkhospital(this.value);'>
					<option selected="selected" value="ambulance" >Ambulance</option>
					<option value="other hos">Other</option>
				  </select>
				 <input type="text" name="hospital1" id="hospital1" style='display:none' min="4" maxlength="32" onInput="return validatename(id)";/>
				  </td>
				  </tr> 
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt" style="width: 503px; ">&nbsp;&nbsp;What body parts were x-rayed, what treatment was given?
				  </td><td>
				  <input type="text" class="input_txtbx1" id="xray" onInput="return validatename(id)";min="4" maxlength="32" name="xray" /><span id="xrayerror" style="color: red;font-style:italic;"> </span>
				  </td>
				  <td ></td>
				 
				  </tr>
				   <tr class="row1">
                  <td valign="middle"  align="left" class="input_txt">&nbsp;&nbsp;What did they tell you was wrong?<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
				  </td><td>
				  <input type="text" class="input_txtbx1" id="wrong" onInput="return validatename(id)"; min="4" maxlength="32" name="wrong" /><span id="wrongerror" style="color: red;font-style:italic;"> </span>
				  </td>
				  
				  </tr>
				   
				  </table>
				  
				 <!--  </div> -->
				  
				  </div>
				  </div>
				  </td>
				  </tr>
				  </table>
				
				</c:when>
				<c:otherwise>
				 <div id="tabs-1">
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
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>What is the claim number of your accident</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="hidden" class="input_txtbx1" id="inp_id" value="${auto.patient_number}" name="patient_number" />
				  <input type="text" class="input_txtbx1" id="claimno" name="claimnumber" value="${auto.claimnumber }" /><span class="err"><form:errors path="Autoaccident.claimnumber"></form:errors></span>
				  <br>
				  <span class="err" id="claimnoerror"></span>
				  </td>

				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Adjuster's name</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="adjustersname" value="${auto.adjustersname }" /><span class="err"><form:errors path="Autoaccident.adjustersname"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Who gave you the estimate</td>
				  <td valign="top" align="left" class="input_txt">
				  <select  name="estimate" class="input_cmbbx1">
					<option  value="your insurance" <c:if test="${auto.estimate=='your insurance'}"><c:out value="selected"/></c:if>>Your Insurance company</option>
					<option value="other insurance" <c:if test="${auto.estimate=='other insurance'}"><c:out value="selected"/></c:if>>Other Driver's Insurance company</option>
					<option value="body shop" <c:if test="${auto.estimate=='body shop'}"><c:out value="selected"/></c:if>>Body shop</option>
				  </select><span class="err"><form:errors path="Autoaccident.estimate"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Were you the</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="seating" class="input_cmbbx1">
					<option  value="driver" <c:if test="${auto.seating=='driver'}"><c:out value="selected"/></c:if>>Driver</option>
					<option value="front seat" <c:if test="${auto.seating=='front seat'}"><c:out value="selected"/></c:if>>Front seat Passenger</option>
					<option value="back seat" <c:if test="${auto.seating=='back seat'}"><c:out value="selected"/></c:if>>Back seat Passenger</option>
					<option value="on job" <c:if test="${auto.seating=='on job'}"><c:out value="selected"/></c:if>>On the job at the time of accident</option>
				  </select><span class="err"><form:errors path="Autoaccident.seating"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was anyone else in the car with you during the accident?who?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="companion" value="${auto.companion }"/><span class="err"><form:errors path="Autoaccident.companion"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Description of vehicle you were in</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="vehicle_make" style="width:70px" value="${auto.vehicle_make }"/><span class="err"><form:errors path="Autoaccident.vehicle_make"></form:errors></span>
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="vehicle_model" style="width:70px" value="${auto.vehicle_model }" /><span class="err"><form:errors path="Autoaccident.vehicle_model"></form:errors></span>
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="vehicle_year" style="width:70px"  value="${auto.vehicle_year }"/><span class="err"><form:errors path="Autoaccident.vehicle_year"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Portion of the vehicle hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="vehicle_hit" class="input_cmbbx1">
					<option  value="right front" <c:if test="${auto.vehicle_hit=='right front'}"><c:out value="selected"/></c:if>>Right Front</option>
					<option value="left front" <c:if test="${auto.vehicle_hit=='left front'}"><c:out value="selected"/></c:if>>Left Front</option>
					<option value="right rear" <c:if test="${auto.vehicle_hit=='right rear'}"><c:out value="selected"/></c:if>>Right Rear</option>
					<option value="left rear" <c:if test="${auto.vehicle_hit=='left rear'}"><c:out value="selected"/></c:if>>Left Rear</option>
					<option value="right side" <c:if test="${auto.vehicle_hit=='right side'}"><c:out value="selected"/></c:if>>Right side</option>
					<option value="left side" <c:if test="${auto.vehicle_hit=='left side'}"><c:out value="selected"/></c:if>>Left side</option>
				  </select><span class="err"><form:errors path="Autoaccident.vehicle_hit"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Description of other vehicle </td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="other_vehicle_make" style="width:70px" value="${auto.other_vehicle_make }" /><span class="err"><form:errors path="Autoaccident.other_vehicle_make"></form:errors></span>
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="other_vehicle_model" style="width:70px" value="${auto.other_vehicle_model }" /><span class="err"><form:errors path="Autoaccident.other_vehicle_model"></form:errors></span>
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="other_vehicle_year" style="width:70px" value="${auto.other_vehicle_year }"/><span class="err"><form:errors path="Autoaccident.other_vehicle_year"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was you car stopped at the time of accident</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="carstopped" value="yes" class="input_txt"  <c:if test="${auto.carstopped=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="carstopped" value="no" class="input_txt"  <c:if test="${auto.carstopped=='no'}"><c:out value="Checked"/></c:if>>No<span class="err"><form:errors path="Autoaccident.carstopped"></form:errors></span></td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If you were the driver,was your foot on the brake</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="driverposition" value="yes" class="input_txt" <c:if test="${auto.driverposition=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="driverposition" value="no" class="input_txt" <c:if test="${auto.driverposition=='no'}"><c:out value="Checked"/></c:if>>No<span class="err"><form:errors path="Autoaccident.driverposition"></form:errors></span></td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was your vehicle moving at time of impact</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="vehicle_moving_time" value="yes" class="input_txt" <c:if test="${auto.vehicle_moving_time=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="vehicle_moving_time" value="no" class="input_txt" <c:if test="${auto.vehicle_moving_time=='no'}"><c:out value="Checked"/></c:if>>No<span class="err"><form:errors path="Autoaccident.vehicle_moving_time"></form:errors></span></td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was car</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="wascar" class="input_cmbbx1">
					<option  value="slowing down" <c:if test="${auto.wascar=='slowing down'}"><c:out value="selected"/></c:if> >Slowing Down</option>
					<option value="gaining speed" <c:if test="${auto.wascar=='gaining speed'}"><c:out value="selected"/></c:if>>Gaining Speed</option>
					<option value="steady rate of speed" <c:if test="${auto.wascar=='steady rate of speed'}"><c:out value="selected"/></c:if>>Steady Rate of Speed</option>	
				  </select><span class="err"><form:errors path="Autoaccident.wascar"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Estimated rate of speed</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="speed" name="estimated_rate" value="${auto.estimated_rate }"/><span class="err"><form:errors path="Autoaccident.estimated_rate"></form:errors></span>
				<br><span class="err" id="speederror">
				</span>
				  </td>
				  </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Time of day</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="time_of_day" class="input_cmbbx1">
					<option  value="day light" <c:if test="${auto.time_of_day=='day light'}"><c:out value="selected"/></c:if>>DayLight</option>
					<option value="dawn" <c:if test="${auto.time_of_day=='dawn'}"><c:out value="selected"/></c:if>>Dawn</option>
					<option value="dusk" <c:if test="${auto.time_of_day=='dusk'}"><c:out value="selected"/></c:if>>Dusk</option>
					<option value="dark" <c:if test="${auto.time_of_day=='dark'}"><c:out value="selected"/></c:if>>Dark</option>
					<option value="unknown" <c:if test="${auto.time_of_day=='unknown'}"><c:out value="selected"/></c:if>>Unknown</option>	
				  </select><span class="err"><form:errors path="Autoaccident.time_of_day"></form:errors></span>
				  </td>
				  </tr> 
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Road conditions</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="road_conditions" class="input_cmbbx1" id="road" onclick='CheckConditions();'>
					<option  value=" conditions" <c:if test="${auto.road_conditions==' conditions'}"><c:out value="selected"/></c:if> > conditions</option>
					<option value="dry" <c:if test="${auto.road_conditions=='dry'}"><c:out value="selected"/></c:if>>Dry</option>
					<option value="damp" <c:if test="${auto.road_conditions=='damp'}"><c:out value="selected"/></c:if>>Damp</option>
					<option value="wet" <c:if test="${auto.road_conditions=='wet'}"><c:out value="selected"/></c:if>>Wet</option>
					<option value="snow" <c:if test="${auto.road_conditions=='snow'}"><c:out value="selected"/></c:if>>Snow</option>
					<option value="ice" <c:if test="${auto.road_conditions=='ice'}"><c:out value="selected"/></c:if>>Ice</option>	
					<option value="other" <c:if test="${auto.road_conditions=='other'}"><c:out value="selected"/></c:if>>Other</option>
					<option value="unknown" <c:if test="${auto.road_conditions=='unknown'}"><c:out value="selected"/></c:if>>Unknown</option>
				  </select><span class="err"><form:errors path="Autoaccident.road_conditions"></form:errors></span>
				  
				
				  </td>
				   <td><input type="text"name="conditions" id="conditions" style='display:none' value="${auto.conditions}" name="conditions" /><span class="err"><form:errors path="Autoaccident.conditions"></form:errors></span></td>
				  </tr> 
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Head Restraints</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="head_restraints" class="input_cmbbx1">
					<option value="up" <c:if test="${auto.head_restraints=='up'}"><c:out value="selected"/></c:if> >Up</option>
					<option value="down" <c:if test="${auto.head_restraints=='down'}"><c:out value="selected"/></c:if>>Down</option>
					<option value="do_no" <c:if test="${auto.head_restraints=='do_no'}"><c:out value="selected"/></c:if>>Don't know</option>	
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
				  </div>
				  </div>
				  <div id="tabs-2">
				  <div id="right_content">
<!-- <form action="auto" method="POST"> -->

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
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Seat position after accident</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="seatpos_after_accident" class="input_cmbbx1">
					<option  value="was_altered" <c:if test="${auto.seatpos_after_accident=='was_altered'}"><c:out value="selected"/></c:if>>Was Altered</option>
					<option value="was_not_altered" <c:if test="${auto.seatpos_after_accident=='was_not_altered'}"><c:out value="selected"/></c:if>>Was Not Altered</option>
					<option value="dontknow" <c:if test="${auto.seatpos_after_accident=='dontknow'}"><c:out value="selected"/></c:if>>Don't know</option>
				  </select><span class="err"><form:errors path="Autoaccident.seatpos_after_accident"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Seat after the accident</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="seat_after_accident" class="input_cmbbx1">
					<option  value="broken" <c:if test="${auto.seat_after_accident=='broken'}"><c:out value="selected"/></c:if> >Broken</option>
					<option value="notbroken" <c:if test="${auto.seat_after_accident=='notbroken'}"><c:out value="selected"/></c:if>>Not Broken</option>
				  </select><span class="err"><form:errors path="Autoaccident.seat_after_accident"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Lap Seat belt</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="lap_seat_belt" class="input_cmbbx1">
					<option  value="worn" <c:if test="${auto.lap_seat_belt=='worn'}"><c:out value="selected"/></c:if>>Worn</option>
					<option value="not_worn" <c:if test="${auto.lap_seat_belt=='not_worn'}"><c:out value="selected"/></c:if>>Not Worn</option>
					<option value="dont_know" <c:if test="${auto.lap_seat_belt=='dont_know'}"><c:out value="selected"/></c:if>>Don't know</option>
				  </select><span class="err"><form:errors path="Autoaccident.lap_seat_belt"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Shoulder Seat belt</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="shoulder_seat_belt" class="input_cmbbx1">
					<option  value="worns" <c:if test="${auto.shoulder_seat_belt=='worns'}"><c:out value="selected"/></c:if>>Worn</option>
					<option value="notworn" <c:if test="${auto.shoulder_seat_belt=='notworn'}"><c:out value="selected"/></c:if>>Not Worn</option>
					<option value="donno" <c:if test="${auto.shoulder_seat_belt=='donno'}"><c:out value="selected"/></c:if>>Don't know</option>
				  </select><span class="err"><form:errors path="Autoaccident.shoulder_seat_belt"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Air bag deployed</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="airbag" value="yes" class="input_txt" id="airbagcheck" onclick="toggle()"<c:if test="${auto.airbag=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="airbag" value="No" class="input_txt" onclick="toggle()"<c:if test="${auto.airbag=='No'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  <select name="wereyou" class="input_cmbbx1" id="mytext"  style='display:none'>
				 <option  value="struck" <c:if test="${auto.wereyou=='struck'}"><c:out value="selected"/></c:if>>Struck</option>
				 <option value="notstruck" <c:if test="${auto.wereyou=='notstruck'}"><c:out value="selected"/></c:if>>Not Struck</option>
				  </select><span class="err"><form:errors path="Autoaccident.wereyou"></form:errors></span>
				 </td>
				  </tr>
				  <!-- <tr class="row2" id="mytext">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If yes, were you</td>
				 <td valign="top" align="left" class="input_txt">
				  < name="wereyou" class="input_cmbbx1" id="mytext">
					<option ed="ed" value="struck" >Struck</option>
					<option value="notstruck">Not Struck</option>
				  </>
				  </td>
				  </tr> -->
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Body position at time of accident</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="body_position" class="input_cmbbx1" id="bodyposition" onclick='Checkposition();'>
					<option  value="good" <c:if test="${auto.body_position=='good'}"><c:out value="selected"/></c:if>>Good</option>
					<option value="forward" <c:if test="${auto.body_position=='forward'}"><c:out value="selected"/></c:if>>Forward</option>
					<option value="leaning" <c:if test="${auto.body_position=='learning'}"><c:out value="selected"/></c:if>>Leaning</option>
					<option value="others" <c:if test="${auto.body_position=='others'}"><c:out value="selected"/></c:if>>Other</option>
					<option value="un_known" <c:if test="${auto.body_position=='un_known'}"><c:out value="selected"/></c:if>>Unknown</option>
				  </select><span class="err"><form:errors path="Autoaccident.body_position"></form:errors></span>
				   <input type="text" name="body_position1" id="body_position1" value="${auto.body_position1}"style='display:none'/><span class="err"><form:errors path="Autoaccident.body_position1"></form:errors></span>
				  </td>
				  </tr>
				 <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Head position</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="head_position" class="input_cmbbx1" id="headposition"onclick='CheckHeadposition();'>
					<option  value="forwardpos" <c:if test="${auto.head_position=='forwardpos'}"><c:out value="selected"/></c:if>>Forward</option>
					<option value="left" <c:if test="${auto.head_position=='left'}"><c:out value="selected"/></c:if>>Left</option>
					<option value="right" <c:if test="${auto.head_position=='right'}"><c:out value="selected"/></c:if>>Right</option>
					<option value="up_pos" <c:if test="${auto.head_position=='up_pos'}"><c:out value="selected"/></c:if>>Up</option>
					<option value="down_pos" <c:if test="${auto.head_position=='down_pos'}"><c:out value="selected"/></c:if>>Down</option>
					<option value="others" <c:if test="${auto.head_position=='others'}"><c:out value="selected"/></c:if>>Other</option>
					<option value="unknown_pos" <c:if test="${auto.head_position=='unknown_pos'}"><c:out value="selected"/></c:if>>Unknown</option>
				  </select><span class="err"><form:errors path="Autoaccident.head_position"></form:errors></span>
				   <input type="text" name="head_position1" id="head_position1" value="${auto.head_position1}"style='display:none'/><span class="err"><form:errors path="Autoaccident.head_position1"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Hands on wheel</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="hands_on_wheel" value="one" class="input_txt" <c:if test="${auto.hands_on_wheel=='one'}"><c:out value="Checked"/></c:if>>One&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="hands_on_wheel" value="two" class="input_txt" <c:if test="${auto.hands_on_wheel=='two'}"><c:out value="Checked"/></c:if>>Two<span class="err"><form:errors path="Autoaccident.hands_on_wheel"></form:errors></span></td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Aware of crash</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="aware_of_crash" class="input_cmbbx1" >
					<option value="aware" <c:if test="${auto.aware_of_crash=='aware'}"><c:out value="selected"/></c:if> >Aware</option>
					<option value="surprised" <c:if test="${auto.aware_of_crash=='surprised'}"><c:out value="selected"/></c:if>>Surprised</option>
				  </select><span class="err"><form:errors path="Autoaccident.aware_of_crash"></form:errors></span>
				  </td>
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Did you brace yourself</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="brace" value="yes" class="input_txt" id="bracecheck" onclick="toggle1();"<c:if test="${auto.brace=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="brace" value="No" class="input_txt" onclick="toggle1()"<c:if test="${auto.brace=='No'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  <select name="ifyes" class="input_cmbbx1" id="mybrace"  style='display:none'>
				  <option  value="bracearms" <c:if test="${auto.ifyes=='bracearms'}"><c:out value="selected"/></c:if>>Braced with arms</option>
				  <option value="bracelegs" <c:if test="${auto.ifyes=='bracelegs'}"><c:out value="selected"/></c:if>>Braced with legs</option>
				  </select><span class="err"><form:errors path="Autoaccident.ifyes"></form:errors></span>
				  </td>
				  </tr>
				 <!--  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If yes</td>
				 <td valign="top" align="left" class="input_txt">
				  < name="ifyes" class="input_cmbbx1">
					<option ed="ed" value="bracearms" >Braced with arms</option>
					<option value="bracelegs">Braced with legs</option>
				  </>
				  </td>
				  </tr>  -->
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Did this cause further injury</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="further_injury" value="yes" class="input_txt" id="furthercheck" onclick="toggle2();" <c:if test="${auto.further_injury=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="further_injury" value="no" class="input_txt" onclick="toggle2();" <c:if test="${auto.further_injury=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.further_injury"></form:errors></span>
				  <textarea rows='3' cols='35' id="injury"  style='display:none' placeholder="Please explain" name="injurytext">${auto.injurytext}<span class="err"><form:errors path="Autoaccident.injurytext"></form:errors></span></textarea>
				  </td>
				  </tr>
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
				
				  </div>
				  </div>
				  <div id="tabs-3">
				   <div id="right_content">
				   <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div>
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
                <td valign="middle" align="left" class="input_txt" width="615"><span class="err">*</span>Patient's body</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="patient_body" class="input_cmbbx1" id="patientbody" onclick='CheckPatientposition();'>
					<option value="jolted" <c:if test="${auto.patient_body=='jolted'}"><c:out value="selected"/></c:if>>Jolted</option>
					<option value="thrown_about" <c:if test="${auto.patient_body=='thrown_about'}"><c:out value="selected"/></c:if>>Thrown About</option>
					<option value="stunned" <c:if test="${auto.patient_body=='stunned'}"><c:out value="selected"/></c:if>>Stunned</option>
					<option value="dazed" <c:if test="${auto.patient_body=='dazed'}"><c:out value="selected"/></c:if>>Dazed</option>
					<option value="whipped" <c:if test="${auto.patient_body=='whipped'}"><c:out value="selected"/></c:if>>Whipped</option>
					<option value="slammed" <c:if test="${auto.patient_body=='slammed'}"><c:out value="selected"/></c:if>>Slammed</option>
					<option value="otherbody" <c:if test="${auto.patient_body=='otherbody'}"><c:out value="selected"/></c:if>>Other</option>
				  </select><span class="err"><form:errors path="Autoaccident.patient_body"></form:errors></span>
				  <input type="text" name="patient_body1" id="patient_body1" value="${auto.patient_body1}"style='display:none'/><span class="err"><form:errors path="Autoaccident.patient_body1"></form:errors></span>
				  </td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Did patient's body strike interior of car</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="body_strike" value="yes" id="yeschecked" class="input_txt"  onclick="strike();" <c:if test="${auto.body_strike=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="body_strike" value="no" id="nochecked" class="input_txt"  onclick="strike();"<c:if test="${auto.body_strike=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td><span class="err"><form:errors path="Autoaccident.body_strike"></form:errors></span>
				  </tr>
				  </table>
				<div id="hit" style="display:block;">
				<!-- <div class="contentbox"> -->
				<table cellpadding="0" cellspacing="0" border="0" width="100%">
				  
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My head hit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="head_hit" value="${auto.head_hit }" />
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Right Left Shoulder hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlshoulder_hit" value="${auto.rlshoulder_hit }" />
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My Right Left Hip hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlhip_hit" value="${auto.rlhip_hit }" />
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Right Left Knee hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlknee_hit" value="${auto.rlknee_hit }" />
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My Chest hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="chest_hit" value="${auto.chest_hit }"/>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Right Left Arm hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlarm_hit" value="${auto.rlarm_hit }"/>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My Right Left Leg hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlleg_hit" value="${auto.rlleg_hit }"/>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Other body part hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="otherpart_hit" value="${auto.otherpart_hit }" />
				  </td>
				  </tr>
				  </table>
				  </div>
				  </div>
				  <!-- </td>
				  </tr> -->
				  
				  <table cellpadding="0" cellspacing="0" border="0" width="100%"> 
				  <tr class="row2">
				  <td  width="700"valign="middle" width="" align="left" class="input_txt" style="width: 598px; "><span class="err">*</span>Were you wearing glasses at the time of accident&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td width="615"valign="top" align="left" class="input_txt">
				  <input type="radio" name="wearing_glasses" value="yes" class="input_txt" <c:if test="${auto.wearing_glasses=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="wearing_glasses" value="no" class="input_txt" <c:if test="${auto.wearing_glasses=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.wearing_glasses"></form:errors></span>
			      </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Were the glasses still in place after impact</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="glasses_impact" value="yes" class="input_txt" <c:if test="${auto.glasses_impact=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="glasses_impact" value="no" class="input_txt" <c:if test="${auto.glasses_impact=='no'}"><c:out value="Checked"/></c:if> >No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.glasses_impact"></form:errors></span>
			      </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Unconscious</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="unconscious" value="yes" class="input_txt" id="unconcheck"onclick="toggle4();" <c:if test="${auto.unconscious=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="unconscious" value="no" class="input_txt" onclick="toggle4();" <c:if test="${auto.unconscious=='no'}"><c:out value="Checked"/></c:if> >No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.unconscious"></form:errors></span>
			      <input type="text" class="input_txtbx1" id="uncon" name="uncon" value="${auto.uncon}"  style='display:none' onkeypress="return validate(event)";> (minutes)</input><span class="err"><form:errors path="Autoaccident.uncon"></form:errors></span>
			      </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt">Estimated amount of property damage</td>
				  <td valign="top" align="left" class="input_txt">$
				  <input type="text" class="input_txtbx1" id="estimateddamage" name="estimated_amount" value="${auto.estimated_amount }"/>
				  <br>
				 <span class="err" id="estimateddamageerror"></span>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Damage to the other car</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="damage" class="input_cmbbx1" >
					<option ed="ed" value="minimal" <c:if test="${auto.damage=='minimal'}"><c:out value="selected"/></c:if>>Minimal</option>
					<option value="moderate" <c:if test="${auto.damage=='moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
					<option value="major" <c:if test="${auto.damage=='major'}"><c:out value="selected"/></c:if>>Major</option>
					<option value="totaled" <c:if test="${auto.damage=='totaled'}"><c:out value="selected"/></c:if>>Totaled</option>
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
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was anyone cited</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="was_anyone_cited" value="yes" class="input_txt" <c:if test="${auto.was_anyone_cited=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="was_anyone_cited" value="no" class="input_txt" <c:if test="${auto.was_anyone_cited=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Autoaccident.was_anyone_cited"></form:errors></span>
			      </td>
				  </tr> 
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Who?</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="who" class="input_cmbbx1" >
					<option  value="you" <c:if test="${auto.who=='you'}"><c:out value="selected"/></c:if>>You</option>
					<option value="other_driver" <c:if test="${auto.who=='other_driver'}"><c:out value="selected"/></c:if>>Other Driver</option>
				  </select><span class="err"><form:errors path="Autoaccident.who"></form:errors></span>
				  </td>
				  </tr> 
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>After accident,I had the following</td>
				 <td valign="top" align="left" class="input_txt">
				 <input type="checkbox" name="headache" value="headache" <c:if test="${auto.headache=='headache'}"><c:out value="Checked"/></c:if> >Headache&nbsp;&nbsp;&nbsp;&nbsp; 
				 <input type="checkbox" name="dizziness" value="dizziness" <c:if test="${auto.dizziness=='dizziness'}"><c:out value="Checked"/></c:if> >Dizziness&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="nausea" value="nausea" <c:if test="${auto.nausea=='nausea'}"><c:out value="Checked"/></c:if> >Nausea&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="confusion" value="confusion" <c:if test="${auto.confusion=='confusion'}"><c:out value="Checked"/></c:if> >Confusion&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="disorientation" value="disorientation" <c:if test="${auto.disorientation=='disorientation'}"><c:out value="Checked"/></c:if> >Disorientation&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="neckpain" value="neckpain" <c:if test="${auto.neckpain=='neckpain'}"><c:out value="Checked"/></c:if> >Neck pain&nbsp;&nbsp;&nbsp;&nbsp;
				 
				 <input type="checkbox" name="otherpain" value="other pain" id="othercheck" onclick="Other();" <c:if test="${auto.otherpain=='other pain'}"><c:out value="Checked"/></c:if> >Other&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="text" class="input_txtbx1" id="other1" name="otherpaintext"  placeholder="If other" value="${auto.otherpaintext}" style='display:none'/>
				 
				 
				 </td>
				 </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Symptoms first appeared</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="first_symptom" class="input_cmbbx1" id="firstsymptom"  onchange='Checksymptom();'>
					<option  value="immediately" <c:if test="${auto.first_symptom=='immediately'}"><c:out value="selected"/></c:if> >Immediately</option>
					<option value="hours" <c:if test="${auto.first_symptom=='hours'}"><c:out value="selected"/></c:if> >hours after the accident</option>
					<option value="next_day" <c:if test="${auto.first_symptom=='next_day'}"><c:out value="selected"/></c:if> >The next day</option>
					<option value="days" <c:if test="${auto.first_symptom=='days'}"><c:out value="selected"/></c:if> >days</option>
				  </select><span class="err"><form:errors path="Autoaccident.first_symptom"></form:errors></span>
				 <input type="text" name="symptom" id="symptom" value="${auto.symptom}"style='display:none'/>
				  </td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>After the accident I went</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="after_accident" class="input_cmbbx1"  id="afteraccident" onchange='Check(this.value);'>
					<option  value="hospital" <c:if test="${auto.after_accident=='hospital'}"><c:out  value="selected"/></c:if>  >Hospital</option>
					<option value="work" <c:if test="${auto.after_accident=='work'}"><c:out  value="selected"/></c:if> >Work</option>
					<option value="home" <c:if test="${auto.after_accident=='home'}"><c:out  value="selected"/></c:if> >Home</option>
					<option value="family" <c:if test="${auto.after_accident=='family'}"><c:out  value="selected"/></c:if> >Family</option>
					<option value="physician" <c:if test="${auto.after_accident=='physician'}"><c:out  value="selected"/></c:if> >Physician</option>
					<option value="otheracc" <c:if test="${auto.after_accident=='otheracc'}"><c:out  value="selected"/></c:if> >Other</option>
				  </select><span class="err"><form:errors path="Autoaccident.after_accident"></form:errors></span>
				 <input type="text" name="accident" id="accident" value="${auto.accident}"style='display:none'/>
				  </td>
				  </tr> 
				  </table>
				   
				   <div id="accident_hospital" style='display:none' >
				  	
				  <table cellpadding="0" cellspacing="0" border="1" width="100%">
				   <tr class="row2">
				  <td  width="60%"></td>
				 <td> <input  align="left" type="text" class="input_txtbx1" id="inp_id" name="hosname" value="${auto.hosname }"/>
				  
				  </td><td width="610" ></td><td></td>
				  </tr>
				   <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">City</td>
                 <td></td> 
                  <td>
				  
				  <input type="text" class="input_txtbx1" id="inp_id" name="city" value="${auto.city }" />
				  </td><td></td>
				  </tr>
				   <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">Length of stay</td>
				  <td></td><td>
				  <input type="text" class="input_txtbx1" id="staylength" name="staylength" value="${auto.staylength }"/>
				  <br><span class="err" id="staylengtherror"></span>
				  </td>
				 <td></td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How did you get to the hospital?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td><td></td><td>
				  <select name="hospitalget" class="input_cmbbx1" id="hospitalget"  onchange='Checkhospital(this.value);'>
					<option  value="ambulance" <c:if test="${auto.hospitalget=='ambulance'}"><c:out value="selected"/></c:if>>Ambulance</option>
					<option value="other hos" <c:if test="${auto.hospitalget=='otherhos'}"><c:out value="selected"/></c:if>>Other</option>
				   </select><span class="err"><form:errors path="Autoaccident.hospitalget"></form:errors></span>
				  
				 <input type="text" name="hospital1" id="hospital1" value="${auto.hospital1}" style='display:none'/>
				  </td><td></td>
				  </tr> 
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">What body parts were x-rayed,what treatment was given
				 <td></td><td> 
				  <input type="text" class="input_txtbx1" id="inp_id" name="xray" value="${auto.xray }"/>
				  </td>
				  <td></td>
				  
				  </tr>
				   <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">What did they tell you was wrong
				  </td><td></td>
				  <td><input type="text" class="input_txtbx1" id="inp_id" name="wrong" value="${auto.wrong }" />
				  </td>	<td></td>			  
				  </tr>				  
				  </table>
				  </div>
				  </div>
				  </div>
				  </td>
				  </tr>
				  </table>
				 <!-- <table align="right">
				  <br><tr>
				 <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous" style = "display:none" />&nbsp;</td>
                <td><input type="submit" class="submit_btn" value="Update"></td>
                <td><input type="reset" class="submit_btn" value="Cancel" onclick="window.location.href='viewautoaccident'"></td>				 
				</table>  -->
				</div>
				</c:otherwise>
				</c:choose>
				  <table align="right">
				  <br><tr>
				 <td><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  /></td>
				 <td>&nbsp;&nbsp;</td>
 
                  <td><input type="submit" class="submit_btn" id="saveid" value="Save" onclick="return checksub('this');"></td>
                  <td>&nbsp;&nbsp;</td>
                   <td><a href="viewpatient"style="color:white" id="cancelid" class="submit_btn">Cancel</a></td>
                  <td><!-- <a href="viewpatient" class="submit_btn" style="color: white">Cancel</a> --></td>
				</table> 
				</form>
				</div></div>
				
				</body>
				  <jsp:include page="footer.jsp"></jsp:include>
				</html>
				  
				  
<script type="text/javascript">
function CheckConditions(val){
 var element=document.getElementById('conditions');
 if(val=='other')
   element.style.display='table-row';
 else  
   element.style.display='none';
} 
</script>
<script type="text/javascript">
function Checkposition(val){
 var element=document.getElementById('body_position1');
 if(val=='others')
   element.style.display='table-row';
 else  
   element.style.display='none';
} 
</script>
<script type="text/javascript">
function CheckHeadposition(val){
 var element=document.getElementById('head_position1');
 if(val=='others')
   element.style.display='table-row';
 else  
   element.style.display='none';
} 
</script>
<script type="text/javascript">
function CheckPatientposition(val){
 var element=document.getElementById('patient_body1');
 if(val=='otherbody')
   element.style.display='table-row';
 else  
   element.style.display='none';
} 
</script>
<script type="text/javascript">
function toggle(value){
if(value=='show')
 document.getElementById('mytext').style.visibility='visible';
else
 document.getElementById('mytext').style.visibility='hidden';
}
</script>

<script type="text/javascript">
function toggle1(value){
if(value=='show1')
 document.getElementById('mybrace').style.visibility='visible';
else
 document.getElementById('mybrace').style.visibility='hidden';
}
</script>
<script>
function checkSubmit1()
{
document.getElementById("afteraccidenterror").innerHTML=""; 
	if( ( document.getElementById("headache").checked == false ) && ( document.getElementById("dizziness").checked == false ) && ( document.getElementById("nausea").checked == false )&& ( document.getElementById("confusion").checked == false ))

	 {
	 document.getElementById("afteraccidenterror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
}
</script>
<script type="text/javascript">
function toggle2(value){
if(value=='show2')
 document.getElementById('injury').style.visibility='visible';
else
 document.getElementById('injury').style.visibility='hidden';
}
</script>
<script type="text/javascript">
function toggle3(value){
	/* alert(value); */
	var e = document.getElementById('hit');
if(value=='show3')
 e.style.display="block";
else
 e.style.display="none";
}
function toggle3hid(value){
	/* alert(value); */
	var e = document.getElementById('nohit');
if(value=='show3')
 e.style.display="block";
else
 e.style.display="none";
}
</script>
<script type="text/javascript">
function toggle4(value){
if(value=='show4')
 document.getElementById('uncon').style.visibility='visible';
else
 document.getElementById('uncon').style.visibility='hidden';
}
</script>
<script type="text/javascript">
function Checksymptom(val){
 var element=document.getElementById('symptom');
 if(val=='hours' ||  val=='days')
   element.style.display='table-row';
 else  
   element.style.display='none';
} 
</script>

<script type="text/javascript">
function Checkhospital(val){
 var element=document.getElementById('hospital1');
 if(val=='other hos')
   element.style.display='table-row';
 else  
   element.style.display='none';
} 
</script>
<script type="text/javascript">
function Check(val){
 var element=document.getElementById('accident_hospital');
 

 var element1 = document.getElementById('accident');

 if(val=='hospital'){

   element.style.display='table-row';
   element1.style.display='none';
 }
 else if(val =='otheracc'){
	 
	 element1.style.display='table-row';
	 element.style.display='none';
 }
 else {
   element.style.display='none';
 element1.style.display='none';
 }
}
</script>

			
				  
				  
				  