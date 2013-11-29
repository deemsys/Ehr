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
					
    				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>What is the job classification of your normal job</td>
    				   <input type="hidden" class="input_txtbx1" id="inp_id" value="${workaccident.patient_no}" name="patient_no" />
				  			 <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.job_classification}" name="job_classification" /></br><span class="err"><form:errors path="workAcc.job_classification"></form:errors></span></td>
				 </tr>
				 <tr class="row2">
                						<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Job Position</td>
                						 <td valign="top" align="left" class="input_txt">
				  							<select name="doyou_pos" class="input_cmbbx1" id="do_you"  onclick='Checkpos(this.value);'>	
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
						                      <td><input type="text" name="doyou" id="doyou" style='display:none' onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.doyou}" name="doyou" /></br><span class="err"><form:errors path="workAcc.doyou"></form:errors></span></td>
						                     
						                 		
			  	 </tr>
			  	 <tr class="row1">
			  	 				 <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you carry anything or pick anything up</td>
				 				 <td valign="top" align="left" class="input_txt">
				 				 <input type="radio" name="pick" value="yes" class="input_txt" onclick="any('show')" <c:if test="${workaccident.pick=='yes'}"><c:out value="checked=checked"/></c:if>>yes&nbsp;&nbsp;&nbsp;
				 				 <input type="radio" name="pick" value="No" class="input_txt" onclick="any('hide')"<c:if test="${workaccident.pick=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				   <input type="text" class="input_txtbx1" id="carry" name="carry" placeholder="If yes, What" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.carry}" name="carry" /></br><span class="err"><form:errors path="workAcc.carry"></form:errors></span></td>
				 
			  	 </tr>
			  	  <tr class="row2">
			  	 				 <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How did the injury occur?</td>
				 				<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.injury_occur}" name="injury_occur" /></br><span class="err"><form:errors path="workAcc.injury_occur"></form:errors></span></td>
				 </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Who saw the accident?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.saw_accident}" name="saw_accident" /></br><span class="err"><form:errors path="workAcc.saw_accident"></form:errors></span></td>
				  
				  </tr>
				    <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Job Title</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.title}" name="title" /></br><span class="err"><form:errors path="workAcc.title"></form:errors></span></td>
				  </tr>	
				 <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How long have you been at your present job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.present_job}" name="present_job" /></br><span class="err"><form:errors path="workAcc.present_job"></form:errors></span></td>
				 </tr>	
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Has there been a time loss or absenteeism caused from job injury</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="time_loss" value="yes" class="input_txt"  onclick="time('show1')"<c:if test="${workaccident.time_loss=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="time_loss" value="No" class="input_txt" onclick="time('hide1')"<c:if test="${workaccident.time_loss=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				   <input type="text" class="input_txtbx1" id="absenteeism" name="absenteeism" placeholder="If yes, explain(include dates)" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.absenteeism}" name="absenteeism" /></br><span class="err"><form:errors path="workAcc.absenteeism"></form:errors></span></td>
				  </tr>	
				   <tr class="row1">
                						<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Type of lighting in the building</td>
                						<td valign="top" align="left" class="input_txt">
										  <select name="type_of_light" class="input_cmbbx1" onclick='Checklight(this.value);'>
					 						<option value="fluorescent" <c:if test="${workaccident.type_of_light=='fluorescent'}"><c:out value="selected"/></c:if>>Fluorescent</option>
						                     <option value="overhead" <c:if test="${workaccident.type_of_light=='overhead'}"><c:out value="selected"/></c:if>>Overhead</option>	
						                     <option value="onmachine" <c:if test="${workaccident.type_of_light=='onmachine'}"><c:out value="selected"/></c:if>>On machine</option>
						                    <option value="others" <c:if test="${workaccident.type_of_light=='others'}"><c:out value="selected"/></c:if>>Others</option> 
						                    </select>
						                      <%-- <c:if test="${workaccident.type_of_light=='others'}">
						                     <td> <input type="text" name="lighting" id="lighting" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.lighting}" name="lighting" /></br><span class="err"><form:errors path="workAcc.lighting"></form:errors></span></td>
						                 		</c:if>  --%>
						                   <td> <input type="text" name="lighting" id="lighting_div" style='display:none' onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.lighting}" name="lighting" /></br><span class="err"><form:errors path="workAcc.lighting"></form:errors></span></td>  
				
						             			 </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you pick up or lift?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="pick_lift" value="yes" class="input_txt" onclick="toggle3('show3')" <c:if test="${workaccident.pick_lift=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="pick_lift" value="No" class="input_txt" onclick="toggle3('hide3')" <c:if test="${workaccident.pick_lift=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If yes, how much&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.how_much}" name="how_much" /></br><span class="err"><form:errors path="workAcc.how_much"></form:errors></span></td>
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How often</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"   onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.how_often}" name="how_often" /></br><span class="err"><form:errors path="workAcc.how_often"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>From where to where</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"   onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.where_to_where}" name="where_to_where" /></br><span class="err"><form:errors path="workAcc.where_to_where"></form:errors></span>
				  </td>
				  </tr>
				    <tr class="row1">
                						<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you lift from&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                						<td valign="top" align="left" class="input_txt">
										  <select name="lift_from" class="input_cmbbx1">
					 						<option value="ground" <c:if test="${workaccident.lift_from=='ground'}"><c:out value="selected"/></c:if>>Ground</option>
						                     <option value="bench" <c:if test="${workaccident.lift_from=='bench'}"><c:out value="selected"/></c:if>>Bench</option>	
						                     <option value="platform" <c:if test="${workaccident.lift_from=='platform'}"><c:out value="selected"/></c:if>>Platform</option>
						                   </select>
										</td>
					</tr>
					<tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you lift in or out of a machine?</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="liftin_orout" value="yes" class="input_txt" <c:if test="${workaccident.liftin_orout=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="liftin_orout" value="No" class="input_txt"<c:if test="${workaccident.liftin_orout=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>			
				   <tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If working at a machine,do you</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="workpos" class="input_cmbbx1" >
					<option value="sit" <c:if test="${workaccident.workpos=='sit'}"><c:out value="selected"/></c:if>>Sit</option>
					<option value="stand" <c:if test="${workaccident.workpos=='stand'}"><c:out value="selected"/></c:if>>Stand</option>	
					<option value="kneel" <c:if test="${workaccident.workpos=='kneel'}"><c:out value="selected"/></c:if>>Kneel</option>
				  </select>
				 </td>
				</tr>	
				<tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>In your job, do you push or pull</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="push_pull" value="yes" class="input_txt"  onclick="pull('show4')"<c:if test="${workaccident.push_pull=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="push_pull" value="No" class="input_txt" onclick="pull('hide4')"<c:if test="${workaccident.push_pull=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				   <input type="text" class="input_txtbx1" id="jobpp" name="jobpp" placeholder="If yes, give specifics" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.jobpp}" name="jobpp" /></br><span class="err"><form:errors path="workAcc.jobpp"></form:errors></span>
				  </td>
				  </tr>						                   
				   <tr class="row1">
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="right">&nbsp;</td>
                  <td valign="top" align="right"><input type="button" id="btnNext" class="submit_btn" value="Next"/></td>
                  <td valign="top" align="right"><input type="submit" class="submit_btn1" value="Update" name="insert"></td>
                  								
				           
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
	            <div class="headings altheading">
	              <h2>Edit Work Accident</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
  				<td align="left" valign="top" width="50%" style="padding-right:25px;">
  				<table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr class="row1">
                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Is your work area</td>
				 <td valign="top" align="left" class="input_txt">
				  <select name="work_area" class="input_cmbbx1" onclick='work(this.value);'>
					<option value="oily" <c:if test="${workaccident.work_area=='oily'}"><c:out value="selected"/></c:if>>Oily</option>
					<option value="dirty" <c:if test="${workaccident.work_area=='dirty'}"><c:out value="selected"/></c:if>>Dirty</option>	
					<option value="slippery" <c:if test="${workaccident.work_area=='slippery'}"><c:out value="selected"/></c:if>>Slippery</option>
					 <option value="Other" <c:if test="${workaccident.work_area=='Other'}"><c:out value="selected"/></c:if>>Other</option> 
						                      				  
				   <%--  <c:if test="${workaccident.work_area=='Other'}">
						                     <td> <input type="text" name="warea" id="warea" style='display:none'onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.warea}" name="warea" /></br><span class="err"><form:errors path="workAcc.warea"></form:errors></span></td>
						                 		</c:if> --%> 
						                     </select>
						                     <td> <input type="text" name="warea" id="warea" style='display:none' onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.warea}" name="warea" /></br><span class="err"><form:errors path="workAcc.warea"></form:errors></span></td>
				 </tr>
				   <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you use foot or hand levers</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="levers" value="yes" class="input_txt"<c:if test="${workaccident.levers=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="levers" value="No" class="input_txt"<c:if test="${workaccident.levers=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you work overhead</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="overhead" value="yes" class="input_txt"<c:if test="${workaccident.overhead=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="overhead" value="No" class="input_txt"<c:if test="${workaccident.overhead=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>How many employees have been injured doing your job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.no_of_employees}" name="no_of_employees" /></br><span class="err"><form:errors path="workAcc.no_of_employees"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do you like your job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="like_job" value="yes" class="input_txt" <c:if test="${workaccident.like_job=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="like_job" value="No" class="input_txt" <c:if test="${workaccident.like_job=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Was a pre-employment exam performed or required</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="pre_employment" value="yes" class="input_txt"<c:if test="${workaccident.pre_employment=='yes'}"><c:out value="checked=checked"/></c:if> >Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="pre_employment" value="No" class="input_txt" <c:if test="${workaccident.pre_employment=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				   <tr class="row1">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>If off work, do you want to return to your job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="radio" name="return_job" value="yes" class="input_txt"<c:if test="${workaccident.return_job=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				  <input type="radio" name="return_job" value="No" class="input_txt" <c:if test="${workaccident.return_job=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;
				  </td>
				  </tr>
				  <tr class="row2">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>What changes would you make in your job</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${workaccident.changes_in_job}" name="changes_in_job" /></br><span class="err"><form:errors path="workAcc.changes_in_job"></form:errors></span>
				  </td>
				  </tr>
				   <tr class="row1">
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="right">&nbsp;</td>
                   <td valign="top" align="right"><input type="button" id="btnPrevious" class="submit_btn" value="Previous"></td>
                   
                   <td valign="top" align="right"><input type="submit" class="submit_btn1" value="Update" name="insert"></td>
                  	
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
function time(value){
if(value=='show1')
 document.getElementById('absenteeism').style.visibility='visible';
else
 document.getElementById('absenteeism').style.visibility='hidden';
}
</script>					  
			  
 				  				  
<script type="text/javascript">


</script>

<script type="text/javascript">

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
function Checkpos(val){
	 var element=document.getElementById('doyou');
	 

	 if(val=='other')
	   element.style.display='block';
	 else  
	   element.style.display='none';
	} 
	function Checklight(val){
		 var element=document.getElementById('lighting_div');
		 if(val=='others')
		   element.style.display='block';
		 else  
		   element.style.display='none';
		} 
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

<!--

//-->
</script>
 <jsp:include page="footer.jsp"></jsp:include>