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
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>What is the claim number of your accident</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="hidden" class="input_txtbx1" id="inp_id" value="${autoaccident.patient_number}" name="patient_number" />
				  <input type="text" class="input_txtbx1" id="inp_id" name="claimnumber" value="${autoaccident.claimnumber }" /></td>

				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Adjuster's name</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="adjustersname" value="${autoaccident.adjustersname }" />
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Who gave you the estimate</td>
				  <td valign="top" align="left" class="input_txt">
				  <select  name="estimate" class="input_cmbbx1">
					<option  value="your insurance" <c:if test="${autoaccident.estimate=='your insurance'}"><c:out value="selected"/></c:if>>Your Insurance company</option>
					<option value="other insurance" <c:if test="${autoaccident.estimate=='other insurance'}"><c:out value="selected"/></c:if>>Other Driver's Insurance company</option>
					<option value="body shop" <c:if test="${autoaccident.estimate=='body shop'}"><c:out value="selected"/></c:if>>Body shop</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Were you the</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="seating" class="input_cmbbx1">
					<option  value="driver" <c:if test="${autoaccident.seating=='driver'}"><c:out value="selected"/></c:if>>Driver</option>
					<option value="front seat" <c:if test="${autoaccident.seating=='front seat'}"><c:out value="selected"/></c:if>>Front seat Passenger</option>
					<option value="back seat" <c:if test="${autoaccident.seating=='back seat'}"><c:out value="selected"/></c:if>>Back seat Passenger</option>
					<option value="on job" <c:if test="${autoaccident.seating=='on job'}"><c:out value="selected"/></c:if>>On the job at the time of accident</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was anyone else in the car with you during the accident?who?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="companion" value="${autoaccident.companion }"/>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Description of vehicle you were in</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="vehicle_make" style="width:70px" value="${autoaccident.vehicle_make }"/>
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="vehicle_model" style="width:70px" value="${autoaccident.vehicle_model }" />
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="vehicle_year" style="width:70px"  value="${autoaccident.vehicle_year }"/>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Portion of the vehicle hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="vehicle_hit" class="input_cmbbx1">
					<option  value="right front" <c:if test="${autoaccident.vehicle_hit=='right front'}"><c:out value="selected"/></c:if>>Right Front</option>
					<option value="left front" <c:if test="${autoaccident.vehicle_hit=='left front'}"><c:out value="selected"/></c:if>>Left Front</option>
					<option value="right rear" <c:if test="${autoaccident.vehicle_hit=='right rear'}"><c:out value="selected"/></c:if>>Right Rear</option>
					<option value="left rear" <c:if test="${autoaccident.vehicle_hit=='left rear'}"><c:out value="selected"/></c:if>>Left Rear</option>
					<option value="right side" <c:if test="${autoaccident.vehicle_hit=='right side'}"><c:out value="selected"/></c:if>>Right side</option>
					<option value="left side" <c:if test="${autoaccident.vehicle_hit=='left side'}"><c:out value="selected"/></c:if>>Left side</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Description of other vehicle </td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="other_vehicle_make" style="width:70px" value="${autoaccident.other_vehicle_make }" />
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="other_vehicle_model" style="width:70px" value="${autoaccident.other_vehicle_model }" />
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="other_vehicle_year" style="width:70px" value="${autoaccident.other_vehicle_year }"/>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was you car stopped at the time of accident</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="carstopped" value="yes" class="input_txt"  <c:if test="${autoaccident.carstopped=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="carstopped" value="no" class="input_txt"  <c:if test="${autoaccident.carstopped=='no'}"><c:out value="Checked"/></c:if>>No</td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If you were the driver,was your foot on the brake</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="driverposition" value="yes" class="input_txt" <c:if test="${autoaccident.driverposition=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="driverposition" value="no" class="input_txt" <c:if test="${autoaccident.driverposition=='no'}"><c:out value="Checked"/></c:if>>No</td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was your vehicle moving at time of impact</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="vehicle_moving_time" value="yes" class="input_txt" <c:if test="${autoaccident.vehicle_moving_time=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="vehicle_moving_time" value="no" class="input_txt" <c:if test="${autoaccident.vehicle_moving_time=='no'}"><c:out value="Checked"/></c:if>>No</td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was car</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="wascar" class="input_cmbbx1">
					<option  value="slowing down" <c:if test="${autoaccident.wascar=='slowing down'}"><c:out value="selected"/></c:if> >Slowing Down</option>
					<option value="gaining speed" <c:if test="${autoaccident.wascar=='gaining speed'}"><c:out value="selected"/></c:if>>Gaining Speed</option>
					<option value="steady rate of speed" <c:if test="${autoaccident.wascar=='steady rate of speed'}"><c:out value="selected"/></c:if>>Steady Rate of Speed</option>	
				  </select>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Estimated rate of speed</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="estimated_rate" value="${autoaccident.estimated_rate }"/>
				  </td>
				  </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Time of day</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="time_of_day" class="input_cmbbx1">
					<option  value="day light" <c:if test="${autoaccident.time_of_day=='day light'}"><c:out value="selected"/></c:if>>DayLight</option>
					<option value="dawn" <c:if test="${autoaccident.time_of_day=='dawn'}"><c:out value="selected"/></c:if>>Dawn</option>
					<option value="dusk" <c:if test="${autoaccident.time_of_day=='dusk'}"><c:out value="selected"/></c:if>>Dusk</option>
					<option value="dark" <c:if test="${autoaccident.time_of_day=='dark'}"><c:out value="selected"/></c:if>>Dark</option>
					<option value="unknown" <c:if test="${autoaccident.time_of_day=='unknown'}"><c:out value="selected"/></c:if>>Unknown</option>	
				  </select>
				  </td>
				  </tr> 
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Road conditions</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="road_conditions" class="input_cmbbx1" onclick='CheckConditions(this.value);'>
					<option  value=" conditions" <c:if test="${autoaccident.road_conditions==' conditions'}"><c:out value="selected"/></c:if> > conditions</option>
					<option value="dry" <c:if test="${autoaccident.road_conditions=='dry'}"><c:out value="selected"/></c:if>>Dry</option>
					<option value="damp" <c:if test="${autoaccident.road_conditions=='damp'}"><c:out value="selected"/></c:if>>Damp</option>
					<option value="wet" <c:if test="${autoaccident.road_conditions=='wet'}"><c:out value="selected"/></c:if>>Wet</option>
					<option value="snow" <c:if test="${autoaccident.road_conditions=='snow'}"><c:out value="selected"/></c:if>>Snow</option>
					<option value="ice" <c:if test="${autoaccident.road_conditions=='ice'}"><c:out value="selected"/></c:if>>Ice</option>	
					<option value="other" <c:if test="${autoaccident.road_conditions=='other'}"><c:out value="selected"/></c:if>>Other</option>
					<option value="unknown" <c:if test="${autoaccident.road_conditions=='unknown'}"><c:out value="selected"/></c:if>>Unknown</option>
				  </select>
				  
				
				  </td>
				   <td><input type="text"name="conditions" id="conditions" style='display:none' value="${autoaccident.conditions}" name="conditions" /></td>
				  </tr> 
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Head Restraints</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="head_restraints" class="input_cmbbx1">
					<option value="up" <c:if test="${autoaccident.head_restraints=='up'}"><c:out value="selected"/></c:if> >Up</option>
					<option value="down" <c:if test="${autoaccident.head_restraints=='down'}"><c:out value="selected"/></c:if>>Down</option>
					<option value="do_no" <c:if test="${autoaccident.head_restraints=='do_no'}"><c:out value="selected"/></c:if>>Don't know</option>	
				  </select>
				  </td>
				  </tr>
				  
				  </table>
				  <table align="right">
				  <tr>
				  <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
				  <td>&nbsp;&nbsp;</td>
				  <td><br><input type="button"  class="submit_btn" value="Cancel" onclick="window.location.href='viewautoaccident'"/><br></td>
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
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Seat position after accident</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="seatpos_after_accident" class="input_cmbbx1">
					<option  value="was_altered" <c:if test="${autoaccident.seatpos_after_accident=='was_altered'}"><c:out value="selected"/></c:if>>Was Altered</option>
					<option value="was_not_altered" <c:if test="${autoaccident.seatpos_after_accident=='was_not_altered'}"><c:out value="selected"/></c:if>>Was Not Altered</option>
					<option value="dontknow" <c:if test="${autoaccident.seatpos_after_accident=='dontknow'}"><c:out value="selected"/></c:if>>Don't know</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Seat after the accident</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="seat_after_accident" class="input_cmbbx1">
					<option  value="broken" <c:if test="${autoaccident.seat_after_accident=='broken'}"><c:out value="selected"/></c:if> >Broken</option>
					<option value="notbroken" <c:if test="${autoaccident.seatpos_after_accident=='notbroken'}"><c:out value="selected"/></c:if>>Not Broken</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Lap Seat belt</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="lap_seat_belt" class="input_cmbbx1">
					<option  value="worn" <c:if test="${autoaccident.lap_seat_belt=='worn'}"><c:out value="selected"/></c:if>>Worn</option>
					<option value="not_worn" <c:if test="${autoaccident.lap_seat_belt=='not_worn'}"><c:out value="selected"/></c:if>>Not Worn</option>
					<option value="dont_know" <c:if test="${autoaccident.lap_seat_belt=='dont_know'}"><c:out value="selected"/></c:if>>Don't know</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Shoulder Seat belt</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="shoulder_seat_belt" class="input_cmbbx1">
					<option  value="worns" <c:if test="${autoaccident.shoulder_seat_belt=='worns'}"><c:out value="selected"/></c:if>>Worn</option>
					<option value="notworn" <c:if test="${autoaccident.shoulder_seat_belt=='notworn'}"><c:out value="selected"/></c:if>>Not Worn</option>
					<option value="donno" <c:if test="${autoaccident.shoulder_seat_belt=='donno'}"><c:out value="selected"/></c:if>>Don't know</option>
				  </select>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Air bag deployed</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="airbag" value="0" class="input_txt" checked="true" onclick="toggle('show')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="airbag" value="1" class="input_txt" onclick="toggle('hide')">No&nbsp;&nbsp;&nbsp;
				  <select name="wereyou" class="input_cmbbx1" id="mytext">
				 <option  value="struck" <c:if test="${autoaccident.wereyou=='struck'}"><c:out value="selected"/></c:if>>Struck</option>
				 <option value="notstruck" <c:if test="${autoaccident.wereyou=='notstruck'}"><c:out value="selected"/></c:if>>Not Struck</option>
				  </select>
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
				  <select name="body_position" class="input_cmbbx1" id="body_position" onclick='Checkposition(this.value);'>
					<option  value="good" <c:if test="${autoaccident.body_position=='good'}"><c:out value="selected"/></c:if>>Good</option>
					<option value="forward" <c:if test="${autoaccident.body_position=='forward'}"><c:out value="selected"/></c:if>>Forward</option>
					<option value="leaning" <c:if test="${autoaccident.body_position=='learning'}"><c:out value="selected"/></c:if>>Leaning</option>
					<option value="others" <c:if test="${autoaccident.body_position=='others'}"><c:out value="selected"/></c:if>>Other</option>
					<option value="un_known" <c:if test="${autoaccident.body_position=='un_known'}"><c:out value="selected"/></c:if>>Unknown</option>
				  </select>
				   <input type="text" name="body_position1" id="body_position1" value="${autoaccident.body_position1}"style='display:none'/>
				  </td>
				  </tr>
				 <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Head position</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="head_position" class="input_cmbbx1" id="head_position"onclick='CheckHeadposition(this.value);'>
					<option  value="forwardpos" <c:if test="${autoaccident.head_position=='forwardpos'}"><c:out value="selected"/></c:if>>Forward</option>
					<option value="left" <c:if test="${autoaccident.head_position=='left'}"><c:out value="selected"/></c:if>>Left</option>
					<option value="right" <c:if test="${autoaccident.head_position=='right'}"><c:out value="selected"/></c:if>>Right</option>
					<option value="up_pos" <c:if test="${autoaccident.head_position=='up_pos'}"><c:out value="selected"/></c:if>>Up</option>
					<option value="down_pos" <c:if test="${autoaccident.head_position=='down_pos'}"><c:out value="selected"/></c:if>>Down</option>
					<option value="others" <c:if test="${autoaccident.head_position=='others'}"><c:out value="selected"/></c:if>>Other</option>
					<option value="unknown_pos" <c:if test="${autoaccident.head_position=='unknown_pos'}"><c:out value="selected"/></c:if>>Unknown</option>
				  </select>
				   <input type="text" name="head_position1" id="head_position1" value="${autoaccident.head_position1}"style='display:none'/>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Hands on wheel</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="hands_on_wheel" value="one" class="input_txt" <c:if test="${autoaccident.hands_on_wheel=='one'}"><c:out value="Checked"/></c:if>>One&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="hands_on_wheel" value="two" class="input_txt" <c:if test="${autoaccident.hands_on_wheel=='two'}"><c:out value="Checked"/></c:if>>Two</td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Aware of crash</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="aware_of_crash" class="input_cmbbx1" >
					<option value="aware" <c:if test="${autoaccident.aware_of_crash=='aware'}"><c:out value="selected"/></c:if> >Aware</option>
					<option value="surprised" <c:if test="${autoaccident.aware_of_crash=='surprised'}"><c:out value="selected"/></c:if>>Surprised</option>
				  </select>
				  </td>
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Did you brace yourself</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="brace" value="0" class="input_txt" checked="true" onclick="toggle1('show1')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="brace" value="1" class="input_txt" onclick="toggle1('hide1')">No&nbsp;&nbsp;&nbsp;
				  <select name="ifyes" class="input_cmbbx1" id="mybrace">
				  <option  value="bracearms" <c:if test="${autoaccident.ifyes=='bracearms'}"><c:out value="selected"/></c:if>>Braced with arms</option>
				  <option value="bracelegs" <c:if test="${autoaccident.ifyes=='bracearms'}"><c:out value="selected"/></c:if>>Braced with legs</option>
				  </select>
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
				  <input type="radio" name="further_injury" value="yes" class="input_txt" checked="true" onclick="toggle2('show2')" <c:if test="${autoaccident.further_injury=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="further_injury" value="no" class="input_txt" onclick="toggle2('hide2')" <c:if test="${autoaccident.further_injury=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  <textarea rows='3' cols='35' id="injury"  placeholder="Please explain"></textarea>
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
				  <td><br><input type="button"  class="submit_btn" value="Cancel" onclick="window.location.href='viewautoaccident'"/><br></td>
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
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient's body</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="patient_body" class="input_cmbbx1" onclick='CheckPatientposition(this.value);'>
					<option value="jolted" <c:if test="${autoaccident.patient_body=='jolted'}"><c:out value="selected"/></c:if>>Jolted</option>
					<option value="thrown_about" <c:if test="${autoaccident.patient_body=='thrown_about'}"><c:out value="selected"/></c:if>>Thrown About</option>
					<option value="stunned" <c:if test="${autoaccident.patient_body=='stunned'}"><c:out value="selected"/></c:if>>Stunned</option>
					<option value="dazed" <c:if test="${autoaccident.patient_body=='dazed'}"><c:out value="selected"/></c:if>>Dazed</option>
					<option value="whipped" <c:if test="${autoaccident.patient_body=='whipped'}"><c:out value="selected"/></c:if>>Whipped</option>
					<option value="slammed" <c:if test="${autoaccident.patient_body=='slammed'}"><c:out value="selected"/></c:if>>Slammed</option>
					<option value="otherbody" <c:if test="${autoaccident.patient_body=='otherbody'}"><c:out value="selected"/></c:if>>Other</option>
				  </select>
				  <input type="text" name="patient_body1" id="patient_body1" value="${autoaccident.patient_body1}"style='display:none'/>
				  </td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Did patient's body strike interior of car</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="body_strike" value="yes" class="input_txt"  onclick="toggle3('show3');" <c:if test="${autoaccident.body_strike=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="body_strike" value="no" class="input_txt" onchange="toggle3('hide3');" <c:if test="${autoaccident.body_strike=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  </table>
				<div id="hit" style="display:block;">
				<!-- <div class="contentbox"> -->
				<table cellpadding="0" cellspacing="0" border="0" width="100%">
				  
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My head hit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="head_hit" value="${autoaccident.head_hit }" />
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Right Left Shoulder hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlshoulder_hit" value="${autoaccident.rlshoulder_hit }" />
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My Right Left Hip hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlhip_hit" value="${autoaccident.rlhip_hit }" />
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Right Left Knee hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlknee_hit" value="${autoaccident.rlknee_hit }" />
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My Chest hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="chest_hit" value="${autoaccident.chest_hit }"/>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Right Left Arm hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlarm_hit" value="${autoaccident.rlarm_hit }"/>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My Right Left Leg hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="rlleg_hit" value="${autoaccident.rlleg_hit }"/>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Other body part hit</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="otherpart_hit" value="${autoaccident.otherpart_hit }" />
				  </td>
				  </tr>
				  </table>
				  </div>
				  </div>
				  <!-- </td>
				  </tr> -->
				  
				  <table cellpadding="0" cellspacing="0" border="0" width="100%"> 
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Were you wearing glasses at the time of accident&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="wearing_glasses" value="yes" class="input_txt" <c:if test="${autoaccident.wearing_glasses=='yes'}"><c:out value="Checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="wearing_glasses" value="no" class="input_txt" <c:if test="${autoaccident.wearing_glasses=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
			      </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Were the glasses still in place after impact</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="glasses_impact" value="yes" class="input_txt" <c:if test="${autoaccident.glasses_impact=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="glasses_impact" value="no" class="input_txt" <c:if test="${autoaccident.glasses_impact=='no'}"><c:out value="Checked"/></c:if> >No&nbsp;&nbsp;&nbsp;
			      </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Unconscious</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="unconscious" value="yes" class="input_txt" onclick="toggle4('show4')" <c:if test="${autoaccident.unconscious=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="unconscious" value="no" class="input_txt" onclick="toggle4('hide4')" <c:if test="${autoaccident.unconscious=='no'}"><c:out value="Checked"/></c:if> >No&nbsp;&nbsp;&nbsp;
			      <input type="text" class="input_txtbx1" id="uncon" name="uncon" value="${autoaccident.uncon }" > (minutes)</input>
			      </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt">Estimated amount of property damage</td>
				  <td valign="top" align="left" class="input_txt">$
				  <input type="text" class="input_txtbx1" id="inp_id" name="estimated_amount" value="${autoaccident.estimated_amount }"/>
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Damage to the other car</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="damage" class="input_cmbbx1" >
					<option ed="ed" value="minimal" <c:if test="${autoaccident.damage=='minimal'}"><c:out value="selected"/></c:if>>Minimal</option>
					<option value="moderate" <c:if test="${autoaccident.damage=='moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
					<option value="major" <c:if test="${autoaccident.damage=='major'}"><c:out value="selected"/></c:if>>Major</option>
					<option value="totaled" <c:if test="${autoaccident.damage=='totaled'}"><c:out value="selected"/></c:if>>Totaled</option>
				  </select>
				  </td>
				  </tr> 
				 </table>
				  <table align="right">
				  <tr>
				  	<td><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  /></td>
				  	<td>&nbsp;&nbsp;</td>
				  <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
				  <td>&nbsp;&nbsp;</td>
				  <td><br><input type="button"  class="submit_btn" value="Cancel" onclick="window.location.href='viewautoaccident'"/><br></td>
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
				  <input type="radio" name="was_anyone_cited" value="yes" class="input_txt" <c:if test="${autoaccident.was_anyone_cited=='yes'}"><c:out value="Checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="was_anyone_cited" value="no" class="input_txt" <c:if test="${autoaccident.was_anyone_cited=='no'}"><c:out value="Checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
			      </td>
				  </tr> 
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Who?</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="who" class="input_cmbbx1" >
					<option  value="you" <c:if test="${autoaccident.who=='you'}"><c:out value="selected"/></c:if>>You</option>
					<option value="other_driver" <c:if test="${autoaccident.who=='other_driver'}"><c:out value="selected"/></c:if>>Other Driver</option>
				  </select>
				  </td>
				  </tr> 
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>After accident,I had the following</td>
				 <td valign="top" align="left" class="input_txt">
				 <input type="checkbox" name="headache" value="headache" <c:if test="${autoaccident.headache=='headache'}"><c:out value="Checked"/></c:if> >Headache&nbsp;&nbsp;&nbsp;&nbsp; 
				 <input type="checkbox" name="dizziness" value="dizziness" <c:if test="${autoaccident.dizziness=='dizziness'}"><c:out value="Checked"/></c:if> >Dizziness&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="nausea" value="nausea" <c:if test="${autoaccident.nausea=='nausea'}"><c:out value="Checked"/></c:if> >Nausea&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="confusion" value="confusion" <c:if test="${autoaccident.confusion=='confusion'}"><c:out value="Checked"/></c:if> >Confusion&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="disorientation" value="disorientation" <c:if test="${autoaccident.disorientation=='disorientation'}"><c:out value="Checked"/></c:if> >Disorientation&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="neckpain" value="neckpain" <c:if test="${autoaccident.neckpain=='neckpain'}"><c:out value="Checked"/></c:if> >Neck pain&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="checkbox" name="otherpain" value="otherpain" <c:if test="${autoaccident.otherpain=='otherpain'}"><c:out value="Checked"/></c:if> >Other&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="text" class="input_txtbx1" id="inp_id" name="otherpain" placeholder="If other" />
				 </td>
				 </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Symptoms first appeared</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="first_symptom" class="input_cmbbx1"  onchange='Checksymptom(this.value);'>
					<option  value="immediately" <c:if test="${autoaccident.first_symptom=='immediately'}"><c:out value="Checked"/></c:if> >Immediately</option>
					<option value="hours" <c:if test="${autoaccident.first_symptom=='hours'}"><c:out value="Checked"/></c:if> >hours after the accident</option>
					<option value="next_day" <c:if test="${autoaccident.first_symptom=='next_day'}"><c:out value="Checked"/></c:if> >The next day</option>
					<option value="days" <c:if test="${autoaccident.first_symptom=='days'}"><c:out value="Checked"/></c:if> >days</option>
				  </select>
				 <input type="text" name="symptom" id="symptom" style='display:none'/>
				  </td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>After the accident I went</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="after_accident" class="input_cmbbx1"  onchange='Check(this.value);'>
					<option  value="hospital" <c:if test="${autoaccident.after_accident=='hospital'}"><c:out value="Checked"/></c:if>  >Hospital</option>
					<option value="work" <c:if test="${autoaccident.after_accident=='work'}"><c:out value="Checked"/></c:if> >Work</option>
					<option value="home" <c:if test="${autoaccident.after_accident=='home'}"><c:out value="Checked"/></c:if> >Home</option>
					<option value="family" <c:if test="${autoaccident.after_accident=='family'}"><c:out value="Checked"/></c:if> >Family</option>
					<option value="physician" <c:if test="${autoaccident.after_accident=='physician'}"><c:out value="Checked"/></c:if> >Physician</option>
					<option value="otheracc" <c:if test="${autoaccident.after_accident=='otheracc'}"><c:out value="Checked"/></c:if> >Other</option>
				  </select>
				 <input type="text" name="accident" id="accident" value="${autoaccident.accident}"style='display:none'/>
				  </td>
				  </tr> 
				  </table>
				   
				   <div id="accident_hospital">
				  	
				  <table cellpadding="0" cellspacing="0" border="0" width="100%">
				   <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">Name of the hospital&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  
				  <input type="text" class="input_txtbx1" id="inp_id" name="hosname" value="${autoaccident.hosname }"/>
				  <td></td>
				  <td></td>
				  </td>
				  </tr>
				   <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  
				  <input type="text" class="input_txtbx1" id="inp_id" name="city" value="${autoaccident.city }" />
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
				
				  <select name="hospitalget" class="input_cmbbx1"  onchange='Checkhospital(this.value);'>
					<option  value="ambulance" <c:if test="${autoaccident.hospitalget=='ambulance'}"><c:out value="Checked"/></c:if>>Ambulance</option>
					<option value="otherhos" <c:if test="${autoaccident.hospitalget=='otherhos'}"><c:out value="Checked"/></c:if>>Other</option>
				  </select>
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
				  </table>
				 <table align="right">
				  <br><tr>
				 <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous" style = "display:none" />&nbsp;</td>
                <td><input type="submit" class="submit_btn" value="Update"></td>
                <td><input type="reset" class="submit_btn" value="Cancel" onclick="window.location.href='viewautoaccident'"></td>				 
				</table> 
				  
				     </div>
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
 var element=document.getElementById('body_position1');
 if(val=='others')
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script>
<script type="text/javascript">
function CheckHeadposition(val){
 var element=document.getElementById('head_position1');
 if(val=='others')
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script>
<script type="text/javascript">
function CheckPatientposition(val){
 var element=document.getElementById('patient_body1');
 if(val=='otherbody')
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
 
 var element1 = document.getElementById('accident');
 
 if(val=='hospital'){
	
   element.style.display='block';
   element1.style.display='none';
 }
 else if(val =='otheracc'){
	
	 element1.style.display='block';
	 element.style.display='none';
 }
 else {
   element.style.display='none';
 element1.style.display='none';
 }
} 
</script>


			  <jsp:include page="footer.jsp"></jsp:include>
				  
				  
				  