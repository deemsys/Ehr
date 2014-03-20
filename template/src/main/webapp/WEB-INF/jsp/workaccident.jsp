<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  </ul>
  <div class="tabs-spacer"></div>
  <c:choose>
    		<c:when test="${empty work}">
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
				  <input type="text" class="input_txtbx1" id="inp_id" name="job_classification" /><span class="err"><form:errors path="Workaccident.job_classification"></form:errors></span>
				  </td>
				  </tr>
				 <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Job Position</td>
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
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="pick" value="yes" class="input_txt" checked="true" onclick="any('show')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="pick" value="No" class="input_txt" onclick="any('hide')">No&nbsp;&nbsp;&nbsp;
				   <input type="text" class="input_txtbx1" id="carry" name="carry" placeholder="If yes, What"/>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How did the injury occur?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="injury_occur" /><span class="err"><form:errors path="Workaccident.injury_occur"></form:errors>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Who saw the accident?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="saw_accident" /><span class="err"><form:errors path="Workaccident.saw_accident"></form:errors>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Job Title</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="title" /><span class="err"><form:errors path="Workaccident.title"></form:errors>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How long have you been at your present job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="present_job" /><span class="err"><form:errors path="Workaccident.present_job"></form:errors>
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Has there been a time loss or absentee caused from job injury</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="time_loss" value="yes" class="input_txt" checked="true" onclick="time('show1')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="time_loss" value="No" class="input_txt" onclick="time('hide1')">No&nbsp;&nbsp;&nbsp;
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
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="pick_lift" value="yes" class="input_txt" checked="true" onclick="toggle3('show3')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="pick_lift" value="No" class="input_txt" onclick="toggle3('hide3')">No&nbsp;&nbsp;&nbsp;
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
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="liftin_orout" value="yes" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="liftin_orout" value="No" class="input_txt">No&nbsp;&nbsp;&nbsp;
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
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="push_pull" value="yes" class="input_txt" checked="true" onclick="pull('show4')">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="push_pull" value="No" class="input_txt" onclick="pull('hide4')">No&nbsp;&nbsp;&nbsp;
				   <input type="text" class="input_txtbx1" id="jobpp" name="jobpp" placeholder="If yes, give specifics"/>
				  </td>
				  </tr>
				  </table>
				  <br>
				  <table align="right">
				  <tr>
				  <td><input type="button" id="btnNext" class="submit_btn" value="Next"/>
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
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="levers" value="yes" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="levers" value="No" class="input_txt">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you work overhead</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="overhead" value="yes" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="overhead" value="No" class="input_txt">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How many employees have been injured doing your job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="no_of_employees" /><span class="err"><form:errors path="Workaccident.no_of_employees"></form:errors>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you like your job</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="like_job" value="yes" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="like_job" value="No" class="input_txt">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was a pre-employment exam performed or required</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="pre_employment" value="yes" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="pre_employment" value="No" class="input_txt">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If off work, do you want to return to your job</td>
				  <td valign="top" align="left" class="input_txt"><input type="radio" name="return_job" value="yes" class="input_txt" checked="true" >Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="return_job" value="No" class="input_txt">No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>What changes would you make in your job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="changes_in_job" /><span class="err"><form:errors path="Workaccident.changes_in_job"></form:errors>
				  </td>
				  </tr>
				  </table>
				  <br>
				   <table align="right"> <tr><td><input type="button" id="btnPrevious" class="submit_btn" value="Previous" style = "display:none" />&nbsp;</td>

<td valign="top" align="center"><input type="submit" class="submit_btn" value="Save"></td>
 
             		<!--  <td valign="top" align="center"><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewworkaccident'"></td> -->
				  
                  <td valign="top" align="center"><input type="reset" class="submit_btn" value="Cancel" onclick="window.location.href='work'"></td></td>
