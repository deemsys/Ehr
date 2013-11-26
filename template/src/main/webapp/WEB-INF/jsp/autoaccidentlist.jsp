<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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
<c:forEach items="${autoaccidentForm.autoaccident}" var="autoaccident" varStatus="status">
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
				  <td valign="top" align="left" class="input_txt">${autoaccident.claimnumber}</td>

				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Adjuster's name</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.adjustersname}
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Who gave you the estimate</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.estimate} </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Were you the</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.seating}
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was anyone else in the car with you during the accident?who?</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.companion}
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Description of vehicle you were in</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.vehicle_make} 
				  ${autoaccident.vehicle_model}
				  ${autoaccident.vehicle_year}
				  </td>				  
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Portion of the vehicle hit</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.vehicle_hit}
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Description of other vehicle </td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.other_vehicle_make} 
				  ${autoaccident.other_vehicle_model}
				  ${autoaccident.other_vehicle_year}
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was you car stopped at the time of accident</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.carstopped}</td> 
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If you were the driver,was your foot on the brake</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.driverposition} 
                  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was your vehicle moving at time of impact</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.vehicle_moving_time}</td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was car</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.wascar}
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Estimated rate of speed</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.estimated_rate}
				  </td>
				  </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Time of day</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.time_of_day}
				  </td>
				  </tr> 
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Road conditions</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.road_conditions}
				  </td>
				  </tr> 
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Head Restraints</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.head_restraints}
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
				 <td valign="top" align="left" class="input_txt">${autoaccident.seatpos_after_accident}
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Seat after the accident</td>
				 <td valign="top" align="left" class="input_txt">${autoaccident.seat_after_accident}
				  </td>
				  </tr>
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Lap Seat belt</td>
				 <td valign="top" align="left" class="input_txt">${autoaccident.lap_seat_belt}
	     		  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Shoulder Seat belt</td>
				 <td valign="top" align="left" class="input_txt">${autoaccident.shoulder_seat_belt}
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Air bag deployed</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.airbag}
				  ${autoaccident.wereyou}
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
				 <td valign="top" align="left" class="input_txt">${autoaccident.body_position}
				  </td>
				  </tr>
				 <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Head position</td>
				 <td valign="top" align="left" class="input_txt">${autoaccident.head_position} </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Hands on wheel</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.hands_on_wheel}</td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Aware of crash</td>
				 <td valign="top" align="left" class="input_txt">${autoaccident.aware_of_crash}  </td>
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Did you brace yourself</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.brace}
				  ${autoaccident.ifyes}
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Did this cause further injury</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.further_injury}
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
				 <td valign="top" align="left" class="input_txt">${autoaccident.patient_body}
				  </td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Did patient's body strike interior of car</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.body_strike}
				  </td>
				  </tr>
				  </table>
				<div id="hit" style="display:block;">
				<!-- <div class="contentbox"> -->
				<table cellpadding="0" cellspacing="0" border="0" width="100%">
				  
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My head hit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="left" class="input_txt"> ${autoaccident.head_hit}
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Right Left Shoulder hit</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.rlshoulder_hit}
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My Right Left Hip hit</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.rlhip_hit}
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Right Left Knee hit</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.rlknee_hit}
				   </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My Chest hit</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.chest_hit}
				   </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Right Left Arm hit</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.rlarm_hit}
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">My Right Left Leg hit</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.rlleg_hit}
				    </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">My Other body part hit</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.otherpart_hit}
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
				  <td valign="top" align="left" class="input_txt">${autoaccident.wearing_glasses}
			      </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Were the glasses still in place after impact</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.glasses_impact}
			      </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Unconscious</td>
				  <td valign="top" align="left" class="input_txt">${autoaccident.unconscious}
				  ${autoaccident.uncon}
			      </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt">Estimated amount of property damage</td>
				  <td valign="top" align="left" class="input_txt">$
				  ${autoaccident.estimated_amount}
				  </td>
				  </tr>
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Damage to the other car</td>
				 <td valign="top" align="left" class="input_txt">
				 ${autoaccident.damage}
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
				  <td valign="top" align="left" class="input_txt">${autoaccident.was_anyone_cited}
			      </td>
				  </tr> 
				  <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Who?</td>
				 <td valign="top" align="left" class="input_txt">${autoaccident.who}
				  </td>
				  </tr> 
				  <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>After accident,I had the following</td>
				 <td valign="top" align="left" class="input_txt">
				 ${autoaccident.headache} 
				 ${autoaccident.dizziness}
				 ${autoaccident.nausea}
				 ${autoaccident.confusion}
				 ${autoaccident.disorientation}
				 ${autoaccident.neckpain}
				 ${autoaccident.otherpain}
				 </td>
				 </tr>
				 <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Symptoms first appeared</td>
				 <td valign="top" align="left" class="input_txt">
				 ${autoaccident.first_symptom}
				  </td>
				  </tr> 
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>After the accident I went</td>
				 <td valign="top" align="left" class="input_txt">
				 ${autoaccident.after_accident}
				  </td>
				  </tr> 
				  </table>
				  <div id="accident_hospital">
				  <table cellpadding="0" cellspacing="0" border="0" width="100%">
				   <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">Name of the hospital&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  
				  <input type="text" class="input_txtbx1" id="inp_id" name="hosname" />
				  <td></td>
				  <td></td>
				  </td>
				  </tr>
				   <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  ${autoaccident.city}
				  </td>
				  </tr>
				   <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">Length of stay&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  ${autoaccident.staylength}
				  </td>
				  <td></td>
				  <td></td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How did you get to the hospital?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				${autoaccident.hospitalget}		
				  </td>
				  </tr> 
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt">What body parts were x-rayed,what treatment was given
				  ${autoaccident.xray}
				  </td>
				  <td></td>
				  <td></td>
				  </tr>
				   <tr class="row1">
                  <td valign="middle" align="left" class="input_txt">What did they tell you was wrong&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  ${autoaccident.wrong}
				  </td>
				  
				  </tr>
				   </table> 
				  </div>
				  
				  </div>
				  </div>
				  </td>
				  </tr>
				  </c:forEach>
				  </table>
				
				  
				     </div>
				  </div>
				  <table align="right">
				  <br><tr>
				 <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous" style = "display:none" />&nbsp;</td>
                  <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
				</table>  
				
				  </div>
				  </body>
				  </html>
				  
				  
<!-- <script type="text/javascript">
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
 -->
			  <jsp:include page="footer.jsp"></jsp:include>
				  
				  
				  