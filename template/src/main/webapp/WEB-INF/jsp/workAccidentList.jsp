<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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
 <form method="post" action="">
 
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
 <tr>
 	 <td valign="top" align="left">
        	<div>
	            <div class="headings altheading">
	              <h2>Work Accident Details</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
  				<td align="left" valign="top" width="50%" style="padding-right:25px;">
  				<table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr class="row1">
  					<c:forEach items="${workaccidentForm.workaccident}" var="workaccident" varStatus="status">
               		<td><span class="err">*</span>What is the job classification of your normal job</td>
               		  <td>${workaccident.job_classification}</td>
               		   </tr>
               		   
				 <tr class="row2">
               		  <td><span class="err">*</span>Job Position</td>
               		  <td>${workaccident.doyou_pos} </td>
               		 <c:if test="${workaccident.doyou_pos.equals('other')}">
               		  
               		    <td>${workaccident.doyou}</td>
               		</c:if>
               		 
               	</tr>	 
               	<tr class="row1">
               	   <td><span class="err">*</span>Do you carry anything or pick anything up</td>
               	    <c:if test="${workaccident.pick == 1}">
               		  
               		    <td>No </td>
               		</c:if>
               		 <c:if test="${workaccident.pick == 0}">
               		  
               		    <td>yes ${workaccident.carry}</td>
               		</c:if>
               		
               </tr>
               <tr class="row2">
               	<td><span class="err">*</span>How did the injury occur?</td>
               		  <td>${workaccident.injury_occur}</td>
               </tr>
               <tr class="row1">
               			<td><span class="err">*</span>Who saw the accident?</td>
               		  <td>${workaccident.saw_accident}</td>
               </tr>	
               <tr class="row2">
               		
               		  	<td><span class="err">*</span>Job Title</td>
               		  <td>${workaccident.title}</td>
               
               </tr>
               <tr class="row1">
               		<td><span class="err">*</span>How long have you been at your present job</td>
               		  <td>${workaccident.present_job}</td>
               </tr>
               <tr class="row2">
               		<td><span class="err">*</span>Has there been a time loss or absenteeism caused from job injury</td>
               		 <c:if test="${workaccident.time_loss == 1}">
               		  
               		    <td>No </td>
               		</c:if>
               		 <c:if test="${workaccident.time_loss == 0}">
               		  
               		    <td>yes ${workaccident.absenteeism}</td>
               		</c:if>
                </tr>  
                <tr class="row1">
                	<td><span class="err">*</span>Type of lighting in the building</td>
               		  <td>${workaccident.type_of_light} </td>
               		 <c:if test="${workaccident.type_of_light.equals('others')}">
               		  
               		    <td>${workaccident.lighting}</td>
               		</c:if>
               		 
                </tr>
                 <tr class="row2">
                 		 	<td><span class="err">*</span>Do you pick up or lift?</td>
                 		 	 <c:if test="${workaccident.pick_lift == 0}">
                 		 	 	<td>Yes</td>
                 		 	 </c:if>
                 		 	  <c:if test="${workaccident.pick_lift == 1}">
                 		 	 	<td>No</td>
                 		 	 </c:if>
                 </tr>
                  <div id="lift">
				  <table cellpadding="0" cellspacing="0" border="0" width="100%">
				  <tr class="row1">		
                 		<td><span class="err">*</span>If yes, how much&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
               		  <td>${workaccident.how_much}</td>
                 </tr>  	
               	 <tr class="row2"> 
               	 	 		<td><span class="err">*</span>How often</td>
               		  <td>${workaccident.how_often}</td>
               	</tr>	
               	<tr class="row1">
               			<td><span class="err">*</span>From where to where</td>
               		  <td>${workaccident.where_to_where}</td>
               	</tr>
               	  </table>
               		  </div>
               		  <table cellpadding="0" cellspacing="0" border="0" width="100%">
                  <tr class="row1">
               			<td><span class="err">*</span>Do you lift from&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
               		  <td>${workaccident.lift_from}</td>
               	</tr> 
               	<tr class="row2">
               			<td><span class="err">*</span>Do you lift in or out of a machine?</td>
               			 <c:if test="${workaccident.liftin_orout == 1}">
               		  
               		    <td>No </td>
               		</c:if>
               		 <c:if test="${workaccident.liftin_orout == 0}">
               		  
               		    <td>yes</td>
               		</c:if>
               	</tr> 
               	<tr class="row2">
               			<td><span class="err">*</span>If working at a machine,do you</td>
               		  <td>${workaccident.workpos}</td>
               	</tr> 
               	<tr class="row2">
               			<td><span class="err">*</span>In your job, do you push or pull</td>
               			 <c:if test="${workaccident.push_pull == 1}">
               		  
               		    <td>No </td>
               		</c:if>
               		 <c:if test="${workaccident.push_pull == 0}">
               		  
               		    <td>yes  ${workaccident.jobpp}</td>
               		</c:if>
               		</tr>
               		</table>
               		</table>
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
	              <h2>View Work Accident Details</h2>
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
  				<td align="left" valign="top" width="50%" style="padding-right:25px;">
  				<table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr class="row1">
 							<tr class="row1">
               			<td><span class="err">*</span>Is your work area</td>
               		  <td>${workaccident.work_area}</td>
               		   <c:if test="${workaccident.work_area.equals('other')}">
               		  
               		    <td>${workaccident.warea}</td>
               		</c:if>
               		  
               	</tr>
               		<tr class="row2">
               			<td><span class="err">*</span>Do you use foot or hand levers</td>
               			 <c:if test="${workaccident.levers == 1}">
               		  
               		    <td>No </td>
               		</c:if>
               		 <c:if test="${workaccident.levers == 0}">
               		  
               		    <td>yes</td>
               		</c:if>
               	</tr> 
               	<tr class="row2">
               			<td><span class="err">*</span>Do you work overhead</td>
               			 <c:if test="${workaccident.overhead == 1}">
               		  
               		    <td>No </td>
               		</c:if>
               		 <c:if test="${workaccident.overhead == 0}">
               		  
               		    <td>yes</td>
               		</c:if>
               	</tr> 
               		<tr class="row1">
               			<td><span class="err">*</span>How many employees have been injured doing your job</td>
               		  <td>${workaccident.no_of_employees}</td>
               	</tr>
               	<tr class="row2">
               			<td><span class="err">*</span>Do you like your job</td>
               			 <c:if test="${workaccident.like_job == 1}">
               		  
               		    <td>No </td>
               		</c:if>
               		 <c:if test="${workaccident.like_job == 0}">
               		  
               		    <td>yes</td>
               		</c:if>
               	</tr>
               	<tr class="row1">
               			<td><span class="err">*</span>Was a pre-employment exam performed or required</td>
               			 <c:if test="${workaccident.pre_employment == 1}">
               		  
               		    <td>No </td>
               		</c:if>
               		 <c:if test="${workaccident.pre_employment == 0}">
               		  
               		    <td>yes</td>
               		</c:if>
               	</tr>
               	 	<tr class="row2">
               			<td><span class="err">*</span>If off work, do you want to return to your job</td>
               			 <c:if test="${workaccident.return_job == 1}">
               		  
               		    <td>No </td>
               		</c:if>
               		 <c:if test="${workaccident.return_job == 0}">
               		  
               		    <td>yes</td>
               		</c:if>
               	</tr>
               	<tr class="row1">
               		<td><span class="err">*</span>What changes would you make in your job</td>
               		<td>${workaccident.changes_in_job}</td>
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
               	</td>
               	</tr>
               	</table>
               	</c:forEach>
               	</form>
               	</div>
               	</div>
               	</div>
               	</body>
               	</html>