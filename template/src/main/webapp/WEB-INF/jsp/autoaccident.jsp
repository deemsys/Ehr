
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    <li><a href="#tabs-3">3</a></li>
    <li><a href="#tabs-4">4</a></li>
  </ul>
  <div class="tabs-spacer"></div>
  <div id="tabs-1">
 

<div id="right_content">
 <form action="autoaccident" method="POST"> 
 
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
				  <input type="text" class="input_txtbx1" id="inp_id" name="claimnumber" /><span class="err"><form:errors path="Autoaccident.claimnumber"></form:errors>
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Adjuster's name</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="adjustersname" /><span class="err"><form:errors path="Autoaccident.adjustersname"></form:errors>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Who gave you the estimate</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="estimate" class="input_cmbbx1">
					<option selected="selected" value="your insurance" >Your Insurance company</option>
					<option value="other insurance">Other Driver's Insurance company</option>
					<option value="body shop">Body shop</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Were you the</td>
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
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was anyone else in the car with you during the accident?who?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="companion" /><span class="err"><form:errors path="Autoaccident.companion"></form:errors>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Description of vehicle you were in</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="vehicle_make" style="width:70px" placeholder="    make"/>
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="vehicle_model" style="width:70px" placeholder="     model" />
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="vehicle_year" style="width:70px"  placeholder="      year"/><span class="err"><form:errors path="Autoaccident.vehicle_year"></form:errors>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Portion of the vehicle hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="vehicle_hit" class="input_cmbbx1">
					<option selected="selected" value="right front" >Right Front</option>
					<option value="left front">Left Front</option>
					<option value="right rear">Right Rear</option>
					<option value="left rear">Left Rear</option>
					<option value="right side">Right side</option>
					<option value="left side">Left side</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Description of other vehicle </td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="other_vehicle_make" style="width:70px" placeholder="    make" />
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="other_vehicle_model" style="width:70px" placeholder="     model" />
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="other_vehicle_year" style="width:70px" placeholder="      year"/><span class="err"><form:errors path="Autoaccident.other_vehicle_year"></form:errors>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was you car stopped at the time of accident</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="carstopped" value="0" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="carstopped" value="1" class="input_txt">No</td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If you were the driver,was your foot on the brake</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="driverposition" value="0" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="driverposition" value="1" class="input_txt">No</td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was your vehicle moving at time of impact</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="vehicle_moving_time" value="0" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="vehicle_moving_time" value="1" class="input_txt">No</td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was car</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="wascar" class="input_cmbbx1">
					<option selected="selected" value="slowing down" >Slowing Down</option>
					<option value="gaining speed">Gaining Speed</option>
					<option value="steady rate of speed">Steady Rate of Speed</option>	
				  </select>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Estimated rate of speed</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="estimated_rate" /><span class="err"><form:errors path="Autoaccident.estimated_rate"></form:errors>
				  </td>
				  </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Time of day</td>
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
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Road conditions</td>
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
				  <input type="text" name="conditions" id="conditions" style='display:none'/>
				  </td>
				  </tr> 
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Head Restraints</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="head_restraints" class="input_cmbbx1">
					<option selected="selected" value="up" >Up</option>
					<option value="down">Down</option>
					<option value="do_no">Don't know</option>	
				  </select>
				  </td>
				  </tr>
				  <!--  <tr>
				  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="right"><input type="submit" class="submit_btn2" value="Next" ></td>
				  </tr> -->
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
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Seat position after accident</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="seatpos_after_accident" class="input_cmbbx1">
					<option selected="selected" value="was_altered" >Was Altered</option>
					<option value="was_not_altered">Was Not Altered</option>
					<option value="dontknow">Don't know</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Seat after the accident</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="seat_after_accident" class="input_cmbbx1">
					<option selected="selected" value="broken" >Broken</option>
					<option value="notbroken">Not Broken</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Lap Seat belt</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="lap_seat_belt" class="input_cmbbx1">
					<option selected="selected" value="worn" >Worn</option>
					<option value="not_worn">Not Worn</option>
					<option value="dont_know">Don't know</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Shoulder Seat belt</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="shoulder_seat_belt" class="input_cmbbx1">
					<option selected="selected" value="worns" >Worn</option>
					<option value="notworn">Not Worn</option>
					<option value="donno">Don't know</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Air bag deployed</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="airbag" value="0" class="input_txt" checked="true" onclick="toggle('show')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="airbag" value="1" class="input_txt" onclick="toggle('hide')">No&nbsp;&nbsp;&nbsp;
				  <select name="wereyou" class="input_cmbbx1" id="mytext">
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
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Body position at time of accident</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="body_position" class="input_cmbbx1" onchange='Checkposition(this.value);'>
					<option selected="selected" value="good" >Good</option>
					<option value="forward">Forward</option>
					<option value="leaning">Leaning</option>
					<option value="others">Other</option>
					<option value="un_known">Unknown</option>
				  </select>
				   <input type="text" name="body_position" id="body_position" style='display:none'/>
				  </td>
				  </tr>
				 <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Head position</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="head_position" class="input_cmbbx1" onchange='Checkposition(this.value);'>
					<option selected="selected" value="forwardpos" >Forward</option>
					<option value="left">Left</option>
					<option value="right">Right</option>
					<option value="up_pos">Up</option>
					<option value="down_pos">Down</option>
					<option value="others">Other</option>
					<option value="unknown_pos">Unknown</option>
				  </select>
				   <input type="text" name="head_position" id="body_position" style='display:none'/>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Hands on wheel</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="hands_on_wheel" value="0" class="input_txt" checked="true">One&nbsp;&nbsp;&nbsp;<input type="radio" name="hands_on_wheel" value="1" class="input_txt">Two</td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Aware of crash</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="aware_of_crash" class="input_cmbbx1">
					<option selected="selected" value="aware" >Aware</option>
					<option value="surprised">Surprised</option>
				  </select>
				  </td>
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Did you brace yourself</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="brace" value="0" class="input_txt" checked="true" onclick="toggle1('show1')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="brace" value="1" class="input_txt" onclick="toggle1('hide1')">No&nbsp;&nbsp;&nbsp;
				  <select name="ifyes" class="input_cmbbx1" id="mybrace">
				  <option selected="selected" value="bracearms" >Braced with arms</option>
				  <option value="bracelegs">Braced with legs</option>
				  </select>
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
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Did this cause further injury</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="further_injury" value="0" class="input_txt" checked="true" onclick="toggle2('show2')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="further_injury" value="1" class="input_txt" onclick="toggle2('hide2')">No&nbsp;&nbsp;&nbsp;
				  <textarea rows='3' cols='35' id="injury" name="injury" placeholder="Please explain"></textarea><span class="err"><form:errors path="Autoaccident.injury"></form:errors>
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
				  <select name="patient_body" class="input_cmbbx1" onchange='Checkposition(this.value);'>
					<option selected="selected" value="jolted" >Jolted</option>
					<option value="thrown_about">Thrown About</option>
					<option value="stunned">Stunned</option>
					<option value="dazed">Dazed</option>
					<option value="whipped">Whipped</option>
					<option value="slammed">Slammed</option>
					<option value="otherbody">Other</option>
				  </select>
				  <input type="text" name="patient_body" id="body_position" style='display:none'/>
				  </td>
				  </tr>  -->
				 <!--  <tr>
				  <td valign="top" align="center">&nbsp;</td>
				  <td valign="top" align="left"><input type="button" class="submit_btn2" value="Previous" onclick="history.go(-1)"></td> 
                  <td valign="top" align="right"><input type="submit" class="submit_btn2" value="Submit"></td>
				  </tr>  -->
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
  				</tr>
  				<tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient's body</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="patient_body" class="input_cmbbx1" onchange='Checkposition(this.value);'>
					<option selected="selected" value="jolted" >Jolted</option>
					<option value="thrown_about">Thrown About</option>
					<option value="stunned">Stunned</option>
					<option value="dazed">Dazed</option>
					<option value="whipped">Whipped</option>
					<option value="slammed">Slammed</option>
					<option value="otherbody">Other</option>
				  </select>
				  <input type="text" name="patient_body" id="body_position" style='display:none'/>
				  </td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Did patient's body strike interior of car</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="body_strike" value="0" class="input_txt" checked="true" onclick="toggle3('show3');">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="body_strike" value="1" class="input_txt" onchange="toggle3('hide3');">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  </table>
				<div id="hit" style="display:block;">
				<!-- <div class="contentbox"> -->
				<table cellpadding="0" cellspacing="0" border="0" width="100%">
				  
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My head hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="head_hit" />
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Right Left Shoulder hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlshoulder_hit" />
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My Right Left Hip hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlhip_hit" />
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Right Left Knee hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlknee_hit" />
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My Chest hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="chest_hit" />
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Right Left Arm hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlarm_hit" />
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My Right Left Leg hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlleg_hit" />
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Other body part hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="otherpart_hit" />
				  </td>
				  </tr>
				  </table>
				  </div>
				  </div>
				  <!-- </td>
				  </tr> -->
				  
				  <table cellpadding="0" cellspacing="0" border="0" width="100%"> 
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Were you wearing glasses at the time of accident</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="wearing_glasses" value="0" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="wearing_glasses" value="1" class="input_txt" >No&nbsp;&nbsp;&nbsp;
			      </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Were the glasses still in place after impact</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="glasses_impact" value="0" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="glasses_impact" value="1" class="input_txt" >No&nbsp;&nbsp;&nbsp;
			      </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Unconscious</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="unconscious" value="0" class="input_txt" checked="true" onclick="toggle4('show4')" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="unconscious" value="1" class="input_txt" onclick="toggle4('hide4')" >No&nbsp;&nbsp;&nbsp;
			      <input type="text" class="input_txtbx1" id="inp_id" name="uncon" > (minutes)</input>
			      </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt">Estimated amount of property damage</td>
				  <td valign="top" align="left" class="input_txt">$
				  <input type="text" class="input_txtbx1" id="inp_id" name="estimated_amount" /><span class="err"><form:errors path="Autoaccident.estimated_amount"></form:errors>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Damage to the other car</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="damage" class="input_cmbbx1" >
					<option selected="selected" value="minimal" >Minimal</option>
					<option value="moderate">Moderate</option>
					<option value="major">Major</option>
					<option value="totaled">Totaled</option>
				  </select>
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
        	<div>
	            <div class="headings altheading">
	              <h2>Auto Accident</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
				 <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was anyone cited</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="was_anyone_cited" value="0" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="was_anyone_cited" value="1" class="input_txt" >No&nbsp;&nbsp;&nbsp;
			      </td>
				  </tr> 
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Who?</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="who" class="input_cmbbx1" >
					<option selected="selected" value="you" >You</option>
					<option value="other_driver">Other Driver</option>
				  </select>
				  </td>
				  </tr> 
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>After accident,I had the following</td>
				 <td valign="top" align="left" class="input_txt">
				 <input type="checkbox" name="headache" value="headache">Headache&nbsp;&nbsp;&nbsp;&nbsp; 
				 <input type="checkbox" name="dizziness" value="dizziness">Dizziness&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="nausea" value="nausea">Nausea&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="confusion" value="confusion">Confusion&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="disorientation" value="disorientation">Disorientation&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="neckpain" value="neckpain">Neck pain&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="otherpain" value="otherpain">Other&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="text" class="input_txtbx1" id="inp_id" name="otherpain" placeholder="If other" />
				 </td>
				 </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Symptoms first appeared</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="first_symptom" class="input_cmbbx1"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="immediately" >Immediately</option>
					<option value="hours">hours after the accident</option>
					<option value="next_day">The next day</option>
					<option value="days">days</option>
				  </select>
				 <input type="text" name="symptom" id="symptom" style='display:none'/>
				  </td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>After the accident I went</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="after_accident" class="input_cmbbx1"  onchange='Check(this.value);'>
					<option selected="selected" value="hospital" >Hospital</option>
					<option value="work">Work</option>
					<option value="home">Home</option>
					<option value="family">Family</option>
					<option value="physician">Physician</option>
					<option value="otheracc">Other</option>
				  </select>
				 <input type="text" name="accident" id="accident" style='display:none'/>
				  </td>
				  </tr> 
				  </table>
				  <div id="accident_hospital">
				  <table cellpadding="0" cellspacing="0" border="0" width="100%">
				   <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">Name of the hospital</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="hosname" /><span class="err"><form:errors path="Autoaccident.hosname"></form:errors>
				  </td>
				  </tr>
				   <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">City</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="city" /><span class="err"><form:errors path="Autoaccident.city"></form:errors>
				  </td>
				  </tr>
				   <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">Length of stay</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="staylength" /><span class="err"><form:errors path="Autoaccident.staylength"></form:errors>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How did you get to the hospital?</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="hospitalget" class="input_cmbbx1"  onchange='Checkhospital(this.value);'>
					<option selected="selected" value="ambulance" >Ambulance</option>
					<option value="otherhos">Other</option>
				  </select>
				 <input type="text" name="hospital" id="hospital" style='display:none'/>
				  </td>
				  </tr> 
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">What body parts were x-rayed,what treatment was given</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="xray" /><span class="err"><form:errors path="Autoaccident.xray"></form:errors>
				  </td>
				  </tr>
				   <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">What did they tell you was wrong</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="wrong" /><span class="err"><form:errors path="Autoaccident.wrong"></form:errors>
				  </td>
				  </tr>
				  
				  </table>
				  </div>
				  
				  </div>
				  </div>
				  </td>
				  </tr>
				  </table>
				  </div>
				   <tr>
				  <td valign="top" align="center">&nbsp;</td>
				  <!-- <td valign="top" align="left"><input type="button" class="submit_btn2" value="Previous" onclick="history.go(-1)"></td>  -->
                  <td valign="top" align="right"><input type="submit" class="submit_btn2" value="Submit"></td>
				  </tr> 
				  </form>
				  </div>
				  </div>
				 
				  </body>
				  </html>
				  
				  
<script type="text/javascript">
function CheckConditions(val){
 var element=document.getElementById('conditions');
 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script>
<script type="text/javascript">
function Checkposition(val){
 var element=document.getElementById('body_position');
 if(val=='others')
   element.style.display='block';
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
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script>
<script type="text/javascript">
function Checkaccident(val){
 var element=document.getElementById('accident');
 if(val=='otheracc')
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script>
<script type="text/javascript">
function Checkhospital(val){
 var element=document.getElementById('hospital');
 if(val=='otherhos')
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script>
<script type="text/javascript">
function Check(val){
 var element=document.getElementById('accident_hospital');
 if(val=='hospital')
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script>

			  <jsp:include page="footer.jsp"></jsp:include>
				  
				  
				  