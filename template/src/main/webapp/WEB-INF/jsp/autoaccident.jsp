%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
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
				  <input type="text" class="input_txtbx1" id="inp_id" name="claimnumber" />
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Adjuster's name</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="adjustersname" />
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
				  <input type="text" class="input_txtbx1" id="inp_id" name="companion" />
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Description of vehicle you were in</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="make" style="width:70px" />
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="model" style="width:70px" />
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="year" style="width:70px"/>
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
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="make" style="width:70px" />
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="model" style="width:70px" />
				  <input type="text" class="smlinput_txtbx1" id="inp_id" name="year" style="width:70px"/>
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
				  <input type="text" class="input_txtbx1" id="inp_id" name="estimated_rate" />
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
				  </select>
				  <input type="text" name="conditions" id="conditions" style='display:none'/>
				  </td>
				  </tr> 
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Head Restraints</td>
				  <td valign="top" align="left" class="input_txt">
				  <select name="head_restraints" class="input_cmbbx1">
					<option selected="selected" value="right front" >Up</option>
					<option value="left front">Down</option>
					<option value="right rear">Don't know</option>	
				  </select>
				  </td>
				  </tr>
				  <tr>
				  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="right"><input type="submit" class="submit_btn2" value="Next"></td>
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
				  </form>
				  </div>
<script type="text/javascript">
function CheckConditions(val){
 var element=document.getElementById('conditions');
 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script>
			  <jsp:include page="footer.jsp"></jsp:include>
				  
				  
				  