<tr>
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
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
  				<td align="left" valign="top" width="50%" style="padding-right:25px;">
  				<table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr class="row1">
					
    				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>What is the job classification of your normal job</td>
    				   <input type="hidden" class="input_txtbx1" id="inp_id" value="${work.patient_no}" name="patient_no" />
				  			 <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.job_classification}" name="job_classification" /></br><span class="err"><form:errors path="Workaccident.job_classification"></form:errors></span></td>
					 <td></td>   <td></td><td></td><td></td><td></td> <td></td><td></td>
				 </tr>
				 <tr class="row2">
                						<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Job Position</td>
                						 <td valign="top" align="left" class="input_txt">
				  							<select name="doyou_pos" class="input_cmbbx1" id="doyoucheck"  onclick='Checkpos();'>	
				  							 <option value="sit_at_desk" <c:if test="${work.doyou_pos=='sit_at_desk'}"><c:out value="selected"/></c:if>>Sit at desk</option>
						                     <option value="walk" <c:if test="${work.doyou_pos=='walk'}"><c:out value="selected"/></c:if>>Walk</option>	
						                     <option value="stand" <c:if test="${work.doyou_pos=='stand'}"><c:out value="selected"/></c:if>>Stand</option>
						                     <option value="stoop" <c:if test="${work.doyou_pos=='stoop'}"><c:out value="selected"/></c:if>>Stoop</option>
						                     <option value="hold" <c:if test="${work.doyou_pos=='hold'}"><c:out value="selected"/></c:if>>Hold</option>
						                     <option value="carry" <c:if test="${work.doyou_pos=='carry'}"><c:out value="selected"/></c:if>>Carry</option>
						                     <option value="drive_comp_vehi" <c:if test="${work.doyou_pos=='drive_comp_vehi'}"><c:out value="selected"/></c:if>>Drive a company vehicle</option>
						                     <option value="load" <c:if test="${work.doyou_pos=='load'}"><c:out value="selected"/></c:if>>Load</option>
						                   <option value="other" <c:if test="${work.doyou_pos=='other'}"><c:out value="selected"/></c:if>>Other</option> 
						                      
						                    
						                    <%--  <c:if test="${work.doyou_pos=='other'}">
						                     <td><input type="text" id="doyou" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.doyou}" name="doyou" /></br><span class="err"><form:errors path="Workaccident.doyou"></form:errors></span></td>
						                 		</c:if> --%>
						                 		 </select>
						                 		 </td>
						                      <td><input type="text" name="doyou" id="doyou" style='display:none' onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.doyou}" name="doyou" /></br><span class="err"><form:errors path="Workaccident.doyou"></form:errors></span></td>
						              <td></td>
						              <td></td>
						              <td></td>
						              <td></td>
						              <td></td>
						             
						              
						             
						              </tr>
			  	 <tr class="row1">
			  	 				 <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you carry anything or pick anything up</td>
				 				 <td valign="top" align="left" class="input_txt">
				 				 <input type="radio" name="pick" value="yes" class="input_txt" id="pickcheck" onclick="any();" <c:if test="${work.pick=='yes'}"><c:out value="checked=checked"/></c:if>>yes&nbsp;&nbsp;&nbsp;
				 				 <input type="radio" name="pick" value="No" class="input_txt" id="pickun" onclick="any();"<c:if test="${work.pick=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				   <input type="text" class="input_txtbx1" id="carry" name="carry" placeholder="If yes, What"  style='display:none' value="${work.carry}" name="carry" /></br><span class="err"><form:errors path="Workaccident.carry"></form:errors></span></td>
				 
			  	 </tr>
			  	  <tr class="row2">
			  	 				 <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How did the injury occur?</td>
				 				<td valign="top" align="left" class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.injury_occur}" name="injury_occur" /></br><span class="err"><form:errors path="Workaccident.injury_occur"></form:errors></span></td>
				 				 <td></td>
						              <td></td>
						              <td></td>
						              <td></td>
						               <td></td>
						              <td></td>
						              <td></td>
				 </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Who saw the accident?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.saw_accident}" name="saw_accident" /></br><span class="err"><form:errors path="Workaccident.saw_accident"></form:errors></span></td>
				  </tr>
				    <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Job Title</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.title}" name="title" /></br><span class="err"><form:errors path="Workaccident.title"></form:errors></span></td>
				   <td></td>
						              <td></td>
						              <td></td>
						              <td></td>
						               <td></td>
						              <td></td>
						              <td></td>
				  </tr>	
				 <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How long have you been at your present job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.present_job}" name="present_job" /></br><span class="err"><form:errors path="Workaccident.present_job"></form:errors></span></td>
				 </tr>	
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Has there been a time loss or absenteeism caused from job injury</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="time_loss" value="yes" class="input_txt" id="timelosscheck"  onclick="time();"<c:if test="${work.time_loss=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="time_loss" value="No" class="input_txt" onclick="time();"<c:if test="${work.time_loss=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				   <input type="text" class="input_txtbx1" id="timeloss1" name="absenteeism" placeholder="If yes, explain(include dates)" value="${work.absenteeism}"  /></br><span class="err"><form:errors path="Workaccident.absenteeism"></form:errors></span></td>
				  <td></td>
						              <td></td>
						              <td></td>
						              <td></td>
						               <td></td>
						              <td></td>
						              <td></td>
				  </tr>	
				   <tr class="row1">
                						<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Type of lighting in the building</td>
                						<td valign="top" align="left" class="input_txt">
										  <select name="type_of_light" class="input_cmbbx1" id="typeoflight"onclick='Checklight();'>
					 						<option value="fluorescent" <c:if test="${work.type_of_light=='fluorescent'}"><c:out value="selected"/></c:if>>Fluorescent</option>
						                     <option value="overhead" <c:if test="${work.type_of_light=='overhead'}"><c:out value="selected"/></c:if>>Overhead</option>	
						                     <option value="onmachine" <c:if test="${work.type_of_light=='onmachine'}"><c:out value="selected"/></c:if>>On machine</option>
						                    <option value="others" <c:if test="${work.type_of_light=='others'}"><c:out value="selected"/></c:if>>Others</option> 
						                    </select>
						                      <%-- <c:if test="${work.type_of_light=='others'}">
						                     <td> <input type="text" name="lighting" id="lighting" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.lighting}" name="lighting" /></br><span class="err"><form:errors path="Workaccident.lighting"></form:errors></span></td>
						                 		</c:if>  --%>
						                   <td> <input type="text" name="lighting" id="lighting_div" style='display:none' onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.lighting}" name="lighting" /></br><span class="err"><form:errors path="Workaccident.lighting"></form:errors></span></td>  
											<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						             			 </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you pick up or lift?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="pick_lift" value="yes" class="input_txt" id="pickcheck1" onclick="toggle3();" <c:if test="${work.pick_lift=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="pick_lift" value="No" class="input_txt"  onclick="toggle3();" <c:if test="${work.pick_lift=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  <td></td>   <td></td><td></td><td></td><td></td> <td></td><td></td>
				  </tr>
				  </table>
				  <div id="yeschecked"  style='display:none'>
					<table cellpadding="0" cellspacing="0" border="0" width="100%">
				            <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If yes, how much&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.how_much}" name="how_much" /></br><span class="err"><form:errors path="Workaccident.how_much"></form:errors></span></td>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How often</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"   onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.how_often}" name="how_often" /></br><span class="err"><form:errors path="Workaccident.how_often"></form:errors></span>
				  </td>
				  <td></td>   <td></td><td></td><td></td><td></td> <td></td><td></td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>From where to where</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"   onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.where_to_where}" name="where_to_where" /></br><span class="err"><form:errors path="Workaccident.where_to_where"></form:errors></span>
				  </td>
				  </tr>
				  </table>
				  </div>
				  <table cellpadding="0" cellspacing="0" border="0" width="100%">
				                
				  				    <tr class="row2">
                						<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you lift from&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                						<td valign="top" align="left" class="input_txt">
										  <select name="lift_from" class="input_cmbbx1">
					 						<option value="ground" <c:if test="${work.lift_from=='ground'}"><c:out value="selected"/></c:if>>Ground</option>
						                     <option value="bench" <c:if test="${work.lift_from=='bench'}"><c:out value="selected"/></c:if>>Bench</option>	
						                     <option value="platform" <c:if test="${work.lift_from=='platform'}"><c:out value="selected"/></c:if>>Platform</option>
						                   </select>
										</td>
										 <td></td>   <td></td><td></td><td></td><td></td> <td></td><td></td>
					</tr>
					<tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you lift in or out of a machine?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="liftin_orout" value="yes" class="input_txt" <c:if test="${work.liftin_orout=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="liftin_orout" value="No" class="input_txt"<c:if test="${work.liftin_orout=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>			
				   <tr class="row2">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If working at a machine,do you</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="workpos" class="input_cmbbx1" >
					<option value="sit" <c:if test="${work.workpos=='sit'}"><c:out value="selected"/></c:if>>Sit</option>
					<option value="stand" <c:if test="${work.workpos=='stand'}"><c:out value="selected"/></c:if>>Stand</option>	
					<option value="kneel" <c:if test="${work.workpos=='kneel'}"><c:out value="selected"/></c:if>>Kneel</option>
				  </select>
				 </td>
				  <td></td>   <td></td><td></td><td></td><td></td> <td></td><td></td>
				</tr>	
				<tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>In your job, do you push or pull</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="push_pull" value="yes" class="input_txt" id="pushcheck" onclick="pull();"<c:if test="${work.push_pull=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="push_pull" value="No" class="input_txt" onclick="pull();"<c:if test="${work.push_pull=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				   <input type="text" class="input_txtbx1" id="jobpp" name="jobpp" placeholder="If yes, give specifics"  style='display:none' value="${work.jobpp}" name="jobpp" /></br><span class="err"><form:errors path="Workaccident.jobpp"></form:errors></span>
				  </td>
				  </tr>						                   
				  		                     		 
				  </table>
				  <br>
				  <table align="right">
				  <tr>
				   <td valign="top" align="right"><input type="button" id="btnNext" class="submit_btn" value="Next"/></td>

                  	<td>&nbsp;&nbsp;</td>							
				           
                  <td valign="top" align="center"><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewworkaccident'"></td></td>
                  
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
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
  				<td align="left" valign="top" width="50%" style="padding-right:25px;">
  				<table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Is your work area</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="work_area" class="input_cmbbx1" id="workcheck" onclick='work();'>
					<option value="oily" <c:if test="${work.work_area=='oily'}"><c:out value="selected"/></c:if>>Oily</option>
					<option value="dirty" <c:if test="${work.work_area=='dirty'}"><c:out value="selected"/></c:if>>Dirty</option>	
					<option value="slippery" <c:if test="${work.work_area=='slippery'}"><c:out value="selected"/></c:if>>Slippery</option>
					 <option value="Other" <c:if test="${work.work_area=='Other'}"><c:out value="selected"/></c:if>>Other</option> 
					 </select>
					   <td> <input type="text" name="warea" id="warea" style='display:none'  value="${work.warea}" name="warea" /></br><span class="err"><form:errors path="Workaccident.warea"></form:errors></span></td>
				 <td></td>   <td></td><td></td><td></td><td></td> <td></td>
				 </tr>
				   <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you use foot or hand levers</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="levers" value="yes" class="input_txt"<c:if test="${work.levers=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="levers" value="No" class="input_txt"<c:if test="${work.levers=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  <td></td>   <td></td><td></td><td></td><td></td> <td></td><td></td>
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you work overhead</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="overhead" value="yes" class="input_txt"<c:if test="${work.overhead=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="overhead" value="No" class="input_txt"<c:if test="${work.overhead=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How many employees have been injured doing your job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.no_of_employees}" name="no_of_employees" /></br><span class="err"><form:errors path="Workaccident.no_of_employees"></form:errors></span>
				  </td>
				  <td></td>   <td></td><td></td><td></td><td></td> <td></td><td></td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you like your job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="like_job" value="yes" class="input_txt" <c:if test="${work.like_job=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="like_job" value="No" class="input_txt" <c:if test="${work.like_job=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was a pre-employment exam performed or required</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="pre_employment" value="yes" class="input_txt"<c:if test="${work.pre_employment=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="pre_employment" value="No" class="input_txt" <c:if test="${work.pre_employment=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  <td></td>   <td></td><td></td><td></td><td></td> <td></td><td></td>
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If off work, do you want to return to your job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="return_job" value="yes" class="input_txt"<c:if test="${work.return_job=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="return_job" value="No" class="input_txt" <c:if test="${work.return_job=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>What changes would you make in your job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${work.changes_in_job}" name="changes_in_job" /></br><span class="err"><form:errors path="Workaccident.changes_in_job"></form:errors></span>
				  </td>
				   <td></td>   <td></td><td></td><td></td><td></td> <td></td><td></td>
				  </tr>
				   
                  
                  
                  
                    
               
                </table>
                <br>
                <table align="right">
                <tr>
                 <td valign="top" align="right"><input type="button" id="btnPrevious" class="submit_btn" value="Previous"></td>
                   <td>&nbsp;&nbsp;</td>
                   <td valign="top" align="right"><input type="submit" class="submit_btn" value="Save" name="insert"></td>
                  	<td>&nbsp;&nbsp;</td>
                  <td valign="top" align="center"><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewworkaccident'"></td>
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
	</c:otherwise>
	
	</c:choose>
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