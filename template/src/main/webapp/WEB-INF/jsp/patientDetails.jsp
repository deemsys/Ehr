<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<form method="POST" action="patientDetails">
 <input type="hidden" name="symptom_ajax" id="symptom_ajax">
 
 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
  <script src="resources/js/jquery.js"></script> 
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
  
  <script type="text/javascript">
function checkAjaxPost() {  
	var val=document.getElementById("type_of_accident").value;
	var element=document.getElementById('accident');

	if(val=='autoaccident')
	 {	 
		
	var username = $('#pusername').val();

	 
	 $.ajax({  
		    type: "POST",  
		    url: "/EhrApp/duties_ajax",  
		    data: "user=" + username,
		    success: function(response){  
		
		    
		    	if(response=="")
		    		{
		    		popupWindow = window.open("dutiesunderduress" ,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		    		}
		    	else
		    		{
		    		var url="editdutiesdetails?username="+document.getElementById("username").value;
		    		popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		    		}
		    
	
		    },  
		    error: function(e){  
		      alert('Error: ' + e);  
		    }  
		  });  
		}  

	 if(val=='other')
		{
			element.style.display='block';
			element.focus(); 
		}
		 else  
			  element.style.display='none';
}
</script>
  
 <script type="text/javascript">
     
	function symptompopup(id1)
	{
		var id1='symptom'+id1;
		var val1=document.getElementById(id1);
		if(val1.value =="")
			{
			alert("please enter the pain name in the field symptom");
			}
		else
			
			{
			/* var symptoms = $('#symptom'+id).val(); */
			  
			  
			  /* $.ajax({  
			    type: "POST",  
			    url: "/EhrApp/patientDetails1_ajax",  
			    data: "symptoms=" + 'symptom'+id  ,  
			    success: function(response){  
			    	
			      
			    },  
			    error: function(e){  
			      alert('Error: ' + e);  
			    }  
			  });  */ 
			 var patientid=document.getElementById("totalpoint").value;			
			 var url="quadraplevisual?patient_id="+patientid;			
			 window.open(url,'popUpWindow','resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes'); 
			}
	}	
 </script>
 
 <script type="text/javascript">

 function newpopup() {
	var val=document.getElementById("symptom");
	
	if(val.value =="")
		{
		alert("please enter the pain name in the field symptom");
		}
	else
		{
		/* var symptoms = $('#symptoms').val(); */
		  
		  
		 /*  $.ajax({  
		    type: "POST",  
		    url: "/EhrApp/patientDetails_ajax",  
		    data: "symptoms=" + symptoms  ,  
		    success: function(response){  
		    	
		      
		    },  
		    error: function(e){  
		      alert('Error: ' + e);  
		    }  
		  });    
		*/
		 var patientid=document.getElementById("totalpoint").value;
			
			 var url="quadraplevisual?patient_id="+patientid;
			 
			 window.open(url,'popUpWindow','resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes'); 
		
		
		// popupWindow1 = window.open("quadraplevisual",'popUpWindow','resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes'); 
		} 
	}
 
 </script> 

<!-- <script>

  $(window).load(function(){
	  
	  $("#workphone").keyup(function() {
			
			 $("#workphoneerror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			//var intRegex = /^\d+$/;
			var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
			if(a.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#workphoneerror").html('Kindly enter a number ');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})


$("#zipcode1").keyup(function() {
	
	 $("#zipcodeerror1").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	var intRegex = /^\d+$/;
	if(intRegex.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#zipcodeerror1").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
   oldValue = $(this).val();
})

$("#homephone").keyup(function() {
	
	 $("#homephoneerror").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	//var intRegex = /^\d+$/;
	var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
	if(a.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#homephoneerror").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
   oldValue = $(this).val();
})


$("#mobilenumber").keyup(function() {
	
	 $("#mobilenumbererror").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	//var intRegex = /^\d+$/;
	var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
	if(a.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#mobilenumbererror").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
   oldValue = $(this).val();
})

$("#socialsecuritynumber").keyup(function() {
	
	 $("#socialsecuritynumbererror").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	var a= /^[0-9]{3}[-\s\.]{0,1}[0-9]{2}[-\s\.]{0,1}[0-9]{4}$/;
	//var intRegex = /^\d+$/;
	if(a.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#socialsecuritynumbererror").html('Kindly enter a number ');
		}
}).keydown(function() {
   oldValue = $(this).val();
})
$("#zipcode").keyup(function() {
	
	 $("#zipcodeerror").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	var intRegex = /^\d+$/;
	if(intRegex.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#zipcodeerror").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
   oldValue = $(this).val();
})


$("#spouseworkphone").keyup(function() {
	
	 $("#spouseworkphoneerror").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	//var intRegex = /^\d+$/;
	var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
	if(a.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#spouseworkphoneerror").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
   oldValue = $(this).val();
})
$("#ph2").keyup(function() {
	
	 $("#ph2error").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	//var intRegex = /^\d+$/;
	var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
	if(a.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(a).val()!='')
		{
		
		$("#ph2error").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
   oldValue = $(this).val();
})
$("#phonenumber").keyup(function() {
	
	 $("#phonenumbererror").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	//var intRegex = /^\d+$/;
	
var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
	if(a.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#phonenumbererror").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
    oldValue = $(this).val();
})
$("#phno").keyup(function() {
	
	 $("#phnoerror").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	//var intRegex = /^\d+$/;
	var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
	if(a.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#phnoerror").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
    oldValue = $(this).val();
})

$("#phauto").keyup(function() {
	
	 $("#phautoerror").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	//var intRegex = /^\d+$/;
	var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
	if(a.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#phautoerror").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
    oldValue = $(this).val();
})

$("#policy").keyup(function() {
	
	 $("#policyerror").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	var intRegex = /^\d+$/;
	if(intRegex.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#policyerror").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
    oldValue = $(this).val();
})
$("#phyphone").keyup(function() {
	
	 $("#phyphone").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	var intRegex = /^\d+$/;
	if(intRegex.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#phyphone").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
    oldValue = $(this).val();
})

$("#phhealth").keyup(function() {
	
	 $("#phhealtherror").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
//	var intRegex = /^\d+$/;
	var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
	if(a.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#phhealtherror").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
    oldValue = $(this).val();
})
});
</script>

 -->
  <script>

	  $(function() {
		    $( "#slider" ).slider({
		      value:1,
		      min: 0,
		      max: 10,
		      step: 1,
		      slide: function( event, ui ) {
		        $( "#amount" ).val(+ ui.value );
		      }
		    });
		    $( "#amount" ).val(+ $( "#slider" ).slider( "value" ) );
		  });
	  $(function() {
		    $( "#slider1" ).slider({
		      value:1,
		      min: 0,
		      max: 10,
		      step: 1,
		      slide: function( event, ui ) {
		        $( "#amount1" ).val(+ ui.value );
		      }
		    });
		    $( "#amount1" ).val(+ $( "#slider1" ).slider( "value" ) );
		  });
	 
	  $(function() {
		    $( "#slider2" ).slider({
		      value:1,
		      min: 0,
		      max: 10,
		      step: 1,
		      slide: function( event, ui ) {
		        $( "#amount2" ).val(+ ui.value );
		      }
		    });
		    $( "#amount2" ).val(+ $( "#slider2" ).slider( "value" ) );
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
<script>
/* $(function() {
	$( "#datepicker" ).datepicker({
		changeMonth: true,
		changeYear: true
	});
});
 */



/* $(function(){
	$("#datepicker3").datepicker({changeMonth: true,changeYear: true,showOn: "button",
		buttonImage: "resources/images/calendar.gif",
		buttonImageOnly: true,dateFormat: 'yy-mm-dd'});
	
	$("#datepicker2").datepicker({changeMonth: true, changeYear: true,showOn: "button",
		buttonImage: "resources/images/calendar.gif",
		buttonImageOnly: true,dateFormat: 'yy-mm-dd' });
	
	$("#datepicker5").datepicker({changeMonth: true, changeYear: true,showOn: "button",
		buttonImage: "resources/images/calendar.gif",
		buttonImageOnly: true,dateFormat: 'yy-mm-dd' });
	
	
	$("#datepicker6").datepicker({changeMonth: true, changeYear: true,showOn: "button",
		buttonImage: "resources/images/calendar.gif",
		buttonImageOnly: true,dateFormat: 'yy-mm-dd' });
	
	
	$("#datepicker1").datepicker({ changeMonth: true,changeYear: true,showOn: "button",
		buttonImage: "resources/images/calendar.gif",
		buttonImageOnly: true,dateFormat: 'yy-mm-dd' });
	
	
    $("#datepicker").datepicker({ changeYear: true,changeMonth: true,showOn: "button",
		buttonImage: "resources/images/calendar.gif",
		buttonImageOnly: true,dateFormat: 'yy-mm-dd' }).bind("change",function(){
        var minValue = $(this).val();
        minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
        minValue.setDate(minValue.getDate()+1);
        $("#datepicker").datepicker( "option", "minDate", minValue );
    })
}); */
  
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
   
  
</script>
<script>
i=0;
$(document).ready(function(){
  $("#socialsecuritynumber").keypress(function(){
var phone=document.getElementById("socialsecuritynumber").value;
phone = phone.replace(/(\d{3})(\d{2})(\d+)/,'$1-$2-$3');
document.getElementById("socialsecuritynumber").value=phone;
 });  

});
</script>
	  <style>
	  /* force a height so the tabs don't jump as content height changes */
	  #tabs .tabs-spacer { float: left; height: 200px; }
	  .tabs-bottom .ui-tabs-nav { clear: right; padding: 0 .2em .2em .2em; }
	  .tabs-bottom .ui-tabs-nav li { top: auto; bottom: 0; margin: 0 .2em 1px 0; border-bottom: auto; border-top: 0; }
	  .tabs-bottom .ui-tabs-nav li.ui-tabs-active { margin-top: -1px; padding-top: 1px; }
	  </style>
	  
	  <script>
i=0;
$(document).ready(function(){
  $("#homephone").keypress(function(){
var phone=document.getElementById("homephone").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("homephone").value=phone;
 });  

});
</script>
<script>
i=0;
$(document).ready(function(){
  $("#Phone_friend").keypress(function(){
var phone=document.getElementById("Phone_friend").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("Phone_friend").value=phone;
 });  

});
</script>
<script>
i=0;
$(document).ready(function(){
  $("#phyphone").keypress(function(){
var phone=document.getElementById("phyphone").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("phyphone").value=phone;
 });  

});
</script>

<script>
i=0;
$(document).ready(function(){
  $("#Insurance_phone").keypress(function(){
var phone=document.getElementById("Insurance_phone").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("Insurance_phone").value=phone;
 });  

});
</script>

 <script>
i=0;
$(document).ready(function(){
  $("#Phone_auto").keypress(function(){
var phone=document.getElementById("Phone_auto").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("Phone_auto").value=phone;
 });  

});
</script>

 
<script>
i=0;
$(document).ready(function(){
  $("#workphone").keypress(function(){
var phone=document.getElementById("workphone").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("workphone").value=phone;
 });  

});
</script>
<script>
i=0;
$(document).ready(function(){
  $("#spouseworkphone").keypress(function(){
var phone=document.getElementById("spouseworkphone").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("spouseworkphone").value=phone;
 });  

});
</script>
<script>
i=0;
$(document).ready(function(){
  $("#mobilenumber").keypress(function(){
var phone=document.getElementById("mobilenumber").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("mobilenumber").value=phone;
 });  

});
</script>
<script>
i=0;
$(document).ready(function(){
  $("#ph2").keypress(function(){
var phone=document.getElementById("ph2").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("ph2").value=phone;
 });  

});
</script>
<script>
i=0;
$(document).ready(function(){
  $("#phonenumber").keypress(function(){
var phone=document.getElementById("phonenumber").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("phonenumber").value=phone;
 });  

});
</script>
<script>
i=0;
$(document).ready(function(){
  $("#inp_id").keypress(function(){
var phone=document.getElementById("inp_id").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("inp_id").value=phone;
 });  

});
</script>
<script>
i=0;
$(document).ready(function(){
  $("#phauto").keypress(function(){
var phone=document.getElementById("phauto").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("phauto").value=phone;
 });  

});
</script>
<script>
i=0;
$(document).ready(function(){
  $("#phhealth").keypress(function(){
var phone=document.getElementById("phhealth").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("phhealth").value=phone;
 });  

});
</script>
<script>
i=0;
$(document).ready(function(){
  $("#phno").keypress(function(){
var phone=document.getElementById("phno").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("phno").value=phone;
 });  

});
</script>
<script>
i=0;
$(document).ready(function(){
  $("#inp_id").keypress(function(){
var phone=document.getElementById("inp_id").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("inp_id").value=phone;
 });  

});
</script>


<script>
function validatezipcode(){
    var textInput = document.getElementById("zipcode1").value;
    textInput = textInput.replace(/[^0-9]/g, "");
    document.getElementById("zipcode1").value = textInput;
}

</script>
<script>
function validatezipcode1(){
    var textInput = document.getElementById("zipcode2").value;
    textInput = textInput.replace(/[^0-9]/g, "");
    document.getElementById("zipcode2").value = textInput;
}

</script>
<script>
function validatezipcode2(){
    var textInput = document.getElementById("zipcode3").value;
    textInput = textInput.replace(/[^0-9]/g, "");
    document.getElementById("zipcode3").value = textInput;
}

</script>

 <script>

	function checkSubmit()
	{
		document.getElementById("nameerror").innerHTML=" ";
		
		if(document.getElementById("name").value=="")
		{
		document.getElementById("nameerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		
		var name=/^[a-zA-Z]*$/;
        
        if(document.getElementById("name").value.match(name)==null)
        {
           document.getElementById("nameerror").innerHTML="Enter your username only in letters";    
            return false;
        }
		
		document.getElementById("nameerror").innerHTML="";
	if(document.getElementById("name").value.length<4 || document.getElementById("name").value.length>32 )
	{
	document.getElementById("nameerror").innerHTML="Invalid Name Should be >than 4 and less than than 32";
	return false;
	
	}
		document.getElementById("datepickererror").innerHTML="";
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
	document.getElementById("streetaddresserror").innerHTML="";
	if(document.getElementById("streetaddress").value=="")
	{
	document.getElementById("streetaddresserror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("Cityerror").innerHTML="";
	if(document.getElementById("City").value=="")
	{
	document.getElementById("Cityerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("Stateerror").innerHTML="";
	if(document.getElementById("State").value=="")
	{
	document.getElementById("Stateerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("zipcode1error").innerHTML="";
	if(document.getElementById("zipcode1").value=="")
	{
	document.getElementById("zipcode1error").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("zipcode1error").innerHTML="";
	if(document.getElementById("zipcode1").value.length<5)
	{
	document.getElementById("zipcode1error").innerHTML="Invalid zipcode format";
	return false;
	
	}
	
	document.getElementById("zipcode1error").innerHTML="";
	if(isNaN(document.getElementById("zipcode1").value))
	{
	document.getElementById("zipcode1error").innerHTML="Enter Only Numbers";
	return false;
	}
	document.getElementById("homephoneerror").innerHTML="";
	if(document.getElementById("homephone").value=="")
	{
	document.getElementById("homephoneerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("homephoneerror").innerHTML="";
	if(document.getElementById("homephone").value.length<13)
	{
	document.getElementById("homephoneerror").innerHTML="Invalid phone number format";
	return false;
	
	}
	//var phone = /^[0-9-()]{13}$/;
	//var phone = /^\(?([1-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/; 
	//if(document.getElementById("homephone").value.match(phone)==null)
    //{
    	//document.getElementById("homephoneerror").innerHTML="Invalid phone number format ";
    	
        //return false;
   // }
  // document.getElementById("homephoneerror").innerHTML="";
   document.getElementById("homephoneerror").innerHTML="";
    var txt1=document.getElementById("homephone").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt2==000 && txt3==000){
   document.getElementById("homephoneerror").innerHTML="Invalid phone number format";
   return false;
   }
  
	document.getElementById("Emailiderror").innerHTML="";
	if(document.getElementById("Emailid").value=="")
	{
	document.getElementById("Emailiderror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	var mail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    
    if(document.getElementById("Emailid").value.match(mail)==null)
    {
    	document.getElementById("Emailiderror").innerHTML="Enter ur proper E-Mail";
    	
        return false;
    }

	document.getElementById("mobilenumbererror").innerHTML="";
	if(document.getElementById("mobilenumber").value=="")
	{
	document.getElementById("mobilenumbererror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("mobilenumbererror").innerHTML="";
	if(document.getElementById("mobilenumber").value.length<13)
	{
	document.getElementById("mobilenumbererror").innerHTML="Invalid phone number format";
	return false;
	
	}
	
	
	document.getElementById("mobilenumbererror").innerHTML="";
    var txt1=document.getElementById("mobilenumber").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt2==000 && txt3==000)
	   {
   document.getElementById("mobilenumbererror").innerHTML="Invalid phone number format";
	 return false;
    }
   
   document.getElementById("workphoneerror").innerHTML="";
   if(document.getElementById("workphone").value!="")
   {
	if(document.getElementById("workphone").value.length<13)
	{
	document.getElementById("workphoneerror").innerHTML="Invalid phone number format";
	return false;
	
	}
   }
  document.getElementById("workphoneerror").innerHTML="";
  if(document.getElementById("workphone").value!="")
  {
   var txt1=document.getElementById("workphone").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt2==000 && txt3==000)
   document.getElementById("workphoneerror").innerHTML="Invalid phone number format";
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
	document.getElementById("socialsecuritynumbererror").innerHTML="";
	if(document.getElementById("socialsecuritynumber").value=="")
	{
	document.getElementById("socialsecuritynumbererror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	
	
	document.getElementById("socialsecuritynumbererror").innerHTML="";
	var txt1=document.getElementById("socialsecuritynumber").value;
	var txt2=txt1.substring(0,3);
	if(txt2==000)
	{
	document.getElementById("socialsecuritynumbererror").innerHTML="Invalid social security number";
	return false;
	}
	//alert(txt2);
	//var phone = /^[0-9-]{11}$/;
	 //if(document.getElementById("socialsecuritynumber").value.match(phone)==null)
    //{
    	//document.getElementById("socialsecuritynumbererror").innerHTML="Invalid socialsecuritynumber";
    	
        //return false;
   // }
    document.getElementById("socialsecuritynumbererror").innerHTML="";
    if(document.getElementById("socialsecuritynumber").value.length<11)
    {
    	document.getElementById("socialsecuritynumbererror").innerHTML="Invalid social  security number";
    	
        return false;
    }
    
    
    //document.getElementById("socialsecuritynumbererror").innerHTML="";
	//if(isNaN(document.getElementById("socialsecuritynumber").value))
	//{
	//document.getElementById("socialsecuritynumbererror").innerHTML="Invalid social  security number";
	//return false;
	//}
	 document.getElementById("Gendererror").innerHTML=""; 
	if( ( document.getElementById("Male").checked == false ) && ( document.getElementById("Female").checked == false ) && ( document.getElementById("Transgender").checked == false ))

	 {
	 document.getElementById("Gendererror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	document.getElementById("MaritalStatuserror").innerHTML=""; 
	if( ( document.getElementById("Single").checked == false ) && ( document.getElementById("Married").checked == false ) && ( document.getElementById("Divorced").checked == false ))

	 {
	 document.getElementById("MaritalStatuserror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	document.getElementById("Areyouerror").innerHTML=""; 
	if( ( document.getElementById("Student").checked == false ) && ( document.getElementById("Employee").checked == false ) )

	 {
	 document.getElementById("Areyouerror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	/* document.getElementById("workphoneerror").innerHTML="";
	if(document.getElementById("workphone").value=="")
	{
	document.getElementById("workphoneerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	} */
	
   /*  document.getElementById("zipcode2error").innerHTML="";
	if(document.getElementById("zipcode2").value=="")
	{
	document.getElementById("zipcode2error").innerHTML="Required Field Should not be Empty";
	
	return false;
	} */
	
	document.getElementById("zipcode2error").innerHTML="";
	if(isNaN(document.getElementById("zipcode2").value))
	{
	document.getElementById("zipcode2error").innerHTML="Enter Only Numbers";
	return false;
	}
	document.getElementById("zipcode2error").innerHTML="";
	if(document.getElementById("zipcode2").value!="")
	{
	if(document.getElementById("zipcode2").value.length<5)
	{
	document.getElementById("zipcode2error").innerHTML="Invalid zipcode format";
	return false;
	}
	}
	
	/*  document.getElementById("zipcode3error").innerHTML="";
	if(document.getElementById("zipcode3").value=="")
	{
	document.getElementById("zipcode3error").innerHTML="Required Field Should not be Empty";
	
	return false;
	} */
	
	document.getElementById("zipcode3error").innerHTML="";
	if(isNaN(document.getElementById("zipcode3").value))
	{
	document.getElementById("zipcode3error").innerHTML="Enter Only Numbers";
	return false;
	}
	document.getElementById("zipcode3error").innerHTML="";
		if(document.getElementById("zipcode3").value!="")
		{
	if(document.getElementById("zipcode3").value.length<5)
	{
	document.getElementById("zipcode3error").innerHTML="Invalid zipcode format";
	return false;
	}
	}
	document.getElementById("SpousesNameerror").innerHTML="";
	if(document.getElementById("SpousesName").value=="")
	{
	document.getElementById("SpousesNameerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("SpousesEmperror").innerHTML="";
	if(document.getElementById("SpousesEmp").value=="")
	{
	document.getElementById("SpousesEmperror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("spouseworkphoneerror").innerHTML="";
	if(document.getElementById("spouseworkphone").value=="")
	{
	document.getElementById("spouseworkphoneerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("spouseworkphoneerror").innerHTML="";
    var txt1=document.getElementById("spouseworkphone").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt2==000 && txt3==000){
   document.getElementById("spouseworkphoneerror").innerHTML="Invalid phone number format";
  return false;
   }
   
   document.getElementById("spouseworkphoneerror").innerHTML="";
	if(document.getElementById("spouseworkphone").value.length<13)
	{
	document.getElementById("spouseworkphoneerror").innerHTML="Invalid phone number format";
	return false;
	
	}
	document.getElementById("Name_frienderror").innerHTML="";
	if(document.getElementById("Name_friend").value=="")
	{
	document.getElementById("Name_frienderror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("Phone_frienderror").innerHTML="";
	if(document.getElementById("Phone_friend").value=="")
	{
	document.getElementById("Phone_frienderror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("Phone_frienderror").innerHTML="";
	if(document.getElementById("Phone_friend").value.length<13)
	{
	document.getElementById("Phone_frienderror").innerHTML="Invalid phone number format";
	return false;
	
	}
	document.getElementById("Phone_frienderror").innerHTML="";
    var txt1=document.getElementById("Phone_friend").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt2==000 && txt3==000){
   document.getElementById("Phone_frienderror").innerHTML="Invalid phone number format";
  
	
	return false;
    }
	
	document.getElementById("Chiropratic_careerror").innerHTML=""; 
	if( ( document.getElementById("yes1").checked == false ) && ( document.getElementById("No1").checked == false ) )

	 {
	 document.getElementById("Chiropratic_careerror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	 document.getElementById("Hazardouserror").innerHTML=""; 
	if( ( document.getElementById("Hazardous").checked == false ) && ( document.getElementById("Hazardous1").checked == false ) )

	 {
	 document.getElementById("Hazardouserror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	
	
	
	
	
	
	document.getElementById("symptom1error").innerHTML="";
	if(document.getElementById("symptom1").value=="")
	{
	document.getElementById("symptom1error").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("Symptom_Accidenterror").innerHTML=""; 
	if( ( document.getElementById("yes").checked == false ) && ( document.getElementById("No").checked == false ) )

	 {
	 document.getElementById("Symptom_Accidenterror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
 document.getElementById("type_of_accidenterror").innerHTML="";
	if(document.getElementById("type_of_accident").value==0)
	{

		document.getElementById("type_of_accidenterror").innerHTML="Required Field Should not be Empty";

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
	document.getElementById("Accident_Reportederror").innerHTML=""; 
	if( ( document.getElementById("yes2").checked == false ) && ( document.getElementById("No2").checked == false ) )

	 {
	 document.getElementById("Accident_Reportederror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	document.getElementById("datepicker5error").innerHTML="";
	if(document.getElementById("datepicker5").value=="")
	{
	document.getElementById("datepicker5error").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("datepicker5error").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker5").value.match(datechk)==null)
    {
    	document.getElementById("datepicker5error").innerHTML="Invalid Date Format";
    	
        return false;
    }
	document.getElementById("where1error").innerHTML="";
	if(document.getElementById("where1").value=="")
	{
	document.getElementById("where1error").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("Attorney_accidenterror").innerHTML=""; 
	if( ( document.getElementById("yes5").checked == false ) && ( document.getElementById("No5").checked == false ) )

	 {
	 document.getElementById("Attorney_accidenterror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	 	document.getElementById("retainerror").innerHTML=""; 
	if( ( document.getElementById("R").checked == false ) && ( document.getElementById("L").checked == false ) )

	 {
	 document.getElementById("retainerror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	document.getElementById("recorderror").innerHTML=""; 
	if( ( document.getElementById("yes6").checked == false ) && ( document.getElementById("No6").checked == false ) )

	 {
	 document.getElementById("recorderror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	document.getElementById("phynameerror").innerHTML="";
	if(document.getElementById("phyname").value=="")
	{
	document.getElementById("phynameerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("phyphoneerror").innerHTML="";
	if(document.getElementById("phyphone").value=="")
	{
	document.getElementById("phyphoneerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("phyphoneerror").innerHTML="";
	if(document.getElementById("phyphone").value.length<13)
	{
	document.getElementById("phyphoneerror").innerHTML="Invalid phone number format";
	return false;
	
	}
	 document.getElementById("phyphoneerror").innerHTML="";
    var txt1=document.getElementById("phyphone").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt2==000 && txt3==000){
   document.getElementById("phyphoneerror").innerHTML="Invalid phone number format";
  
	return false;
    }
	document.getElementById("xrayerror").innerHTML="";
	if(document.getElementById("xray").value=="")
	{
	document.getElementById("xrayerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("treaterror").innerHTML="";
	if(document.getElementById("treat").value=="")
	{
	document.getElementById("treaterror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("NameOfAttorneyerror").innerHTML="";
	if(document.getElementById("NameOfAttorney").value=="")
	{
	document.getElementById("NameOfAttorneyerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("phonenumbererror").innerHTML="";
	if(document.getElementById("phonenumber").value=="")
	{
	document.getElementById("phonenumbererror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("phonenumbererror").innerHTML="";
	if(document.getElementById("phonenumber").value.length<13)
	{
	document.getElementById("phonenumbererror").innerHTML="Invalid phone number format";
	return false;
	
	}
	 document.getElementById("phonenumbererror").innerHTML="";
    var txt1=document.getElementById("phonenumber").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt2==000 && txt3==000){
   document.getElementById("phonenumbererror").innerHTML="Invalid phone number format";
	return false;
    }
	document.getElementById("Fault_accidenterror").innerHTML="";
	if(document.getElementById("Fault_accident").value=="")
	{
	document.getElementById("Fault_accidenterror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("Insuranceerror").innerHTML="";
	if(document.getElementById("Insurance").value=="")
	{
	document.getElementById("Insuranceerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("Insurance_phoneerror").innerHTML="";
	if(document.getElementById("Insurance_phone").value=="")
	{
	document.getElementById("Insurance_phoneerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("Insurance_phoneerror").innerHTML="";
	if(document.getElementById("Insurance_phone").value.length<13)
	{
	document.getElementById("Insurance_phoneerror").innerHTML="Invalid phone number format";
	return false;
	
	}
	
	
	 document.getElementById("Insurance_phoneerror").innerHTML="";
    var txt1=document.getElementById("Insurance_phone").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt2==000 && txt3==000){
   document.getElementById("Insurance_phoneerror").innerHTML="Invalid phone number format";
	 return false;
    }
	document.getElementById("Name_autoerror").innerHTML="";
	if(document.getElementById("Name_auto").value=="")
	{
	document.getElementById("Name_autoerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("Phone_autoerror").innerHTML="";
	if(document.getElementById("Phone_auto").value=="")
	{
	document.getElementById("Phone_autoerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("Phone_autoerror").innerHTML="";
	if(document.getElementById("Phone_auto").value.length<13)
	{
	document.getElementById("Phone_autoerror").innerHTML="Invalid phone number format";
	return false;
	
	}
	document.getElementById("Phone_autoerror").innerHTML="";
    var txt1=document.getElementById("Phone_auto").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt2==000 && txt3==000){
   document.getElementById("Phone_autoerror").innerHTML="Invalid phone number format";
	return false;
    }
          
     
    
	document.getElementById("policyerror").innerHTML="";
	if(document.getElementById("policy").value=="")
	{
	document.getElementById("policyerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("Name_healtherror").innerHTML="";
	if(document.getElementById("Name_health").value=="")
	{
	document.getElementById("Name_healtherror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("phhealtherror").innerHTML="";
	if(document.getElementById("phhealth").value=="")
	{
	document.getElementById("phhealtherror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("phhealtherror").innerHTML="";
	if(document.getElementById("phhealth").value.length<13)
	{
	document.getElementById("phhealtherror").innerHTML="Invalid phone number format";
	return false;
	
	}
	 document.getElementById("phhealtherror").innerHTML="";
    var txt1=document.getElementById("phhealth").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt2==000 && txt3==000){
   document.getElementById("phhealtherror").innerHTML="Invalid phone number format";
	return false;
    }
         
	document.getElementById("Prev_accidenterror").innerHTML=""; 
	if( ( document.getElementById("yes7").checked == false ) && ( document.getElementById("No7").checked == false ) )

	 {
	 document.getElementById("Prev_accidenterror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	document.getElementById("datepicker6error").innerHTML="";
	if(document.getElementById("datepicker6").value=="")
	{
	document.getElementById("datepicker6error").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
		document.getElementById("datepicker6error").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker6").value.match(datechk)==null)
    {
    	document.getElementById("datepicker6error").innerHTML="Invalid Date Format";
    	
        return false;
    }
	document.getElementById("Illnesserror").innerHTML="";
	if(document.getElementById("Illness").value=="")
	{
	document.getElementById("Illnesserror").innerHTML="Required Field Should not be Empty";
	
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
	document.getElementById("Medicationserror").innerHTML="";
	if(document.getElementById("Medications").value=="")
	{
	document.getElementById("Medicationserror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("doyouerror").innerHTML=""; 
	if( ( document.getElementById("Drink").checked == false ) && ( document.getElementById("Smoke").checked == false ) && ( document.getElementById("Drugs").checked == false )&& ( document.getElementById("Diet").checked == false )&& ( document.getElementById("Exercise").checked == false ))

	 {
	 document.getElementById("doyouerror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	/* document.getElementById("listerror").innerHTML="";
	if(document.getElementById("list").value=="")
	{
	document.getElementById("listerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	} */
	document.getElementById("Femaleerror").innerHTML=""; 
	if( ( document.getElementById("yes9").checked == false ) && ( document.getElementById("No9").checked == false ) )

	 {
	 document.getElementById("Femaleerror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	document.getElementById("Drerror").innerHTML="";
	if(document.getElementById("Dr").value=="")
	{
	document.getElementById("Drerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("Patienterror").innerHTML="";
	if(document.getElementById("Patient").value=="")
	{
	document.getElementById("Patienterror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	
	document.getElementById("claim_openerror").innerHTML=""; 
	if( ( document.getElementById("claim_open").checked == false ) && ( document.getElementById("claim_open1").checked == false ) )

	 {
	 document.getElementById("claim_openerror").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	
	document.getElementById("car11error").innerHTML=""; 
	if(document.getElementById("car11").value=="")
	{
	 document.getElementById("car11error").innerHTML="Required Field Should not be Empty";
	 		
	 		return false;
	 		
	 }
	}

	</script>
	
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
	    $( "#datepicker5" ).datepicker();
	  });
  $(function() {
	    $( "#datepicker6" ).datepicker();
	  });
  $(function() {
	    $( "#datepicker3" ).datepicker();
	  });
  </script>
  
	</head>
	<body>
	 
	<div id="tabs" class="tabs-bottom">
	  <ul>
	    <li><a href="#tabs-1" >1</a></li>
	    <li><a href="#tabs-2">2</a></li>
	    <li><a href="#tabs-3">3</a></li>
	  </ul>
	  <div class="tabs-spacer"></div>
	  <div id="tabs-1">
<div id="right_content">

<script type="text/javascript">
function validate(){
	
	var length=document.getElementsByName("symptom[]").length;
	var fld = document.getElementById("symptom").value;
	
	var fld2=document.getElementById("symptom1").value;
	if(fld1==fld2)
		{
		alert("Please Enter different symptom");
		}
	
	
	var values = [];
	values.push(fld);
	
	
	for (var i = 0; i < fld.options.length; i++) {
	  if (fld.options[i].selected) {
	    values.push(fld.options[i].value);
	  }
	}
}



</script>
  <script type="text/javascript">
				var $im = 1;
				var flagm = 1;
				function addMultichoice(divName) {
					
				//("sdf"+document.getElementById("symptom[0]").value);
					var xx = document.getElementsByName('symptom[]').length;
						
					
					var $in = xx + 1;
					var $id=$in-1;
					var symptomid="symptom"+$id;
					if(document.getElementById(symptomid).value=="")
						{
						alert("The Symptom cannot be blank");
						}
					else
						{
					if($in==11)
						{
						var cancel="cancel"+$id;
						//document.getElementById(symptomid).style.display="none";
						document.getElementById(cancel).style.display="none";
						document.getElementById("morebutton").style.display="none";
						}
					else
						{				
									
                 	var newdiv = document.createElement('div');

					newdiv.innerHTML = '<table width="100%" border="0" cellspacing="0" cellpadding="0" id="newtbl'
							+ $im
							+ '"><tr height="10"><span id="sample'+$in+'"></tr><tr>'
							/* + $in */
							+ '<td valign="top" align="left" class="input_txt" width="70%"><textarea  name="symptom[]" id="symptom'+$in+'" rows="3" cols="25" placeholder="Specify your Symptoms" onblur="check(this)"></textarea></td></tr><tr><td align="left" valign="top"><a javascript:void(0);" onclick="removechoice('
							+ $im
							+ ')" style="text-decoration:none;"><input type="submit" class="submit_btn" id="cancel'+$in+'" value="CANCEL"  /></a></td></tr><tr height="10"></tr></table>';
					
					document.getElementById(divName).appendChild(newdiv);
					$im++;
					flagm++;
					var cancel="cancel"+$id;
					//document.getElementById(symptomid).style.display="none";
					document.getElementById(cancel).style.display="none";
					var span="sample"+$id;
					//document.getElementById(span).innerHTML=document.getElementById(symptomid).value;
						}

				}}
				function removechoice(id) {
					id = 'newtbl' + id;
					var child = document.getElementById(id)
					var parentDiv = child.parentNode;
					parentDiv.removeChild(child);

				}
			</script>

<script>
function ajax()
{
	symptom=document.getElementById("symptom_ajax").value;
	 $.ajax({  
		    type: "POST",  
		    url: "/EhrApp/check_symptom_ajax",  
		    data: "symptom_ajax=" +symptom,
		    success: function(response){  
		    
		    	//var patientid=document.getElementById("totalpoint").value;			
				 var url="quadraplevisual?symptom="+document.getElementById("symptom_ajax").value;			
				 
			
		    	if(response=="")
		    		{
		    		 window.open(url,'popUpWindow','resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes');
		    		}
		    	else
		    		{
		    		var url="editquadraplevisual?quadrupleno="+response;
		    		popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		    		}
		    
	
		    },  
		    error: function(e){  
		      alert('Error: ' + e);  
		    }  
		  });

	
	}


function check(id)
{
	document.getElementById("symptom_ajax").value=id.value;
	
	if(id.value=="")
		{
		alert("The Symptom cannot be blank");
		}
	else
		{
	var xx = document.getElementsByName('symptom[]').length;
	
	if(xx==1)
	{
		
		ajax();
		
		
		
	
	}
	if(xx==2)
		{
		if(document.getElementById("symptom1").value==document.getElementById("symptom2").value)
			{
			alert("The Symptom already exist.Please check it.");
			}
		else
			{
			ajax();
			}
		}
	if(xx==3)
	{
	if(document.getElementById("symptom1").value==document.getElementById("symptom2").value || document.getElementById("symptom1").value==document.getElementById("symptom3").value || document.getElementById("symptom3").value==document.getElementById("symptom2").value)
		{
		alert("The Symptom already exist.Please check it.");
		}
	else
		{
		ajax();
		}
	}
	if(xx==4)
	{
	if(document.getElementById("symptom1").value==document.getElementById("symptom2").value || document.getElementById("symptom1").value==document.getElementById("symptom3").value || document.getElementById("symptom3").value==document.getElementById("symptom2").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom4").value	|| document.getElementById("symptom4").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom4").value)
	
		{
		alert("The Symptom already exist.Please check it.");
		}
	else
	{
	ajax();
	}
	}
		
	if(xx==5)
	{
	if(document.getElementById("symptom1").value==document.getElementById("symptom2").value || document.getElementById("symptom1").value==document.getElementById("symptom3").value || document.getElementById("symptom3").value==document.getElementById("symptom2").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom4").value	|| document.getElementById("symptom4").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom4").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom5").value	|| document.getElementById("symptom5").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom5").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom5").value)
	
		{
		alert("The Symptom already exist.Please check it.");
		}
	else
	{
	ajax();
	}
	}
		
	if(xx==6)
	{
	if(document.getElementById("symptom1").value==document.getElementById("symptom2").value || document.getElementById("symptom1").value==document.getElementById("symptom3").value || document.getElementById("symptom3").value==document.getElementById("symptom2").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom4").value	|| document.getElementById("symptom4").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom4").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom5").value	|| document.getElementById("symptom5").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom5").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom5").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom6").value	|| document.getElementById("symptom6").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom6").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom6").value || document.getElementById("symptom5").value==document.getElementById("symptom6").value)
	{
		alert("The Symptom already exist.Please check it.");
		}
	else
	{
	ajax();
	}
	}
	
	if(xx==7)
	{
	if(document.getElementById("symptom1").value==document.getElementById("symptom2").value || document.getElementById("symptom1").value==document.getElementById("symptom3").value || document.getElementById("symptom3").value==document.getElementById("symptom2").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom4").value	|| document.getElementById("symptom4").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom4").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom5").value	|| document.getElementById("symptom5").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom5").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom5").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom6").value	|| document.getElementById("symptom6").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom6").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom6").value || document.getElementById("symptom5").value==document.getElementById("symptom6").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom7").value	|| document.getElementById("symptom7").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom7").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom7").value || document.getElementById("symptom5").value==document.getElementById("symptom7").value || document.getElementById("symptom6").value==document.getElementById("symptom7").value
	)
	{
		alert("The Symptom already exist.Please check it.");
		}
	else
	{
	ajax();
	}
	}
	if(xx==8)
	{
	if(document.getElementById("symptom1").value==document.getElementById("symptom2").value || document.getElementById("symptom1").value==document.getElementById("symptom3").value || document.getElementById("symptom3").value==document.getElementById("symptom2").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom4").value	|| document.getElementById("symptom4").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom4").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom5").value	|| document.getElementById("symptom5").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom5").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom5").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom6").value	|| document.getElementById("symptom6").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom6").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom6").value || document.getElementById("symptom5").value==document.getElementById("symptom6").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom7").value	|| document.getElementById("symptom7").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom7").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom7").value || document.getElementById("symptom5").value==document.getElementById("symptom7").value || document.getElementById("symptom6").value==document.getElementById("symptom7").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom8").value	|| document.getElementById("symptom8").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom8").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom8").value || document.getElementById("symptom5").value==document.getElementById("symptom8").value || document.getElementById("symptom6").value==document.getElementById("symptom8").value
	|| document.getElementById("symptom7").value==document.getElementById("symptom8").value
	)
	{
		alert("The Symptom already exist.Please check it.");
		}
	else
	{
	ajax();
	}
	}
	if(xx==9)
	{
	if(document.getElementById("symptom1").value==document.getElementById("symptom2").value || document.getElementById("symptom1").value==document.getElementById("symptom3").value || document.getElementById("symptom3").value==document.getElementById("symptom2").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom4").value	|| document.getElementById("symptom4").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom4").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom5").value	|| document.getElementById("symptom5").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom5").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom5").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom6").value	|| document.getElementById("symptom6").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom6").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom6").value || document.getElementById("symptom5").value==document.getElementById("symptom6").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom7").value	|| document.getElementById("symptom7").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom7").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom7").value || document.getElementById("symptom5").value==document.getElementById("symptom7").value || document.getElementById("symptom6").value==document.getElementById("symptom7").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom8").value	|| document.getElementById("symptom8").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom8").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom8").value || document.getElementById("symptom5").value==document.getElementById("symptom8").value || document.getElementById("symptom6").value==document.getElementById("symptom8").value
	|| document.getElementById("symptom7").value==document.getElementById("symptom8").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom9").value	|| document.getElementById("symptom9").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom9").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom9").value || document.getElementById("symptom5").value==document.getElementById("symptom9").value || document.getElementById("symptom6").value==document.getElementById("symptom9").value
	|| document.getElementById("symptom7").value==document.getElementById("symptom9").value || document.getElementById("symptom8").value==document.getElementById("symptom9").value
	)
	{
		alert("The Symptom already exist.Please check it.");
		}
	else
	{
	ajax();
	}
	}
	
	if(xx==10)
	{
	if(document.getElementById("symptom1").value==document.getElementById("symptom2").value || document.getElementById("symptom1").value==document.getElementById("symptom3").value || document.getElementById("symptom3").value==document.getElementById("symptom2").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom4").value	|| document.getElementById("symptom4").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom4").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom5").value	|| document.getElementById("symptom5").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom5").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom5").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom6").value	|| document.getElementById("symptom6").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom6").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom6").value || document.getElementById("symptom5").value==document.getElementById("symptom6").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom7").value	|| document.getElementById("symptom7").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom7").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom7").value || document.getElementById("symptom5").value==document.getElementById("symptom7").value || document.getElementById("symptom6").value==document.getElementById("symptom7").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom8").value	|| document.getElementById("symptom8").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom8").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom8").value || document.getElementById("symptom5").value==document.getElementById("symptom8").value || document.getElementById("symptom6").value==document.getElementById("symptom8").value
	|| document.getElementById("symptom7").value==document.getElementById("symptom8").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom9").value	|| document.getElementById("symptom9").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom9").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom9").value || document.getElementById("symptom5").value==document.getElementById("symptom9").value || document.getElementById("symptom6").value==document.getElementById("symptom9").value
	|| document.getElementById("symptom7").value==document.getElementById("symptom9").value || document.getElementById("symptom8").value==document.getElementById("symptom9").value
	|| document.getElementById("symptom1").value==document.getElementById("symptom10").value	|| document.getElementById("symptom10").value==document.getElementById("symptom2").value	|| document.getElementById("symptom3").value==document.getElementById("symptom10").value
	|| document.getElementById("symptom4").value==document.getElementById("symptom10").value || document.getElementById("symptom5").value==document.getElementById("symptom10").value || document.getElementById("symptom6").value==document.getElementById("symptom10").value
	|| document.getElementById("symptom7").value==document.getElementById("symptom10").value || document.getElementById("symptom8").value==document.getElementById("symptom10").value || document.getElementById("symptom8").value==document.getElementById("symptom10").value
	
	
	)
	{
		alert("The Symptom already exist.Please check it.");
		}
	else
	{
	ajax();
	}
	}
	
	
		}
	/* alert("check"+ document.getElementById("symptom2").value);
	
	alert("jhsa"+document.getElementById(val).value));
	alert("asdasd"+val); */
	}

</script>
<script>
  function printPage(id)
  {
	
	         document.getElementById('print').style.visibility = 'hidden';
	         document.getElementById('btnNext').style.visibility = 'hidden';
	         document.getElementById('print1').style.visibility = 'hidden';
	       // document.getElementsByName('btnNext1').style.visibility = 'hidden';
	         document.getElementById('btnPrevious').style.visibility = 'hidden';
	         document.getElementById('print2').style.visibility = 'hidden';
	         //document.getElementById('btnPrevious1').style.visibility = 'hidden';
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
      document.getElementById('btnNext').style.visibility = 'visible';
      document.getElementById('print1').style.visibility = 'visible';
      //document.getElementsByName('btnNext1').style.visibility = 'visible';
      document.getElementById('btnPrevious').style.visibility = 'visible';
         document.getElementById('print2').style.visibility = 'visible';
        //document.getElementsByName('btnPrevious1').style.visibility = 'visible';
   
     document.getElementById('saveid').style.visibility = 'visible';
     document.getElementById('cancelid').style.visibility = 'visible'; 
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
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

      <tr>
        <td valign="top" align="left">
        	<div id="block1">
        	<div class="headings altheading">
        	<img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	              <h2>Patient Information </h2>
	          </div>
	       
<div class="contentbox">
<input type="hidden" value="<sec:authentication property="principal.username" />" id="pusername" name="user">
<input type="hidden" value="<sec:authentication property="principal.username" />" id="username" name="username">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
    					<!-- <h2 class="quck-txt">Patient Details</h2> -->
    					<span id="cancel1"></span>
    					<c:choose>
    					<c:when test="${empty first}">
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                       <br>
                        <br>
                        <tr class="row1">
				                 <div id="info"> <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  <input type="hidden" value="${totalpatient}" id="totalpoint">
				                  	<input type="text" class="input_txtbx1" name="Name" id="name" min="4" maxlength="32" value="${pname}" /><br><span id="nameerror" style="color: red;font-style:italic;" ><form:errors path="PatientDetails.name"></form:errors></span>
				                  </td>
				                </tr>
				                
				               
				                
				                
				                
				                
				                
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span> Date:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker" class="input_txtbx1" name="Date" value="${patientajax.date}"  }"/><br><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.date"></form:errors></span>
				                  </td>
				                </tr>
                                  <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Street address:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="streetaddress" name="StreetAddress" value="${patientajax.StreetAddress }"/><br><span id="streetaddresserror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.streetAddress"></form:errors></span>
				                  </td>
				                </tr>
                                  <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>City:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="City" name="City" /><br><span id="Cityerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.city"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>State:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="State" name="State" /><br><span id="Stateerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.state"></form:errors></span>
				                  </td>
				                </tr>
                               <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>ZipCode:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="zipcode1" name="ZipCode" onInput="return validatezipcode()"; maxlength="5" /><br><span  id="zipcode1error" style="color: red;font-style:italic;"><form:errors path="PatientDetails.zipCode"></form:errors></span>
	
	<span class="err" ></span>            
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Home phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="homephone" maxlength="13" name="Homephone"  /><br><span id="homephoneerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.homephone"></form:errors></span>
				                  <br>
				                
				                  </td>
				                  
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>E-mail Id:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="Emailid" name="Emailid" /><br><span id="Emailiderror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.emailid"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>MobileNumber:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" maxlength="13"  id="mobilenumber" name="mobileNumber" /><br><span id="mobilenumbererror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.mobileNumber"></form:errors></span>
				                 <br>
				                 <span ></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>DateOfBirth:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker1" class="input_txtbx1" name="DateOfBirth"/><br><span id="datepicker1error" style="color: red;font-style:italic;"><form:errors path="PatientDetails.dateOfBirth"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Social Security Number:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="socialsecuritynumber" name="SocialSecurityNumber" maxlength="11" /><br><span id="socialsecuritynumbererror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.socialSecurityNumber"></form:errors></span>
				                <br>
				                <span class="err" id="socialsecuritynumbererror"></span>
 </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Gender:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Gender" value="Male" class="input_txt" id="Male" >Male&nbsp;&nbsp;&nbsp;<input type="radio" name="Gender" value="Female" class="input_txt" id="Female">Female&nbsp;&nbsp;&nbsp;<input type="radio" name="Gender" value="Transgender" id="Transgender" class="input_txt">Transgender
				                  	<span id="Gendererror" style="color: red;font-style:italic;"></span>
				                  	</td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>MaritalStatus:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="MaritalStatus" value="Single" class="input_txt" id="Single">Single&nbsp;&nbsp;&nbsp;<input type="radio" name="MaritalStatus" value="Married" class="input_txt" id="Married">Married&nbsp;&nbsp;&nbsp;<input type="radio" name="MaritalStatus" value="Divorced" class="input_txt" id="Divorced">Divorced
				                  	<span id="MaritalStatuserror" style="color: red;font-style:italic;"></span>
				                  	</td>
				                	
				                </tr>
				                
				                </table>
				                <td align="left" valign="top"> <h2 class="quck-txt"></h2>
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							 <tr class="row1">
							 
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Are you:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Areyou" value="Student" class="input_txt" id="Student" onchange="toggle3('show3')">Student&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="Areyou" value="Employee" class="input_txt" id="Employee" onclick="toggle3('hide3')">Employee
				                  	<span id="Areyouerror" style="color: red;font-style:italic;"></span>
				                  	</td>
				                  
				                </tr>
							</table>
							<div id="student" style="display:none;">
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>Student:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Student" value="FullTime" class="input_txt" >Full Time&nbsp;&nbsp;&nbsp;<input type="radio" name="Student" value="PartTime" class="input_txt">Part Time</td>
				                  
				                </tr>
							
							</table>
							</div>
							<div id="employee" >
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>Employer Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerName" /><br><span class="err"><form:errors path="PatientDetails.EmployerName"></form:errors></span>

				                  </td>
				                </tr>
				                
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>Occupation:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Occupation" /><br><span class="err"><form:errors path="PatientDetails.Occupation"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>Employer Address:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerAddress" /><br><span class="err"><form:errors path="PatientDetails.EmployerAddress"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>WorkPhone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="workphone" name="Workphone" maxlength="13" onkeypress="return validate(event)";/><br><span id="workphoneerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.Workphone"></form:errors></span>
<br>
<span class="err" id="workphoneerror"></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>ZipCode:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="zipcode2" onInput="return validatezipcode1()"; name="zip" maxlength="5" /><br><span style="color: red;font-style:italic;" id="zipcode2error"><form:errors path="PatientDetails.zipCode"></form:errors></span>
	
	<span class="err" ></span>            
				                  </td>
				                </tr> 
				                
				                
				                
				                
				                
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>EmployerCity:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerCity" /><br><span class="err"><form:errors path="PatientDetails.EmployerCity"></form:errors></span>

				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>State:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Estate" /><br><span class="err"><form:errors path="PatientDetails.Estate"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>ZipCode:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="zipcode3"  onInput="return validatezipcode2()";name="Ezip" maxlength="5"/><br><span style="color: red;font-style:italic;" id="zipcode3error"><form:errors path="PatientDetails.Ezip"></form:errors></span>
				                  	<br><span class="err" id="zipcodeerror"></span>
				                  </td>
				                </tr>
							
							
							</table>
							</div>
							
							
							
				                
				                <table cellpadding="0" cellspacing="0" border="0" width="100%">
				                
				                <tr class="row1">
				               
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouse's or significant others name:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="SpousesName" name="SpousesName" /><br><span id="SpousesNameerror" style="color: red;font-style:italic;" ><form:errors path="PatientDetails.spousesName"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouses Employer:&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="SpousesEmp" name="SpousesEmp" /><br><span id="SpousesEmperror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.spousesEmp"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouse's Workphone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="spouseworkphone" name="Spousesph" maxlength="13"/><br><span id="spouseworkphoneerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.spousesph"></form:errors></span>
				                  	<br><span class="err" id="spouseworkphoneerror"></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Nearest Friend/ Relative Not Living With You:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="Name_friend" name="Name_friend" /><br><span id="Name_frienderror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.name_friend"></form:errors></span>
				               
				                  </td>
				                </tr>
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Phone of Nearest Friend/ Relative Not Living With You:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="Phone_friend" name="Phone_friend"  maxlength="13"/><br><span id="Phone_frienderror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.phone_friend"></form:errors></span>
				                 <br><br>
				                  	<span class="err" ></span>
				                  </td>
				                  </tr>
				                 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have you ever had chiropractic care? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Chiropratic_care" value="yes" class="input_txt" id="yes1">yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Chiropratic_care" value="No" class="input_txt" id="No1">No
				                  	<span id="Chiropratic_careerror" style="color: red;font-style:italic;"></span></td>
				                </tr> 
				               </table>
				               <table align="right">
				               <tr>
				   </div> 
                     <td><br><input type="button" id="btnNext" class="submit_btn"  value="Next" /><br></td>
                  </tr>
				               </table>
              
                </td>
                </tr>
              
               
                </table>
                
                </div>
                </table>
               
                </div>
                </div>
                
                
      
    
          <div id="tabs-2">           
         <div id="right_content">
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div id="block2">
        	<div class="headings altheading">
        <img  src="resources/images/print.png" id="print1" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block2');" >
        	<h2>Present Complaint</h2>
	            
	            </div>
          <div class="contentbox">
        
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
                     <!--    
                      <table><tr><td></td><td><textarea rows="5" cols="10" name="sym1" id="sym1"></textarea> <input type="button" value="Add One More Symptom" onclick="check('symptom1')">
             <script type="text/javascript">
                     function hi()
                     {
                    	alert("hi");
                    	 document.getElementById("sym2").style.display="block"; 
                     }
                      
                      
                      </script>           
                       </td></tr>
                       <td></td><td  id="row1" ><textarea rows="5" cols="10" name="sym2" id="sym2" style="display:none "></textarea><input type="button" onclick="sym2()"></td>
                       <Td><input type="button" value="symptom" onclick=""></Td>
                       </table> -->
                    
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                       <span class="err">*</span>Please Describes Your Symptoms Briefly:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
                      &nbsp;&nbsp;&nbsp; <br><span class="err"></span>
                        <tr>
                      </div> 
                      <td valign="middle" align="left" class="input_txt"></td>
				                  <td valign="top" align="left" class="input_txt">
				                   <textarea rows="3" cols="25" placeholder="Specify your Symptoms" name="symptom[]" id="symptom1" onBlur="check(this)" ></textarea><span id="symptom1error" style="color: red;font-style:italic;"></span>
				                <p></p>
				                 <div id="multichoice"></div>
				                   <a href="javascript:void(0);" onclick="addMultichoice('multichoice');" style="text-decoration:none;" ><input type="button" value="Add one more Symptom" class="submit_btn2" id="morebutton" name=""/></a>

				                  	</td>
				                  	<td>
				                  	
				                  	<!-- <label for="amount"><b>Pain Scale:</b></label>
				                  	<input type="text" id="amount" name="Painscale"/>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider"></div> -->
				                  </td>
				                </tr>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
   <tr>
   <td width="510"></td><td></td>
                                 <!-- <td valign="middle" align="left" class="input_txt"></td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Specify your Symptoms" name="Symptom1" id="symptom1" onBlur="symptom1popup()"></textarea>&nbsp;&nbsp;&nbsp; 
				                  	</td>
				                  	<td>
				                  	<label for="amount"><b>Pain Scale:</b></label>
				                  	<input type="text" id="amount1" name="Painscale1"/>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider1"></div>
				                  </td>
				                </tr>
				                <tr>
                                 <td valign="middle" align="left" class="input_txt"></td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Specify your Symptoms" name="Symptom2" id="symptom2"></textarea>&nbsp;&nbsp;&nbsp; 
				                  	</td>
				                  	<td>
				                  	<label for="amount"><b>Pain Scale:</b></label>
				                  	<input type="text" id="amount2" name="Painscale2" />&nbsp;&nbsp;&nbsp;
				                  	<div id="slider2"></div>
				                  </td>
				                </tr> -->
				           
				           <tr class="row2">
                        <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Are These Symptoms Due to an Accident?</td>
				                  <td valign="top" align="left" class="input_txt">
				                  
				                  	<input type="radio" name="Symptom_Accident" value="yes" class="input_txt" id="yes">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Symptom_Accident" value="No" class="input_txt" id="No">No
				                  	 <span id="Symptom_Accidenterror" style="color: red;font-style:italic;"></span></td>
				                  	<td></td>
				                </tr>   
				                <tr class="row1">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Type Of Accident:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="Type_Of_Accident" class="input_cmbbx1" id="type_of_accident" onchange="checkAjaxPost()"  onclick='Checklight(this.value)';>

						                        <option selected="selected" value="" >--Select--</option>
						                    <option value="autoaccident" >Auto</option>				                   

											<option value="workaccident" >Work</option>
											
											<option value="other" id="other">Other</option>
				                   		</select>
				        		                   <input type="text" name="accident" id="accident" style='display:none' />
				                  <span id="type_of_accidenterror" style="color: red;font-style:italic;"></span> 	</td>
				                   	
				                </tr>  
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date Of Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker2" class="input_txtbx1" name="Date_Of_Accident"/><span id="datepicker2error" style="color: red;font-style:italic;"><form:errors path="PatientDetails.date_Of_Accident"></form:errors></span>
				                  </td>
				                  <td></td>
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Accident Reported:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Accident_Reported" value="yes" class="input_txt" id="yes2">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Accident_Reported" value="No" class="input_txt" id="No2">No
				                  	<span id="Accident_Reportederror" style="color: red;font-style:italic;"></span>
				                  	</td>
				                  
				                  
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Medical Treatment for this Condition: &nbsp;&nbsp;&nbsp;&nbsp;When:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker5" name="when1" /> <br><span id="datepicker5error" style="color: red;font-style:italic;"><form:errors path="patientDetails.when1"></form:errors></span></td>
				                  	<td></td>
				                  	</tr>
				                  	<tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Where:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="where1" name="where1"/><br><span id="where1error" style="color: red;font-style:italic;"><form:errors path="patientDetails.where1"></form:errors></span>
				                    </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have You Retained an Attorney for this Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Attorney_accident" value="yes" class="input_txt" id="yes5">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Attorney_accident" value="No" class="input_txt" id="No5">No
				                  	<span id="Attorney_accidenterror" style="color: red;font-style:italic;"></span>
				                  	</td>
				                <td></td>
				                </tr>
				                 
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name Of Attorney:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="NameOfAttorney" name="NameOfAttorney" /><br><span id="NameOfAttorneyerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.NameOfAttorney"></form:errors></span>
				                  
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span> Attorney Phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                 <%--  	<form>
															<input type="submit">
														</form> --%><input type="text" maxlength="13" class="input_txtbx1" id="phonenumber" name="Phone_Number" /><br><span id="phonenumbererror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.phone_Number"></form:errors></span>
				                  	<br>
				                  	<span class="err" id="phonenumbererror"></span>
				                  
				                  <td></td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Person at Fault for the Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="Fault_accident" name="Fault_accident" /><br><span id="Fault_accidenterror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.fault_accident"></form:errors></span></td>
				                  	<td></td>                                                                                        
				                 
				                </tr>
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>mls there a claim open </td>
				                  <td valign="top" align="left" class="input_txt">
				 <input type="radio" name="claim_open" value="yes" class="input_txt" id="claim_open" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="claim_open" value="No" class="input_txt" id="claim_open1">No
				                  	<span id="claim_openerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.claim_open"></form:errors></span></td>
				                  	<td></td>                                                                                        
				                 
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>What is your Dominant Hand </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="retain" value="R" class="input_txt" id="R">R&nbsp;&nbsp;&nbsp;<input type="radio" name="retain" value="L" class="input_txt" id="L">L
				               <span id="retainerror" style="color: red;font-style:italic;"></span>
				                </td>
				                <td></td>
				                </tr>
				                
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Would you like us to send your records to your family Physician  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="record" value="yes" class="input_txt" id="yes6" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="record" value="No" class="input_txt" id="No6">No
				                  	 <span id="recorderror" style="color: red;font-style:italic;"></span>
				                  	</td>
				                <td></td>
				                </tr>
				                <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>What is your Physician's Name </td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="phyname" name="phyname"/><br><span id="phynameerror" style="color: red;font-style:italic;"><form:errors path="patientDetails.where1"></form:errors></span>
				                    </tr>
				                
				                <tr class="row2">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>What is your Physician's Phone </td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="phyphone" name="phyphone" maxlength="13"/><br><span id="phyphoneerror" style="color: red;font-style:italic;"><form:errors path="patientDetails.where1"></form:errors></span>
				                   <span class="err" ></span>
				                    </tr>
				                     <tr class="row2">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Damages to your car </td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="car11" name="car11" /><br><span id="car11error" style="color: red;font-style:italic;"> <form:errors path="patientDetails.car11"></form:errors> </span>
				                   <span class="err" ></span>
				                    </tr>
				                     <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>	What body parts were x-rayed </td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="xray" name="xray"/><br><span id="xrayerror" style="color: red;font-style:italic;"><form:errors path="patientDetails.where1"></form:errors></span>
				                    </tr>
				                    
				                     <tr class="row2">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>what treatment was given </td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="treat" name="treat"/><br><span id="treaterror" style="color: red;font-style:italic;"><form:errors path="patientDetails.where1"></form:errors></span>
				                    </tr>
				                    
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Insurance Company of the at Fault Person:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="Insurance" name="Insurance" /><br><span id="Insuranceerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.insurance"></form:errors></span>
				                  <td></td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Insurance Company Phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="Insurance_phone" name="Insurance_phone" maxlength="13"/><br><span id="Insurance_phoneerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.insurance_phone"></form:errors></span>
				                  	<br>
				                  	<span class="err" id="phnoerror"></span>
				                  
				                  </td>
				                  </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of your auto insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="Name_auto" name="Name_auto" /><br><span id="Name_autoerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.name_auto"></form:errors></span>
				                  	<td> </td>
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>phone of your auto insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="Phone_auto" name="Phone_auto" maxlength="13" /><br><span id="Phone_autoerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.phone_auto"></form:errors></span>
				                  	<br>
				                  	<span class="err" id="phautoerror"></span>
				                  	 </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Policy#:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="policy" name="Policy" /><br><span id="policyerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.policy"></form:errors></span>
				                  <br>
				                  
				                  	</td>
				                 
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Your Health Insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="Name_health" name="Name_health" /><br><span id="Name_healtherror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.name_health"></form:errors></span></td>
				                  	
				                  <td></td>
				                </tr>
				            <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Phone of your Health Insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" maxlength="13" id="phhealth" name="Health_phone" /><br><span id="phhealtherror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.health_phone"></form:errors></span>
				                  	<br>
				                  	<span class="err" ></span>
				                  	</td>
				                  
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have You Ever Been Involved in a Previous Auto or Work Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Prev_accident" value="yes" class="input_txt" id="yes7">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Prev_accident" value="No" class="input_txt" id="No7">No
				                  	<span id="Prev_accidenterror" style="color: red;font-style:italic;"></span>
				                  	</td>
				                  	
				                 
				                  <td></td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>When:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker6" name="Prev_When" /><br><span id="datepicker6error" style="color: red;font-style:italic;"><form:errors path="PatientDetails.prev_When"></form:errors></span>
				                  	<td></td>
				                  	</tr>  </div> 
				                  	</table>
				                  	
				                  	<table align="right">
				                  	 <tr>
				  <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous" name="btnPrevious"  />&nbsp;</td>
                  <td>&nbsp;&nbsp;</td>
                  <td><br><input type="button" id="btnNext" class="submit_btn" name="btnNext1" value="Next" /><!-- <input type="button" class="submit_btn1"  id="btnNext1" value="Next" onclick="validate('this.value')"/> --><br></td>
                  </tr>
				                  	</table><!-- id="btnNext"  -->
               
                </td>
                </tr>
                
                </table>
                
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
        	<div id="block3">
        	<div class="headings altheading">
        	<img  src="resources/images/print.png" id="print2" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block3');" >
        	<h2>Medical/Social/Work History</h2>
	            </div>
	           
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>CheckBox if it applies to you,parents,siblings,children</td>
				                  <td valign="top" align="left" class="input_txt">
				                 <table>
				                 
				                 <tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Anemia" value="Anemia">Anemia </td>
				                  	 <td class="input_txt" align="left" style="width: 173px; "><input type="checkbox" name="Muscular" value="Muscular">MuscularDystrophy </td>
				                  	 <td class="input_txt" align="left" style="width: 129px; "><input type="checkbox" name="Rheumatic" value="Rheumatic">RheumaticFever </td>
				                  	 
				                  </tr>
				                  <tr>
				                  <td class="input_txt" align="left" style="width: 75px; "><input type="checkbox" name="Allergies" value="Allergies">Allergies</td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Cancer" value="Cancer">Cancer </td>
				                   <td class="input_txt" align="left"><input type="checkbox" name="Polio1" value="Polio1">Polio </td>
				                  </tr>
				                  <tr>
				                  	 <td valign="top" align="left" class="input_txt" style="width: 153px; "><input type="checkbox" name="Multiple" value="Multiple">MultipleSclerosis</td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Scarlet" value="Scarlet">ScarletFever </td>
                                      <td class="input_txt" align="left"><input type="checkbox" name="HIV" value="HIV">HIV </td>

				                  	            	 </tr>
				                  	 <tr>
				                  	  <td class="input_txt" align="left" style="width: 114px; "><input type="checkbox" name="Sinus" value="Sinus">Sinus Trouble </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Asthma" value="Asthma">Asthma </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="German" value="German">GermanMeasles </td>
				                  	 </tr>
				                  	 <tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Nervousness" value="Nervousness">Nervousness </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Numbness" value="Numbness">Numbness </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Convulsions" value="Convulsions">Convulsions </td>
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Epilepsy" value="Epilepsy">Epilepsy </td>
				                  	<td valign="top" align="left" class="input_txt" style="width: 101px; "><input type="checkbox" name="Concussion" value="Concussion">Concussion </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Dizziness" value="Dizziness">Dizziness </td>
				                  	
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Neuritis" value="Neuritis">Neuritis </td>
				                  	 <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Rheumatism" value="Rheumatism">Rheumatism </td>
				                  	 <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Diabetes" value="Diabetes">Diabetes</td>
				                  	
				                  	</tr>
				                  	<tr><td valign="top" align="left" class="input_txt"><input type="checkbox" name="Arthritis" value="Arthritis">Arthritis </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Venereal" value="Venereal">VenerealDisease</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Backaches" value="Backaches">Backaches </td></tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Tuberculosis" value="Tuberculosis">Tuberculosis	</td>    
				                    <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Liver" value="Liver">LiverDisease </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Kidney" value="Kidney">KidneyDisease </td>
				                  	
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Thyroid" value="Thyroid">ThyroidDisease </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Alcoholism" value="Alcoholism">Alcoholism </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Hepatitis" value="Hepatitis">Hepatitis </td>
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Mental" value="Mental">MentalIllness </td>
				                  	<td valign="top" align="left" class="input_txt" style="width: 157px; "><input type="checkbox" name="High" value="High">HighBloodPressure</td>
				                  	<td valign="top" align="left" class="input_txt" style="width: 149px; "><input type="checkbox" name="Digestive" value="Digestive">DigestiveDisorders </td>
				                  	
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Heart" value="Heart">Heart trouble	</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Other" value="Other"onclick="this.form.ifother.style.visibility = this.checked? 'visible' : 'hidden'"/>other </td>
				                 <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="ifother" style="visibility:hidden" name="Ifother" placeholder="If other" /></td>
				                  	</tr>
				                  	</table> 
				                  	
				                  
				                  <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Surgeries or Major Illnesses You Have Had: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="Illness" name="Illness" /><br><span id="Illnesserror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.illness"></form:errors></span>
				                  	</tr>   
				                 
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Dates:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker3" name="Dates" /><br><span id="datepicker3error" style="color: red;font-style:italic;"><form:errors path="PatientDetails.dates"></form:errors></span>
				                  	</tr>    		
				                  	
				                  	<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Medications You are Currently Taking and Why:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Medications" name="Medications" id="Medications"></textarea>&nbsp;&nbsp;&nbsp;<br><span id="Medicationserror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.medications"></form:errors></span>
				                  	</tr> 
				                  	
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do You:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="checkbox" id="Drink" name="Drink" value="Drink">Drink Regularly&nbsp; 
				                  	<input type="checkbox" id="Smoke"name="Smoke" value="Smoke">Smoke&nbsp;
				                  	<input type="checkbox" id="Drugs"name="Drugs" value="Drugs">Take Recreational Drugs &nbsp;
				                  	<input type="checkbox" id="Diet"name="Diet" value="Diet">Eat a Poor Diet &nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" id="Exercise" name="Exercise" value="Exercise">Exercise Regularly &nbsp;
				                  	
				                  	<span id="doyouerror" style="color: red;font-style:italic;"></span>
				                  	</tr> 
				                  	<tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do You Work Around Hazardous Substances:  </td>
				  <td valign="top" align="left" class="input_txt">
				  <div id="send_to">
				  <input type="radio" name="Hazardous" value="yes" id="Hazardous" class="input_txt"  onclick="toggle2('show2')">Yes&nbsp;&nbsp;&nbsp;
				 
    <!-- <span id="listerror" style="color: red;font-style:italic;"></span> --><input type="radio" name="Hazardous" id="Hazardous1" value="No" class="input_txt"onclick="toggle2('hide2')">No
			       <label>If yes,Please List: </label><input type="text" id="list" name="Hazardousyes"  /><span class="err" id="Hazardouserror"></span>
			      </div>
			      </td>
				  </tr>
				  <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Females Only:<br>Are you pregnant:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Female" value="yes" class="input_txt" id="yes9">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Female" value="No" class="input_txt" id="No9">No
				                  	<span id="Femaleerror"style="color: red;font-style:italic;"></span>
				                  	</td>
				                
				                  	</tr>
				                  	<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Dr:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="Dr" name="Dr" /><br><span id="Drerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.dr"></form:errors></span>
				                  	</tr>  
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Signature:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="Patient" name="Patient" /><br><span id="Patienterror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.patient"></form:errors></span>
				                  	</tr>   </div>
				                  	<table align="right">
				  <tr>
				  <td><br><input type="button" id="btnPrevious" class="submit_btn" name="Previous1" value="Previous" />&nbsp;</td>
                 
 				  <td>&nbsp;&nbsp;</td>
             		 
                  <td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');"></td>
                  <td>&nbsp;&nbsp;</td>
                 <td><a href="viewpatient" class="submit_btn" style="color:white" id="cancelid">Cancel</a></td>
				 
			</tr>
			</table>
				                  	 
				                  	</table>
				                   
				                  	</td>
				                  	</tr>
				                  	</table>
				                  	</div>
				                  	
				                  	</td>
				                  	</tr>
				                  	
				                  	</table>
				                  	</c:when>
				                  	<c:otherwise>
				                  	<table cellpadding="0" cellspacing="0" border="0" width="100%">
                       <br>
                        <br>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name" value="${first.name}"/><br><span class="err"><form:errors path="PatientDetails.Name"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span> Date:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker" class="input_txtbx1" name="Date" value="${first.date}"/><br><span class="err"><form:errors path="PatientDetails.Date"></form:errors></span>
				                  </td>
				                </tr>
                                  <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Street Address:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="StreetAddress" value="${first.streetAddress}"/><br><span class="err"><form:errors path="PatientDetails.StreetAddress"></form:errors></span>
				                  </td>
				                </tr>
                                  <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>City:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="City" value="${first.city}"/><br><span class="err"><form:errors path="PatientDetails.City"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>State:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="State" value="${first.state }"/><br><span class="err"><form:errors path="PatientDetails.State"></form:errors></span>
				                  </td>
				                </tr>
                               <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>ZipCode:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="zipcode1" name="ZipCode" value="${first.zipCode}"/><br><span class="err"><form:errors path="PatientDetails.ZipCode"></form:errors></span>
				                <br><span class="err" id="zipcodeerror1"></span>
                                     </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Home phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="homephone" name="Homephone" value="${first.homephone }"/><br><span class="err"><form:errors path="PatientDetails.Homephone"></form:errors></span>
				                <br>
				                <span class="err" id="homephoneerror"></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>E-mail Id:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Emailid" value="${first.emailid}"/><br><span class="err"><form:errors path="PatientDetails.Emailid"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>MobileNumber:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="mobilenumber" name="MobileNumber" value="${first.mobileNumber}"/><br><span class="err"><form:errors path="PatientDetails.MobileNumber"></form:errors></span>
				                <br><span class="err" id="homephoneerror"></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>DateOfBirth:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker1" class="input_txtbx1" name="DateOfBirth" value="${first.dateOfBirth}"/><br><span class="err"><form:errors path="PatientDetails.DateOfBirth"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Social Security Number:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="socialsecuritynumber" name="SocialSecurityNumber" value="${first.socialSecurityNumber}"/><br><span class="err"><form:errors path="PatientDetails.SocialSecurityNumber"></form:errors></span>
				                 <br>
				                 <span classs="err" id="socialsecuritynumber"></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Gender:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Gender" value="Male" class="input_txt" >Male&nbsp;&nbsp;&nbsp;<input type="radio" name="Gender" value="Female" class="input_txt">Female&nbsp;&nbsp;&nbsp;<input type="radio" name="Gender" value="2" class="input_txt">Transgender</td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>MaritalStatus:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="MaritalStatus" value="Single" class="input_txt" >Single&nbsp;&nbsp;&nbsp;<input type="radio" name="MaritalStatus" value="Married" class="input_txt">Married&nbsp;&nbsp;&nbsp;<input type="radio" name="MaritalStatus" value="Divorced" class="input_txt">Divorced</td>
				                
				                </tr>
				                
				                </table>
				                <td align="left" valign="top"> <h2 class="quck-txt"></h2>
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							 <tr class="row1">
							 
				                  <td valign="middle" align="left" class="input_txt" width="380"><span class="err">*</span>Are you:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Areyou" value="Student" class="input_txt"  onchange="toggle3('show3')">Student&nbsp;&nbsp;&nbsp;<input type="radio" name="Areyou" value="Employee" class="input_txt"  onclick="toggle3('hide3')">Employee</td>
				                  
				                </tr>
							</table>
							<div id="student" style="display:none;">
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt" width="380"><span class="err">*</span>Student:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Student" value="FullTime" class="input_txt" >Full Time&nbsp;&nbsp;&nbsp;<input type="radio" name="Student" value="PartTime" class="input_txt">Part Time</td>
				                  
				                </tr>
							
							</table>
							</div>
							<div id="employee" >
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt" width="380"><span class="err"></span>Employer Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerName" value="${first.employerName}"/>

				                  </td>
				                </tr>
				                
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>Occupation:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Occupation" value="${first.occupation}"/>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>Employer Address:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerAddress" value="${first.employerAddress }"/>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>WorkPhone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Workphone" value="${first.workphone}"/>

				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt" ><span class="err"></span>EmployerCity:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerCity" value="${first.employerCity}"/>

				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>State:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Estate" value="${first.estate}"/>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>ZipCode:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id"zipcode" name="Ezip" value="${first.ezip}"/>
				                  	<br>
				                  	<span class="err" id="zipcode"></span>
				                  </td>
				                </tr>
							
							
							</table>
							</div>
							
							
							
				                
				                <table cellpadding="0" cellspacing="0" border="0" width="100%">
				                
				                <tr class="row1">
				               
				                  <td valign="middle" align="left" class="input_txt" width="300"><span class="err">*</span>Spouse's or significant others name:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="SpousesName" value="${first.spousesName}"/><br><span class="err"><form:errors path="PatientDetails.SpousesName"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouses Employer:&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="SpousesEmp" value="${first.spousesEmp}"/><br><span class="err"><form:errors path="PatientDetails.SpousesEmp"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouse's Workphone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="spouseworkphone" name="Spousesph" value="${first.spousesph}"/><br><span class="err"><form:errors path="PatientDetails.Spousesph"></form:errors></span>
				                  	<br>
				                  	<span class="err" id="spouseworkphoneerror"></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Nearest Friend/ Relative Not Living With You:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name_friend" value="${first.name_friend}"/><br><span class="err"><form:errors path="PatientDetails.Name_friend"></form:errors></span>
				               
				                  </td>
				                </tr>
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Phone of Nearest Friend/ Relative Not Living With You:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="ph2" name="Phone_friend" value="${first.phone_friend}"/><br><span class="err"><form:errors path="PatientDetails.Phone_friend"></form:errors></span>
				                  	<br><span class="err" id="ph2error"></span>
				                  </td>
				                  </tr>
				                 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have you ever had chiropractic care? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Chiropratic_care" value="yes" class="input_txt" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Chiropratic_care" value="No" class="input_txt">No</td>
				                </tr> 
				               </table>
				               <table align="right">
				               <tr>
				  
                     <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
                  </tr>
				               </table>
              
                </td>
                </tr>
              
               
                </table>
                
                </div>
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
        	<h2>Present Complaint</h2>
	            </div>
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tr>
                        <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Please Describe Your Symptoms Briefly:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Specify your Symptoms" name="symptom[]" id="symptom"></textarea>&nbsp;&nbsp;&nbsp; <br><span class="err"><%-- <form:errors path="PatientDetails.Symptoms"></form:errors> --%></span>
				                  	</td><td><a onclick="newpopup()">Quadruple Visual Analogue Scale</a></td>
				                  	<td>
				                  	<!-- <label for="amount"><b>Pain Scale:</b></label>
				                  	<input type="text" id="amount" name="Painscale"/>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider"></div> -->
				                  </td>
				                </tr>
				                <%-- <tr>
                                 <td valign="middle" align="left" class="input_txt"></td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Specify your Symptoms" name="Symptom1" id="symptom1" onBlur="symptom1popup()">${first.symptom1}</textarea>&nbsp;&nbsp;&nbsp; 
				                  	</td>
				                  	<td>
				                  	<label for="amount1"><b>Pain Scale:</b></label>
				                  	<input type="text" id="amount1" name="Painscale1"/>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider1"></div>
				                  </td>
				                </tr>
				                <tr>
                                 <td valign="middle" align="left" class="input_txt"></td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Specify your Symptoms" name="Symptom2" id="symptom2" onBlur="symptom2popup()">${first.symptom2}</textarea>&nbsp;&nbsp;&nbsp; 
				                  	</td>
				                  	<td>
				                  	<label for="amount1"><b>Pain Scale:</b></label>
				                  	<input type="text" id="amount2" name="Painscale2" />&nbsp;&nbsp;&nbsp;
				                  	<div id="slider2"></div>
				                  </td>
				                </tr> --%>
				           <tr class="row2">
                        <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Are These Symptoms Due to an Accident?</td>
				                  <td valign="top" align="left" class="input_txt">
				                  
				                  	<input type="radio" name="Symptom_Accident" value="yes" class="input_txt" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Symptom_Accident" value="No" class="input_txt">No</td>
				                  	<td></td>
				                </tr>   
				                <tr class="row1">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Type Of Accident:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="Type_Of_Accident" class="input_cmbbx1" onchange='Checklight(this.value)';>
						                  <option selected="selected" value="" >--Select--</option>
						                    <option  value="autoaccident" >Auto</option>
											<option value="workaccident">Work</option>											
											<option value="other">Other</option>
				                   		</select>
				                   <input type="text" name="accident" id="accident" style='display:none'/>
				                   	</td>
				                   	
				                </tr>  
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date Of Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker2" class="input_txtbx1" name="Date_Of_Accident" value="${first.date_Of_Accident}"/><span class="err"><form:errors path="PatientDetails.Date_Of_Accident"></form:errors></span>
				                  </td>
				                  <td></td>
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Accident Reported:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Accident_Reported" value="yes" class="input_txt" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Accident_Reported" value="No" class="input_txt">No</td>
				                  
				                  
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Medical Treatment for this Condition: &nbsp;&nbsp;&nbsp;&nbsp;When:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker5" name="when1" value="${first.when1}"/> <span class="err"><form:errors path="PatientDetails.when1"></form:errors></span></td>
				                  	<td></td>
				                  	</tr>
				                  	<tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Where:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="where1" value="${first.where1}"/><span class="err"><form:errors path="PatientDetails.where1"></form:errors></span>
				                    </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have You Retained an Attorney for this Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Attorney_accident" value="yes" class="input_txt" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Attorney_accident" value="No" class="input_txt">No</td>
				                <td></td>
				                </tr>
				                 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>What is your Dominant Hand </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="retain" value="R" class="input_txt" >R&nbsp;&nbsp;&nbsp;<input type="radio" name="retain" value="L" class="input_txt">L</td>
				                <td></td>
				                </tr>
				                
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Would you like us to send your records to your family Physician  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="record" value="yes" class="input_txt" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="record" value="No" class="input_txt">No</td>
				                <td></td>
				                </tr>
				                <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>What is your Physician's Name </td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="phyname" value="${first.phyname}"/><br><span class="err"><form:errors path="patientDetails.where1"></form:errors></span>
				                    </tr>
				                
				                <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>What is your Physician's Phone </td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="phyphone" name="phyphone" value="${first.phyphone}" maxlength="13"/><br><span class="err"><form:errors path="patientDetails.where1"></form:errors></span>
				                   <span class="err" id="phynumbererror"></span>
				                    </tr>
				                    <tr class="row2">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Damages to your car </td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="car11" name="car11" value="${first.car11}" /><br><span id="car11error" style="color: red;font-style:italic;"><form:errors path="patientDetails.car11"></form:errors></span>
				                   <span class="err" ></span>
				                    </tr>
				                     <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>	What body parts were x-rayed </td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="xray" value="${first.xray}"/><br><span class="err"><form:errors path="patientDetails.where1"></form:errors></span>
				                    </tr>
				                    
				                     <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>what treatment was given </td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="treat" value="${first.treat}"/><br><span class="err"><form:errors path="patientDetails.where1"></form:errors></span>
				                    </tr>
				                
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name Of Attorney:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="NameOfAttorney" value="${first.nameOfAttorney}"/><span class="err"><form:errors path="PatientDetails.NameOfAttorney"></form:errors></span>
				                  
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Attorney Phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="phonenumber" name="Phone_Number" value="${first.phone_Number}"/><span class="err"><form:errors path="PatientDetails.Phone_Number"></form:errors></span>
				                  	<span class="err" id="phonenumbererror"></span>
				                  </td>
				              
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Person at Fault for the Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Fault_accident" value="${first.fault_accident}"/><span class="err"><form:errors path="PatientDetails.Fault_accident"></form:errors></span></td>
				                  	<td></td>                                                                                        
				                 
				                </tr>
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>mls there a claim open </td>
				                  <td valign="top" align="left" class="input_txt">
				                  
				 <input type="radio" name="claim_open" value="yes" class="input_txt" id="claim_open" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="claim_open" value="No" class="input_txt" id="claim_open">No
				                  	<span id="claim_openerror" style="color: red;font-style:italic;"><form:errors path="PatientDetails.claim_open"></form:errors></span></td>
				                  	<td></td>                                                                                        
				                 
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Insurance Company of the at Fault Person:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Insurance" value="${first.insurance}"/><span class="err"><form:errors path="PatientDetails.Insurance"></form:errors></span></td>
				                  <td></td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span> Insurance Company Phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="phno" name="Insurance_phone" value="${first.insurance_phone}"/><span class="err"><form:errors path="PatientDetails.Insurance_phone"></form:errors></span>
				                  	<br>
				                  	<span class="err" id="phnoerror"></span>
				                 </td>
				                  </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of your auto insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name_auto" value="${first.name_auto}"/><span class="err"><form:errors path="PatientDetails.Name_auto"></form:errors></span></td>
				                  	<td> </td>
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>phone of your auto insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="phauto" name="Phone_auto" value="${first.phone_auto}"/><span class="err"><form:errors path="PatientDetails.Phone_auto"></form:errors></span></td>
				                  	<br><span class="err" id="phautoerror"></span>
				                  	<td> </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Policy#:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="policy" name="Policy" value="${first.policy}"/><span class="err"><form:errors path="PatientDetails.Policy"></form:errors></span></td>
				                  	<br>
				                  	<span class="err" id="policyerror"></span>
				                  	<td> </td>
				                 
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Your Health Insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name_health" value="${first.name_health}"/><span class="err"><form:errors path="PatientDetails.Name_health"></form:errors></span></td>
				                  	
				                  <td></td>
				                </tr>
				            <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Phone of your Health Insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="phhealth" name="Health_phone" value="${first.health_phone}"/><span class="err" id="phhealtherror"><form:errors path="PatientDetails.Health_phone"></form:errors></span></td>
				                  <br>
				                  <span class="err" id="phhealtherror">
				                  </span>
				                  	<td></td>
				                  
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have You Ever Been Involved in a Previous Auto or Work Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Prev_accident" value="yes" class="input_txt" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Prev_accident" value="No" class="input_txt">No</td>
				                  	
				                 
				                  <td></td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>When:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Prev_When" value="${first.prev_When}"/><span class="err"><form:errors path="PatientDetails.Prev_When"></form:errors></span>
				                  	<td></td>
				                  	</tr>   
				                  	</table>
				                  	
				                  	<table align="right">
				                  	 <tr>
				  <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous" style = "display:none" />&nbsp;</td>
                  <td>&nbsp;&nbsp;</td>
                  <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
                  </tr>
				                  	</table>
               
                </td>
                </tr>
                
                </table>
                
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
        	<div class="headings altheading">
        	<h2>Medical/Social/Work History</h2>
	            </div>
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>CheckBox if it applies to you,parents,siblings,children</td>
				                  <td valign="top" align="left" class="input_txt">
				                 <table>
				                 
				                 <tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Anemia" value="Anemia">Anemia </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Muscular" value="Muscular">Muscular Dystrophy </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Rheumatic" value="Rheumatic">Rheumatic Fever </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Allergies" value="Allergies">Allergies</td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Cancer" value="Cancer">Cancer </td>
				                   <td class="input_txt" align="left"><input type="checkbox" name="Polio1" value="Polio1">Polio </td>
				                  </tr>
				                  <tr>
				                  	 <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Multiple" value="Multiple">Multiple Sclerosis</td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Scarlet" value="Scarlet">ScarletFever </td>
                                      <td class="input_txt" align="left"><input type="checkbox" name="HIV" value="HIV">HIV </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Sinus" value="Sinus">Sinus Trouble </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Asthma" value="Asthma">Asthma </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="German" value="German">German Measles </td>
				                  	 </tr>
				                  	 <tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Nervousness" value="Nervousness">Nervousness </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Numbness" value="Numbness">Numbness </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Convulsions" value="Convulsions">Convulsions </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Epilepsy" value="Epilepsy">Epilepsy </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Concussion" value="Concussion">Concussion </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Dizziness" value="Dizziness">Dizziness </td>
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Neuritis" value="Neuritis">Neuritis </td>
				                  	 <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Rheumatism" value="Rheumatism">Rheumatism </td>
				                  	 <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Diabetes" value="Diabetes">Diabetes</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Arthritis" value="Arthritis">Arthritis </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Venereal" value="Venereal">Venereal Disease</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Backaches" value="Backaches">Backaches </td>
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Tuberculosis" value="Tuberculosis">Tuberculosis	</td>    
				                    <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Liver" value="Liver">Liver Disease </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Kidney" value="Kidney">Kidney Disease </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Thyroid" value="Thyroid">Thyroid Disease </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Alcoholism" value="Alcoholism">Alcoholism </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Hepatitis" value="Hepatitis">Hepatitis </td>
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Mental" value="Mental">Mental Illness </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="High" value="High">High Blood Pressure</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Digestive" value="Digestive">Digestive Disorders </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Heart" value="Heart">Heart trouble	</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Other" value="Other">other </td>
				                 <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="Ifother" placeholder="If other" /></td>
				                  	</tr>
				                  	
				                  	</table> 
				                  <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Surgeries or Major Illnesses You Have Had: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Illness" value="${first.illness}"/><span class="err"><form:errors path="PatientDetails.Illness"></form:errors></span>
				                  	</tr>   
				                 
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Dates:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker3" name="Dates" value="${first.dates }"/><span class="err"><form:errors path="PatientDetails.Dates"></form:errors></span>
				                  	</tr>    		
				                  	
				                  	<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Medications You are Currently Taking and Why:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Medications" name="Medications">${first.medications}</textarea>&nbsp;&nbsp;&nbsp;
				                  	</tr> 
				                  	
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do You:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="checkbox" name="Drink" value="Drink">Drink Regularly	&nbsp;&nbsp;&nbsp;&nbsp; 
				                  	<input type="checkbox" name="Smoke" value="Smoke">Smoke	&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Drugs" value="Drugs">Take Recreational Drugs &nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Diet" value="Diet">Eat a Poor Diet &nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Exercise" value="Exercise">Exercise Regularly &nbsp;&nbsp;&nbsp;&nbsp;
				                  	
				                  	
				                  	</tr> 
				                  	<tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do You Work Around Hazardous Substances:  </td>
				  <td valign="top" align="left" class="input_txt">
				  <div id="send_to">
				  <input type="radio" name="Hazardous" value="yes" class="input_txt" >Yes&nbsp;&nbsp;&nbsp;<div id="send_to_one">
    </div><input type="radio" name="Hazardous" value="No" class="input_txt">No <label>If yes,Please List: </label><input type="text" id="list" name="Hazardousyes" />
			      
			      </div>
			      </td>
				  </tr>
				  <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Females Only:<br>Are you pregnant:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Female" value="yes" class="input_txt" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Female" value="No" class="input_txt">No</td>
				                
				                  	</tr>
				                  	<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Dr:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Dr" value="${first.dr}"/><span class="err"><form:errors path="PatientDetails.Dr"></form:errors></span>
				                  	</tr>  
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Signature:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Patient" value="${first.patient}"/><span class="err"><form:errors path="PatientDetails.Patient"></form:errors></span>
				                  	</tr>  
				                  	<table align="right">
				  <tr>
				  <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  />&nbsp;</td>
                 
 				  <td>&nbsp;&nbsp;</td>
             		
				 <td>&nbsp;&nbsp;</td>
                  <td><input type="submit" class="submit_btn" value="Save" id="saveid"></td>
                  <td>&nbsp;&nbsp;</td>
                  <td><a href="viewpatient" class="submit_btn" style="color:white" id="cancelid">Cancel</a></td>
				 
			</tr>
			</table>
				                  	 
				                  	</table>
				                   
				                  	</td>
				                  	</tr>
				                  	</table>
				                  	</div>
				                  	
				                  	</td>
				                  	</tr>
				                  	
				                  	</table>
				                  	</c:otherwise>
				                  	</c:choose>
				                  	</div>
				                  	
				                  	</div>
				                  	</div>
			
			</body>
			</html>
		
<script> 


  

  $(function() {
	    $( "#slider" ).slider({
	      value:1,
	      min: 0,
	      max: 10,
	      step: 1,
	      slide: function( event, ui ) {
	        $( "#amount" ).val(+ ui.value );
	      }
	    });
	    $( "#amount" ).val(+ $( "#slider" ).slider( "value" ) );
	  });
   $(function() {
	    $( "#slider1" ).slider({
	      value:1,
	      min: 0,
	      max: 10,
	      step: 1,
	      slide: function( event, ui ) {
	        $( "#amount1" ).val(+ ui.value );
	      }
	    });
	    $( "#amount1" ).val(+ $( "#slider1" ).slider( "value" ) );
	  });
 
  $(function() {
	    $( "#slider2" ).slider({
	      value:1,
	      min: 0,
	      max: 10,
	      step: 1,
	      slide: function( event, ui ) {
	        $( "#amount2" ).val(+ ui.value );
	      }
	    });
	    $( "#amount2" ).val(+ $( "#slider2" ).slider( "value" ) );
	  });
 

  $(document).ready(function(){
	  
	    $("#send_to_one").hide();
	  
	    $("input:radio[name='Hazordous']").change(function(){  

	            if(this.value == '0' && this.checked){
	              $("#send_to_one").show();
	            }else{
	              $("#send_to_one").hide();
	            }

	    });

	});
  </script>
   
  <!-- <script type="text/javascript">
  
function Checklight(val){
 var element=document.getElementById('accident');
 var type1=document.getElementById('type_of_accident');
 var type = type1.options[type1.selectedIndex].value;
 /* document.location.href = "/header.jsp?value=type"; */
 
 if(val=='autoaccident')
	 {
 popupWindow = window.open("dutiesunderduress" ,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
	 }
 if(val=='other')
 			{
   				element.style.display='block';
   				element.focus(); 
 			}
			 else  
 				  element.style.display='none';

} 
</script> -->

 <script type="text/javascript">
function toggle3(value){
	/* alert(value); */
	var e = document.getElementById('student');
	var e1=document.getElementById('employee');
if(value=='show3')
	{
 e.style.display="block";
 e1.style.display="none";
	}
else
	{
 e.style.display="none";
 e1.style.display="block";
	}
}

</script>

<script type="text/javascript">
function toggle2(value){
if(value=='show2')
 document.getElementById('list').style.visibility='visible';
else
 document.getElementById('list').style.visibility='hidden';
}
</script>
<script>

</script> 
        <jsp:include page="footer.jsp"></jsp:include>







