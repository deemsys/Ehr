<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" />
  <script src="resources/js/jquery-1.9.1.js"></script>
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
  </ul>
  <div class="tabs-spacer"></div>
  <div id="tabs-1">
 

<div id="right_content">
 <form action="workaccident" method="POST"> 
 
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
	              <h2>Work Accident</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
  				<td align="left" valign="top" width="50%" style="padding-right:25px;">
  				<table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>What is the job classification of your normal job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="job_classification" />
				  </td>
				  </tr>
				 <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="doyou_pos" class="input_cmbbx1" onchange='Checkpos(this.value);'>
					<option selected="selected" value="sit_at_desk" >Sit at desk</option>
					<option value="walk">Walk</option>
					<option value="stand">Stand</option>
					<option value="stoop">Stoop</option>
					<option value="hold">Hold</option>
					<option value="carry">Carry</option>
					<option value="drive_comp_vehi">Drive a company vehicle</option>
					<option value="load">Load</option>
					<option value="other">Other</option>
					</select>
				   <input type="text" name="doyou" id="doyou" style='display:none'/>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you carry anything or pick anything up</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="pick" value="0" class="input_txt" checked="true" onclick="any('show')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="pick" value="1" class="input_txt" onclick="any('hide')">No&nbsp;&nbsp;&nbsp;
				   <input type="text" class="input_txtbx1" id="carry" name="carry" placeholder="If yes, What"/>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How did the injury occur?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="injury_occur" />
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Who saw the accident?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="saw_accident" />
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Title</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="title" />
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How long have you been at your present job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="present_job" />
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Has there been a time loss or absenteeism caused from job injury</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="time_loss" value="0" class="input_txt" checked="true" onclick="time('show1')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="time_loss" value="1" class="input_txt" onclick="time('hide1')">No&nbsp;&nbsp;&nbsp;
				  <textarea rows='3' cols='35' id="absenteeism" name="absenteeism" placeholder="If yes, explain(include dates)"></textarea>
				  </td>
				  </tr>
				   <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Type of lighting in the building</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="type_of_light" class="input_cmbbx1" onchange='Checklight(this.value);'>
					<option selected="selected" value="fluorescent" >Fluorescent</option>
					<option value="overhead">Overhead</option>
					<option value="onmachine">On Machine</option>
					<option value="others">Other</option>
					</select>
				   <input type="text" name="lighting" id="lighting" style='display:none'/>
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you pick up or lift?</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="pick_lift" value="0" class="input_txt" checked="true" onclick="toggle3('show3')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="pick_lift" value="1" class="input_txt" onclick="toggle3('hide3')">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  </table>
				  <div id="lift">
				  <table cellpadding="0" cellspacing="0" border="0" width="100%">
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If yes, how much&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="how_much" />
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How often</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="how_often" />
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>From where to where</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="where_to_where" />
				  </td>
				  </tr>
				  </table>
				  </div>
				  <table cellpadding="0" cellspacing="0" border="0" width="100%">
                  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you lift from&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="lift_from" class="input_cmbbx1" >
					<option selected="selected" value="ground" >Ground</option>
					<option value="bench">Bench</option>
					<option value="platform">Platform</option>
					</select>
					</td>
					</tr>
					<tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you lift in or out of a machine?</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="liftin_orout" value="0" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="liftin_orout" value="1" class="input_txt">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If working at a machine,do you</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="workpos" class="input_cmbbx1" >
					<option selected="selected" value="sit" >Sit</option>
					<option value="stand">Stand</option>
					<option value="kneel">Kneel</option>
					</select>
					</td>
					</tr>
					<tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>In your job, do you push or pull</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="push_pull" value="0" class="input_txt" checked="true" onclick="pull('show4')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="push_pull" value="1" class="input_txt" onclick="pull('hide4')">No&nbsp;&nbsp;&nbsp;
				   <input type="text" class="input_txtbx1" id="jobpp" name="jobpp" placeholder="If yes, give specifics"/>
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
				 <!--  </form> -->
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
        	<div>
	            <div class="headings altheading">
	              <h2>Work Accident</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
  				<td align="left" valign="top" width="50%" style="padding-right:25px;">
  				<table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Is your work area</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="work_area" class="input_cmbbx1" onchange='work(this.value);'>
					<option selected="selected" value="oily" >Oily</option>
					<option value="dirty">Dirty</option>
					<option value="slippery">Slippery</option>
					<option value="Other">Other</option>
					</select>
				   <input type="text" name="warea" id="warea" style='display:none'/>
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you use foot or hand levers</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="levers" value="0" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="levers" value="1" class="input_txt">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you work overhead</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="overhead" value="0" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="overhead" value="1" class="input_txt">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How many employees have been injured doing your job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="no_of_employees" />
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you like your job</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="like_job" value="0" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="like_job" value="1" class="input_txt">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was a pre-employment exam performed or required</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="pre_employment" value="0" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="pre_employment" value="1" class="input_txt">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If off work, do you want to return to your job</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="return_job" value="0" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="return_job" value="1" class="input_txt">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>What changes would you make in your job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="changes_in_job" />
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
				  <table cellpadding="0" cellspacing="0" border="0" width="100%">
				  <tr>
                  <td valign="top" align="center"><input type="submit" class="submit_btn" value="Save"></td>
                  <td valign="top" align="center"><input type="reset" class="submit_btn" value="Cancel" onclick="window.location.href='workaccident'"></td>
				  </tr> 
				  </table>
				  </div>
				  </div>
				  </body>
				  </html>
				  
				  
				  
				  
					
					
				  
				  
				  
				  
<script type="text/javascript">
function time(value){
if(value=='show1')
 document.getElementById('absenteeism').style.visibility='visible';
else
 document.getElementById('absenteeism').style.visibility='hidden';
}
</script>					  
			  
				  				  
<script type="text/javascript">
function Checkpos(val){
 var element=document.getElementById('doyou');
 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script>
<script type="text/javascript">
function Checklight(val){
 var element=document.getElementById('lighting');
 if(val=='others')
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script>
<script type="text/javascript">
function toggle3(value){
	/* alert(value); */
	var e = document.getElementById('lift');
if(value=='show3')
 e.style.display="block";
else
 e.style.display="none";
}
</script>
<script type="text/javascript">
function pull(value){
if(value=='show4')
 document.getElementById('jobpp').style.visibility='visible';
else
 document.getElementById('jobpp').style.visibility='hidden';
}
</script>
<script type="text/javascript">
function any(value){
if(value=='show')
 document.getElementById('carry').style.visibility='visible';
else
 document.getElementById('carry').style.visibility='hidden';
}
</script>	
<script type="text/javascript">
function work(val){
 var element=document.getElementById('warea');
 if(val=='Other')
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script>

 <jsp:include page="footer.jsp"></jsp:include>