<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/tabs.css" type="text/css" />
 <script src="resources/js/tabs-1.9.1.js"></script>
  <script src="resources/js/tabs-ui.js"></script>
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
<!-- <script type="text/javascript">
window.onload(){
	alert("onload");
	Checkpos(val);
	work(val);
	Checklight(val);
};
</script> -->
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
<style>
  /* force a height so the tabs don't jump as content height changes */
  #tabs .tabs-spacer { float: left; height: 200px; }
  .tabs-bottom .ui-tabs-nav { clear: left; padding: 0 .2em .2em .2em; }
  .tabs-bottom .ui-tabs-nav li { top: auto; bottom: 0; margin: 0 .2em 1px 0; border-bottom: auto; border-top: 0; }
  .tabs-bottom .ui-tabs-nav li.ui-tabs-active { margin-top: -1px; padding-top: 1px; }
  </style>
  <script type="text/javascript">
  function confirmation() 
	{
	var answer = confirm("Are you Sure You Want to Delete Participant ?")
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
  </script>
  
  <script>
  $(function() {
	$("#job_classification").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>


<script>
  $(function() {
	$("#doyou").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#injury_occur").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#saw_accident").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#title").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#present_job").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#absenteeism").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#lighting").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#how_much").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#how_often").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#where_to_where").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#jobpp").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#warea").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#emp").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#changes_in_job").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
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


function checkValid(e)
{
	
	
	
	 document.getElementById("job_classificationerror").innerHTML=" ";
		
		if(document.getElementById("job_classification").value=="")
		{
		document.getElementById("job_classificationerror").innerHTML="Required Field Should not be Empty";
		 document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		return false;
		}
		
		document.getElementById("job_classificationerror").innerHTML="";
	    if(document.getElementById("job_classification").value.length<4 || document.getElementById("job_classification").value.length>=32)
	    {
	    	
	    	document.getElementById("job_classificationerror").innerHTML="Name should be of length 4 to 32";
	    	
	        return false;
	    }
	    
	    
		document.getElementById("injury_occurerror").innerHTML=" ";
		
		if(document.getElementById("injury_occur").value=="")
		{
		document.getElementById("injury_occurerror").innerHTML="Required Field Should not be Empty";
		document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		return false;
		}
		
		document.getElementById("injury_occurerror").innerHTML="";
	    if(document.getElementById("injury_occur").value.length<4 || document.getElementById("injury_occur").value.length>=32)
	    {
	    	
	    	document.getElementById("injury_occurerror").innerHTML="Should be of length 4 to 32";
	    	document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	        return false;
	    }
	    
	    
	document.getElementById("saw_accidenterror").innerHTML=" ";
		
		if(document.getElementById("saw_accident").value=="")
		{
		document.getElementById("saw_accidenterror").innerHTML="Required Field Should not be Empty";
		document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		return false;
		}
		 
		document.getElementById("saw_accidenterror").innerHTML="";
	    if(document.getElementById("saw_accident").value.length<4 || document.getElementById("saw_accident").value.length>=32)
	    {
	    	
	    	document.getElementById("saw_accidenterror").innerHTML="Should be of length 4 to 32";
	    	document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	        return false;
	    }
	    
	document.getElementById("titleerror").innerHTML=" ";
		
		if(document.getElementById("title").value=="")
		{
		document.getElementById("titleerror").innerHTML="Required Field Should not be Empty";
		document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		return false;
		}
		
		
		document.getElementById("titleerror").innerHTML="";
	    if(document.getElementById("title").value.length<4 || document.getElementById("title").value.length>=32)
	    {
	    	
	    	document.getElementById("titleerror").innerHTML="Should be of length 4 to 32";
	    	document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	        return false;
	    }
	    
	    document.getElementById("present_joberror").innerHTML=" ";
		
		if(document.getElementById("present_job").value=="")
		{
		document.getElementById("present_joberror").innerHTML="Required Field Should not be Empty";
		document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		return false;
		}
		
		/* document.getElementById("present_joberror").innerHTML="";
	    if(document.getElementById("present_job").value.length<4 || document.getElementById("present_job").value.length>=32)
	    {
	    	
	    	document.getElementById("present_joberror").innerHTML="Should be of length 4 to 32";
	    	document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	        return false;
	    } */
	    
	    document.getElementById("absenteeismerror").innerHTML="";
		if(document.getElementById("absenteeism").value!="")
		{
			if(document.getElementById("absenteeism").value=="")
		{
			document.getElementById("absenteeismerror").innerHTML="Required Field Should not be Empty";
			document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
			return false;
			}
	   
	    }
		
		
	 document.getElementById("absenteeismerror").innerHTML="";
		if(document.getElementById("absenteeism").value!="")
		{
	    if(document.getElementById("absenteeism").value.length<4 || document.getElementById("absenteeism").value.length>=32)
	    {
	    	
	    	document.getElementById("absenteeismerror").innerHTML="Absenteeism should be of length 4 to 32";
	    	document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	        return false;
	    }
	    }
		
		document.getElementById("how_mucherror").innerHTML=" ";
		
		if(document.getElementById("how_much").value=="")
		{
		document.getElementById("how_mucherror").innerHTML="Required Field Should not be Empty";
		document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		return false;
		}
		
	document.getElementById("how_oftenerror").innerHTML=" ";
		
		if(document.getElementById("how_often").value=="")
		{
		document.getElementById("how_oftenerror").innerHTML="Required Field Should not be Empty";
		document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		return false;
		}
		
		document.getElementById("how_oftenerror").innerHTML="";
	    if(document.getElementById("how_often").value.length<4 || document.getElementById("how_often").value.length>=32)
	    {
	    	
	    	document.getElementById("how_oftenerror").innerHTML="Should be of length 4 to 32";
	    	document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	        return false;
	    }
	    
	document.getElementById("where_to_whereerror").innerHTML=" ";
		
		if(document.getElementById("where_to_where").value=="")
		{
		document.getElementById("where_to_whereerror").innerHTML="Required Field Should not be Empty";
		document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		return false;
		}
		
		document.getElementById("where_to_whereerror").innerHTML="";
	    if(document.getElementById("where_to_where").value.length<4 || document.getElementById("where_to_where").value.length>=32)
	    {
	    	
	    	document.getElementById("where_to_whereerror").innerHTML="Should be of length 4 to 32";
	    	document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	        return false;
	    }
	    else
		 {
		  document.getElementById("where_to_whereerror").innerHTML="";
		  document.getElementById('btnvisible1').style.visibility='hidden';
		  document.getElementById('btnNext').style.visibility='visible';
		  document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";		 
		 }
	    
	    document.getElementById("jobpperror").innerHTML="";
		if(document.getElementById("jobpp").value!="")
		{
	    if(document.getElementById("jobpp").value.length<4 || document.getElementById("jobpp").value.length>=32)
	    {
	    	
	    	document.getElementById("jobpperror").innerHTML="Name should be min 4 and max 32";
	    	document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	        return false;
	    }
	    }
		
		 else
		 {
		  document.getElementById("jobpperror").innerHTML="";
		  document.getElementById('btnvisible1').style.visibility='hidden';
		  document.getElementById('btnNext').style.visibility='visible';
		  document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";		 
		 }
}
  
</script>
  <script>
function checknext(){
	
document.getElementById("job_classificationerror").innerHTML=" ";
	
	if(document.getElementById("job_classification").value=="")
	{
	document.getElementById("job_classificationerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("job_classificationerror").innerHTML="";
    if(document.getElementById("job_classification").value.length<4 || document.getElementById("job_classification").value.length>=32)
    {
    	
    	document.getElementById("job_classificationerror").innerHTML="Name should be of length 4 to 32";
    	
        return false;
    }
    

	document.getElementById("injury_occurerror").innerHTML=" ";
	
	if(document.getElementById("injury_occur").value=="")
	{
	document.getElementById("injury_occurerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("injury_occurerror").innerHTML="";
    if(document.getElementById("injury_occur").value.length<4 || document.getElementById("injury_occur").value.length>=32)
    {
    	
    	document.getElementById("injury_occurerror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
document.getElementById("saw_accidenterror").innerHTML=" ";
	
	if(document.getElementById("saw_accident").value=="")
	{
	document.getElementById("saw_accidenterror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("saw_accidenterror").innerHTML="";
    if(document.getElementById("saw_accident").value.length<4 || document.getElementById("saw_accident").value.length>=32)
    {
    	
    	document.getElementById("saw_accidenterror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
document.getElementById("titleerror").innerHTML=" ";
	
	if(document.getElementById("title").value=="")
	{
	document.getElementById("titleerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("titleerror").innerHTML="";
    if(document.getElementById("title").value.length<4 || document.getElementById("title").value.length>=32)
    {
    	
    	document.getElementById("titleerror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    
    document.getElementById("present_joberror").innerHTML=" ";
	
	if(document.getElementById("present_job").value=="")
	{
	document.getElementById("present_joberror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("present_joberror").innerHTML="";
    if(document.getElementById("present_job").value.length<4 || document.getElementById("present_job").value.length>=32)
    {
    	
    	document.getElementById("present_joberror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
    document.getElementById("absenteeismerror").innerHTML="";
	if(document.getElementById("absenteeism").value!="")
	{
		if(document.getElementById("absenteeism").value=="")
	{
		document.getElementById("absenteeismerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
   
    }
 document.getElementById("absenteeismerror").innerHTML="";
	if(document.getElementById("absenteeism").value!="")
	{
    if(document.getElementById("absenteeism").value.length<4 || document.getElementById("absenteeism").value.length>=32)
    {
    	
    	document.getElementById("absenteeismerror").innerHTML="Absenteeism should be of length 4 to 32";
    	
        return false;
    }
    }
	
	document.getElementById("how_mucherror").innerHTML=" ";
	
	if(document.getElementById("how_much").value=="")
	{
	document.getElementById("how_mucherror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
document.getElementById("how_oftenerror").innerHTML=" ";
	
	if(document.getElementById("how_often").value=="")
	{
	document.getElementById("how_oftenerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("how_oftenerror").innerHTML="";
    if(document.getElementById("how_often").value.length<4 || document.getElementById("how_often").value.length>=32)
    {
    	
    	document.getElementById("how_oftenerror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
document.getElementById("where_to_whereerror").innerHTML=" ";
	
	if(document.getElementById("where_to_where").value=="")
	{
	document.getElementById("where_to_whereerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("where_to_whereerror").innerHTML="";
    if(document.getElementById("where_to_where").value.length<4 || document.getElementById("where_to_where").value.length>=32)
    {
    	
    	document.getElementById("where_to_whereerror").innerHTML="Should be of length 4 to 32";
    	
        return false;
    }
}
</script>
  <script>

function checkSubmit()
{
					document.getElementById("emperror").innerHTML=" ";
				
				if(document.getElementById("emp").value=="")
				{
				document.getElementById("emperror").innerHTML="Required Field Should not be Empty";
				
				return false;
				}
document.getElementById("changes_in_joberror").innerHTML=" ";
				
				if(document.getElementById("changes_in_job").value=="")
				{
				document.getElementById("changes_in_joberror").innerHTML="Required Field Should not be Empty";
				
				return false;
				}
				
				document.getElementById("changes_in_joberror").innerHTML="";
			    if(document.getElementById("changes_in_job").value.length<4 || document.getElementById("changes_in_job").value.length>=32)
			    {
			    	
			    	document.getElementById("changes_in_joberror").innerHTML="Should be of length 4 to 32";
			    	
			        return false;
			    }
			    document.getElementById("jobpperror").innerHTML="";
				if(document.getElementById("jobpp").value!="")
				{
					if(document.getElementById("jobpp").value=="")
				{
					document.getElementById("jobpperror").innerHTML="Required Field Should not be Empty";
					
					return false;
					}
			   
			    }
			    document.getElementById("jobpperror").innerHTML="";
				if(document.getElementById("jobpp").value!="")
				{
			    if(document.getElementById("jobpp").value.length<4 || document.getElementById("jobpp").value.length>=32)
			    {
			    	
			    	document.getElementById("jobpperror").innerHTML="Name should be of length 4 to 32";
			    	
			        return false;
			    }
			    }
				
		}
</script>
</head>
<body>
<div id="tabs" class="tabs-bottom" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">2</a></li>
  </ul>
  <div class="tabs-spacer"></div>
  <div id="tabs-1">
 

<div id="right_content">
<form action="updateworkaccident" method="post">
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
	              <h2>Edit Work Accident</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
  				<td align="left" valign="top" width="50%" style="padding-right:25px;">
  				<c:set value="${workaccidentForm.workaccident[0]}" var="workaccident"/>
  				<table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr class="row1">
					
    				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>What Is The Job Classification Of Your Normal Job?</td>
    				   <input type="hidden" class="input_txtbx1" id="inp_id" value="${workaccident.patient_no}" name="patient_no" />
				  			 <td class="input_txt"><input type="text" class="input_txtbx1" id="job_classification"  name="job_classification"  value="${workaccident.job_classification}"  maxlength="32" onInput="return validatename(id)";   /></br><span id="job_classificationerror" style="color: red;font-style:italic;"><form:errors path="workAcc.job_classification"></form:errors></span></td>
					 <td></td>   <td></td><td></td><td></td><td></td> <td></td><td></td>
				 </tr>
				 <tr class="row2">
                						<td valign="middle" align="left" class="input_txt"><span class="err">* </span>Job Position:</td>
                						 <td valign="top" align="left" class="input_txt">
				  							<select name="doyou_pos" class="input_cmbbx1" id="doyoucheck"  onclick='Checkpos();'>	
				  							 <option value="sit_at_desk" <c:if test="${workaccident.doyou_pos=='sit_at_desk'}"><c:out value="selected"/></c:if>>Sit at desk</option>
						                     <option value="walk" <c:if test="${workaccident.doyou_pos=='walk'}"><c:out value="selected"/></c:if>>Walk</option>	
						                     <option value="stand" <c:if test="${workaccident.doyou_pos=='stand'}"><c:out value="selected"/></c:if>>Stand</option>
						                     <option value="stoop" <c:if test="${workaccident.doyou_pos=='stoop'}"><c:out value="selected"/></c:if>>Stoop</option>
						                     <option value="hold" <c:if test="${workaccident.doyou_pos=='hold'}"><c:out value="selected"/></c:if>>Hold</option>
						                     <option value="carry" <c:if test="${workaccident.doyou_pos=='carry'}"><c:out value="selected"/></c:if>>Carry</option>
						                     <option value="drive_comp_vehi" <c:if test="${workaccident.doyou_pos=='drive_comp_vehi'}"><c:out value="selected"/></c:if>>Drive a company vehicle</option>
						                     <option value="load" <c:if test="${workaccident.doyou_pos=='load'}"><c:out value="selected"/></c:if>>Load</option>
						                   <option value="other" <c:if test="${workaccident.doyou_pos=='other'}"><c:out value="selected"/></c:if>>Other</option> 
						                      
						                    
						                    <%--  <c:if test="${workaccident.doyou_pos=='other'}">
						                     <td><input type="text" id="doyou" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.doyou}" name="doyou" /></br><span class="err"><form:errors path="workAcc.doyou"></form:errors></span></td>
						                 		</c:if> --%>
						                 		 </select>
						                 		 <span id="doyou_poserror" style="color: red;font-style:italic;"></span>
						                 		 </td>
						                      <td><input type="text" name="doyou" maxlength="32" onInput="return validatename(id)"; id="doyou" style='display:none' onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.doyou}" name="doyou" /></br><span class="err"><form:errors path="workAcc.doyou"></form:errors></span></td>
						              <td></td>
						              <td></td>
						              <td></td>
						              <td></td>
						              <td></td><td></td>
						             
						              
						             
						              </tr>
			  	 <tr class="row1">
			  	 				 <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Do Uou Carry Anything or Pick Anything Up?</td>
				 				 <td valign="top" align="left" class="input_txt">
				 				 <input type="radio" name="pick" value="yes" class="input_txt" id="pickcheck" onclick="any();" <c:if test="${workaccident.pick=='yes'}"><c:out value="checked=checked"/></c:if>>yes&nbsp;&nbsp;&nbsp;
				 				 <input type="radio" name="pick" value="No" class="input_txt" id="pickun" onclick="any();"<c:if test="${workaccident.pick=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				   <input type="text" class="input_txtbx1" id="carry" maxlength="32" onInput="return validatename(id)";name="carry" placeholder="If yes, What"  style='display:none' value="${workaccident.carry}" name="carry" /></br><span class="err"><form:errors path="workAcc.carry"></form:errors></span></td>
				  <span id="carryerror" style="color: red;font-style:italic;"></span>
			  	 </tr>
			  	  <tr class="row2">
			  	 				 <td valign="middle" align="left" class="input_txt"><span class="err">* </span>How Did The Injury Occur?</td>
				 				<td valign="top" align="left" class="input_txt"><input type="text" class="input_txtbx1"  maxlength="32" onInput="return validatename(id)"; id="injury_occur" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.injury_occur}" name="injury_occur" /></br><span id="injury_occurerror" style="color: red;font-style:italic;"><form:errors path="workAcc.injury_occur"></form:errors></span></td>
				 				 <td></td>
						              <td></td>
						              <td></td>
						              <td></td>
						               <td></td>
						              <td></td>
						              <td></td>
				 </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Who Saw The Accident?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" maxlength="32" onInput="return validatename(id)"; id="saw_accident"onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.saw_accident}" name="saw_accident" /></br><span id="saw_accidenterror" style="color: red;font-style:italic;"><form:errors path="workAcc.saw_accident"></form:errors></span></td>
				  </tr>
				    <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Job Title:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="title" maxlength="32" onInput="return validatename(id)"; onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.title}" name="title" /></br><span id="titleerror" style="color: red;font-style:italic;"><form:errors path="workAcc.title"></form:errors></span></td>
				   <td></td>
						              <td></td>
						              <td></td>
						              <td></td>
						               <td></td>
						              <td></td>
						              <td></td>
				  </tr>	
				 <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>How Long Have You Been At Your Present Job?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="present_job" onkeypress="return validate(event)"; maxlength="32"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.present_job}" name="present_job" /></br><span id="present_joberror" style="color: red;font-style:italic;"><form:errors path="workAcc.present_job"></form:errors></span></td>
				 </tr>	
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Has There Been A Time Loss or Absentee Caused From Job Injury?</td>
				  <td valign="top" align="left" class="input_txt" width = "5%"><input type="radio" name="time_loss" value="yes" class="input_txt" id="yes2" onchange="if (this.value=='yes'){this.form['absenteeism'].style.visibility='visible'}else {this.form['absenteeism'].style.visibility='hidden'};" onclick="time();"<c:if test="${workaccident.time_loss=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="time_loss" value="No" id="No2" class="input_txt" onchange="if (this.value=='No'){this.form['absenteeism'].style.visibility='hidden'}else {this.form['absenteeism'].style.visibility='visible'};" onclick="time();"<c:if test="${workaccident.time_loss=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  <td><textarea rows='3' cols='35' id="absenteeism"  onInput="return validatename(id)"; maxlength="32" name="absenteeism" placeholder="If yes, explain(include dates)">${workaccident.absenteeism}</textarea></td>
				   <span id="time_losserror" style="color: red;font-style:italic;"></span>
				  </td><td></td><td></td><td></td><td></td><td></td><td></td>
				  </tr>
				 <%--  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Has there been a time loss or absenteeism caused from job injury</td>
				  <td valign="top" align="left" class="input_txt">
				  <td><input type="radio" name="time_loss" value="yes" class="input_txt" id="timelosscheck"  onclick="time();"<c:if test="${workaccident.time_loss=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="time_loss" value="No" class="input_txt" onclick="time();"<c:if test="${workaccident.time_loss=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;</td>
				   <input type="text" class="input_txtbx1" id="timeloss1" name="absenteeism" placeholder="If yes, explain(include dates)"  /></br><span class="err"><form:errors path="workAcc.absenteeism"></form:errors></span></td>
				   <td><textarea rows='3' cols='35' id="timeloss1" name="absenteeism" placeholder="If yes, explain(include dates)" value="${workaccident.absenteeism}" ></textarea></td> 
				  
						       --%>       <!--  <td></td>
						              <td></td>
						              <td></td>
						               <td></td>
						              <td></td>
						              <td></td> -->
				 <!--  </tr>	 -->
				   <tr class="row1">
                						<td valign="middle" align="left" class="input_txt"><span class="err">* </span>Type of Lighting In The Building?</td>
                						<td valign="top" align="left" class="input_txt">
										  <select name="type_of_light" class="input_cmbbx1" id="type_of_light"onclick='Checklight();' onchange="if (this.value=='others'){this.form['lighting'].style.visibility='visible'}else {this.form['lighting'].style.visibility='hidden'};" >
					 						<option value="fluorescent" <c:if test="${workaccident.type_of_light=='fluorescent'}"><c:out value="selected"/></c:if>>Fluorescent</option>
						                     <option value="overhead" <c:if test="${workaccident.type_of_light=='overhead'}"><c:out value="selected"/></c:if>>Overhead</option>	
						                     <option value="onmachine" <c:if test="${workaccident.type_of_light=='onmachine'}"><c:out value="selected"/></c:if>>On machine</option>
						                    <option value="others" <c:if test="${workaccident.type_of_light=='others'}"><c:out value="selected"/></c:if>>Others</option> 
						                    </select>
						                    
						                    <script>
		 window.onload = function()
{
if (document.getElementById("type_of_light").value == "others") {
document.getElementById("lighting").style.visibility = 'visible';


}
else  {
document.getElementById("lighting").style.visibility = 'hidden';


}
}
</script>
						                    <span id="type_of_lighterror" style="color: red;font-style:italic;"></span>
						                      <%-- <c:if test="${workaccident.type_of_light=='others'}">
						                     <td> <input type="text" name="lighting" id="lighting" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.lighting}" name="lighting" /></br><span class="err"><form:errors path="workAcc.lighting"></form:errors></span></td>
						                 		</c:if>  --%>
						                   <td> <input type="text" name="lighting" id="lighting_div" maxlength="32" style='display:none' onInput="return validatename(id)"; value="${workaccident.lighting}"  /></br><span class="err"><form:errors path="workAcc.lighting"></form:errors></span></td>  
											<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						             			 </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Do You Pick Up or Lift?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="pick_lift" value="yes" id="yes3" class="input_txt" id="pickcheck1" onclick="toggle3();" <c:if test="${workaccident.pick_lift=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="pick_lift" value="No" id="No3" class="input_txt"  onclick="toggle3();" <c:if test="${workaccident.pick_lift=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				   <span id="pick_lifterror" style="color: red;font-style:italic;"></span>
				  </td>
				  <td></td>  <td></td><td></td><td></td><td></td><td></td><td></td>
				  </tr>
				   <tr class="row1">
                  <td valign="middle" align="left" class="input_txt" width = "37%"><span class="err">* </span>If Yes, How Much:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="how_much" maxlength="32" onkeypress="return validate(event)";  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.how_much}" name="how_much" /></br><span id="how_mucherror" style="color: red;font-style:italic;"><form:errors path="workAcc.how_much"></form:errors></span></td>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>How Often?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="how_often" maxlength="32" onInput="return validatename(id)"; onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.how_often}" name="how_often" /></br><span id="how_oftenerror" style="color: red;font-style:italic;"><form:errors path="workAcc.how_often"></form:errors></span>
				  </td>
				  <td></td>   <td></td> <td></td><td></td><td></td><td></td><td></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>From Where To Where?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" name="where_to_where" id="where_to_where" value="${workaccident.where_to_where}" onInput="return validatename(id)"; maxlength="32"   /></br><span id="where_to_whereerror" style="color: red;font-style:italic;"><form:errors path="workAcc.where_to_where"></form:errors></span>
				  </td>
				  </tr>
				  </table>
				  <div id="yeschecked"  style='display:none'>
					<table cellpadding="0" cellspacing="0" border="0" width="100%">
				           
				  </table>
				  </div>
				  <table cellpadding="0" cellspacing="0" border="0" width="100%">
				                
				  				    <tr class="row2">
                						<td valign="middle" align="left" class="input_txt" width = "37%"><span class="err">* </span>Do You Lift From?</td>
                						<td valign="top" align="left" class="input_txt">
										  <select name="lift_from" class="input_cmbbx1" id="lift_from">
					 						<option value="ground" <c:if test="${workaccident.lift_from=='ground'}"><c:out value="selected"/></c:if>>Ground</option>
						                     <option value="bench" <c:if test="${workaccident.lift_from=='bench'}"><c:out value="selected"/></c:if>>Bench</option>	
						                     <option value="platform" <c:if test="${workaccident.lift_from=='platform'}"><c:out value="selected"/></c:if>>Platform</option>
						                   </select>
						                    <span id="lift_fromerror" style="color: red;font-style:italic;"></span>
										</td>
										     
					</tr>
					<tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Do you lift in or out of a machine?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="liftin_orout" value="yes" id="yes4" class="input_txt" <c:if test="${workaccident.liftin_orout=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="liftin_orout" value="No" id="No4"class="input_txt"<c:if test="${workaccident.liftin_orout=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				 <span id="liftin_orouterror" style="color: red;font-style:italic;"></span>
				  </td>
				  </tr>			
				   <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>If Working At A Machine,Do You?</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="workpos" class="input_cmbbx1" id="workpos" >
					<option value="sit" <c:if test="${workaccident.workpos=='sit'}"><c:out value="selected"/></c:if>>Sit</option>
					<option value="stand" <c:if test="${workaccident.workpos=='stand'}"><c:out value="selected"/></c:if>>Stand</option>	
					<option value="kneel" <c:if test="${workaccident.workpos=='kneel'}"><c:out value="selected"/></c:if>>Kneel</option>
				  </select>
				<span id="workposerror" style="color: red;font-style:italic;"></span>
				 </td>
				      
				</tr>	
				<tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>In Your Job, Do You Push or Pull?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="push_pull" value="yes" id="pushcheck"  class="input_txt"  onclick="pull();"<c:if test="${workaccident.push_pull=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="push_pull" value="No" id="No5"class="input_txt" onclick="pull();"<c:if test="${workaccident.push_pull=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				   <input type="text" class="input_txtbx1" id="jobpp" maxlength="32"  onInput="return validatename(id)"; name="jobpp" placeholder="If yes, give specifics"  value="${workaccident.jobpp}" name="jobpp" /></br><span class="err"><form:errors path="workAcc.jobpp"></form:errors></span>
				   <span id="push_pullerror" style="color: red;font-style:italic;"></span>
				  </td>
				  </tr>						                   
				  		  <script>
		 window.onload = function()
{
if (document.getElementById("pushcheck").value == "yes") {
document.getElementById("jobpp").style.visibility = 'visible';


}
else  {
document.getElementById("jobpp").style.visibility = 'hidden';


}
}
</script>                    		 
				  </table>
				  <br>
				  <table align="right">
				  <tr>
				   <td id="tblbtn"> <input type="button" id="btnNext" class="submit_btn" value="Next" onmouseover="checkValid(event);"/></td>

                  	<td>&nbsp;&nbsp;</td>							
				           
                  <td valign="top" align="center"><!-- <input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewworkaccident'"> --></td></td>
                  
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
 	 <td valign="top" align="left">
        	<div>
	            <div class="headings altheading">
	              <h2>Edit Work Accident</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
  				<td align="left" valign="top" width="50%" style="padding-right:25px;">
  				<table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Is Your Work Area?</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="work_area" class="input_cmbbx1" id="workcheck" onclick='work();'>
					<option value="oily" <c:if test="${workaccident.work_area=='oily'}"><c:out value="selected"/></c:if>>Oily</option>
					<option value="dirty" <c:if test="${workaccident.work_area=='dirty'}"><c:out value="selected"/></c:if>>Dirty</option>	
					<option value="slippery" <c:if test="${workaccident.work_area=='slippery'}"><c:out value="selected"/></c:if>>Slippery</option>
					 <option value="Other" <c:if test="${workaccident.work_area=='Other'}"><c:out value="selected"/></c:if>>Other</option> 
					 </select>
					   <td> <input type="text" name="warea" id="warea" maxlength="32" style='display:none' onInput="return validatename(id)";  value="${workaccident.warea}" name="warea" /></br><span class="err"><form:errors path="workAcc.warea"></form:errors></span></td>
				      <script>
		 window.onload = function()
{
if (document.getElementById("workcheck").value == "Other") {
document.getElementById("warea").style.visibility = 'visible';


}
else  {
document.getElementById("warea").style.visibility = 'hidden';


}
}
</script>
				 </tr>
				   <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Do You Use Foot or Hand Levers?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="levers" value="yes" class="input_txt"<c:if test="${workaccident.levers=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="levers" value="No" class="input_txt"<c:if test="${workaccident.levers=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  <td></td>    
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Do You Work Overhead?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="overhead" value="yes" class="input_txt"<c:if test="${workaccident.overhead=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="overhead" value="No" class="input_txt"<c:if test="${workaccident.overhead=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>How Many Employees Have Been Injured Doing Your Job?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="emp" maxlength="32" onkeypress="return validate(event)";onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.no_of_employees}" name="no_of_employees" /><span id="emperror" style="color: red;font-style:italic;"><form:errors path="workAcc.no_of_employees"></form:errors></span>
				<span class="err" id="emperr"></span>
				  </td>
				  <td></td>    
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Do You Like Your Job?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="like_job" value="yes" class="input_txt" <c:if test="${workaccident.like_job=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="like_job" value="No" class="input_txt" <c:if test="${workaccident.like_job=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Was A Pre-Employment Exam Performed Or Required?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="pre_employment" value="yes" class="input_txt"<c:if test="${workaccident.pre_employment=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="pre_employment" value="No" class="input_txt" <c:if test="${workaccident.pre_employment=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  <td></td>    
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>If Off Work, Do You Want To Return To Your Job?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="return_job" value="yes" class="input_txt"<c:if test="${workaccident.return_job=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="return_job" value="No" class="input_txt" <c:if test="${workaccident.return_job=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>What Changes Would You Make In Your Job?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="changes_in_job" maxlength="32" onInput="return validatename(id)";  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.changes_in_job}" name="changes_in_job" /></br><span id="changes_in_joberror" style="color: red;font-style:italic;"><form:errors path="workAcc.changes_in_job"></form:errors></span>
				  </td>
				   <td></td>    
				  </tr>
				   
                  
                  
                  
                    
               
                </table>
                <br>
                <table align="right">
                <tr>
                 <td valign="top" align="right"><input type="button" id="btnPrevious" class="submit_btn" value="Previous"></td>
                   <td>&nbsp;&nbsp;</td>
                   <td valign="top" align="right"><input type="submit" class="submit_btn" value="Update" name="insert" onclick="return checkSubmit('this');"></td>
                  	<td>&nbsp;&nbsp;</td>
                  <td valign="top" align="center"><a href="deleteworkaccident" class="submit_btn" style="text-decoration: none;color:white" onclick="return confirmation() ">Delete</a><!-- <input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewworkaccident'"> --></td>
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
                </div>
                </body>
                </html>	  

<script type="text/javascript">
$(document).ready(function(){
	
$('input[name="value"]').change(function(){
var v = $('input[name="value"]').val();
if(v=="other") $('#field').show();
else $('#field').hide();
} )
})				  
</script>				  
<script type="text/javascript">
function time(){
	var element = document.getElementById('timeloss1');
	if(document.getElementById('timelosscheck').checked)
		{
		
			element.style.display="block";
		
		}
	else
		element.style.display="none";
}
</script>					  
			  
 				  				  
<script type="text/javascript">


</script>

<script type="text/javascript">

</script>
<script type="text/javascript">
function toggle3(){
	var element = document.getElementById('yeschecked');
	if(document.getElementById('pickcheck1').checked)
		{
			
			element.style.display="block";
		
		}
	else
		element.style.display="none";
}
</script>
<script type="text/javascript">
function pull(){
	var element = document.getElementById('jobpp');
	if(document.getElementById('pushcheck').checked)
		{
		
			element.style.display="block";
		
		}
	else
		element.style.display="none";
}

	
</script>

<script type="text/javascript">
function Checkpos(){
	 var element=document.getElementById('doyou');
	  var type1=document.getElementById('doyoucheck');
	  var type = type1.options[type1.selectedIndex].value;

	 
	 if(type=='other')
	   element.style.display='block';
	 else  
	   element.style.display='none';
	} 
	function Checklight(){
		 var element=document.getElementById('lighting_div');
		  var type1=document.getElementById('typeoflight');
		  var type = type1.options[type1.selectedIndex].value;


		 if(type=='others')
		   element.style.display='block';
		 else  
		   element.style.display='none';
		} 
	function any(){
		var element = document.getElementById('carry');
		if(document.getElementById('pickcheck').checked)
			{
			
				element.style.display="block";
			
			}
		else
			element.style.display="none";
	}
</script>	
<script type="text/javascript">
function work(){

 var element=document.getElementById('warea');
 var type1=document.getElementById('workcheck');
 var type = type1.options[type1.selectedIndex].value;
 
 if(type=='Other')
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script>

<!--

//-->
</script>
<script>
window.onload = function(){
	Checkpos();Checklight();work();any();pull();time();toggle3();
}

</script>
 <jsp:include page="footer.jsp"></jsp:include>