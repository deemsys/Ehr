<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
<div id="right_content">
<form action="autoaccident_1" method="POST">

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
					<option selected="selected" value="for_ward" >Forward</option>
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
				  <textarea rows='3' cols='35' id="injury" placeholder="Please explain"></textarea>
				  </td>
				  </tr>
				  <!--  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If yes, please explain</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="ifyes_explain" />
				  </td>
				  </tr> -->
				  <tr class="row1">
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
				  </tr> 
				  <tr>
				 <!--  <td valign="top" align="center">&nbsp;</td> -->
				  <td valign="top" align="left"><input type="button" class="submit_btn2" value="Previous" onclick="history.go(-1)"></td> 
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
 <jsp:include page="footer.jsp"></jsp:include>
 			  
