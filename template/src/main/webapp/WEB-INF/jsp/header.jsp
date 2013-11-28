<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>:: EHR ::</title>
		<script type="text/javascript" src="<c:url value="/resources/js/ddlevelsmenu.js" />"></script> 
		<script type="text/javascript" src="<c:url value="/resources/js/clock.js" />"></script>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"
	type="text/css" />
<link href="<c:url value="/resources/css/inner-clr.css" />"
	rel="stylesheet" type="text/css" />


<style type="text/css">
.ddsubmenustyle,.ddsubmenustyle ul {
	margin: 0;
	padding: 0;
	position: absolute;
	left: 0;
	top: 0;
	
	list-style-type: none;
	border: 1px solid #444;
	border-bottom: 0;
	visibility: hidden;
	z-index: 100;
	font-size: 13px;
}

.ddsubmenustyle li {
	line-height: 28px;
	font-size: 13px;
}

.ddsubmenustyle li a {
	display: block;
	width: 160px;
	color: #fff;
	text-decoration: none;
	padding: 0 10px;
	background: #243d6e;
	border-bottom: 1px solid #fff;
	font-size: 13px;
}

* html .ddsubmenustyle li { /*IE6 CSS hack*/
	display: inline-block;
	width: 140px; /*width of menu (include side paddings of LI A*/
}

.ddsubmenustyle li a:hover {
	background-color: #eee;
	border-bottom: 1px solid #ccc;
	color: #333333;
}
/* 
.downarrowpointer {
	/*CSS for "down" arrow image added to top menu items*/
	padding: 0;
	border: 0;
}
 *//* 
.rightarrowpointer {
	/*CSS for "right" arrow image added to drop down menu items*/
	position: absolute;
	padding-top: 3px;
	left: 100px;
	border: 0;
} */
/* 
.ddiframeshim {
	position: absolute;
	z-index: 500;
	background: transparent;
	border-width: 0;
	width: 0;
	height: 0;
	display: block;
} */
</style>
</head>
<body onload="javascript:startTime();">

	<div id="main">
		<div id="header">
			<div class="logo">
			    <a href="#"><img src="<c:url value="/resources/images/title1.png" />" alt="Company Logo" /></a> 
				<!-- <a href ="#">Electronic Healthcare Record</a> -->
			</div>
			<div class="top_link">
				<table border="0" cellspacing="0" cellpadding="0"
					style="padding: 0;">
					<tr>
						<td rowspan="2" align="right" valign="middle">&nbsp;</td>
						<td align="right" valign="middle"><div class="date">
								<span id="time" class="time"></span>
							</div></td>
					</tr>
					<tr>
						<td align="right" valign="middle"><span class="cart_txt">Welcome "/>
								<sec:authentication property="principal.username" />&nbsp;&nbsp;|&nbsp;&nbsp;<a href="<c:url value="/j_spring_security_logout" />" style="color:#243d6e">Logout</a>
						</span></td>
					</tr>
				</table>
			</div>
			<div class="clear"></div>
			<div id="ddtopmenubar">
				<div class="menu_container">
					<div class="menu_l"></div>
					<div class="menu_c">
						<!-- <AJDF:output>php</AJDF:output>
		$obj=new Bin_Query();
		$sql="SELECT previlages FROM admin_log_table WHERE admin_id = '".$_SESSION['admin']['id']."'";
		$obj->executeQuery($sql);
		$rec=$obj->records[0]['previlages'];
		$previ=explode(",",$rec);
	<AJDF:output>/php</AJDF:output>	 Suresh-->
						<ul class="menu">
							  <li>
								<a href="welcome" class="<c:choose><c:when test="${menu=='dashboard'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>Dashboard</span>
								</a>
							</li> 
				            <li>
				            	<a href="patientDetails" class="<c:choose>
				            	<c:when test="${menu=='patientInfo'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu5">
				            		<span>Patient Information</span>
				            	</a>
				            </li>
				            <li>
				            	<a href="#" class="<c:choose>
				            	<c:when test="${menu=='Accident'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu1">
				            		<span Style="color:white">Accident</span>
				            	</a>
				            </li>
				            <%-- <li>
				            	<a href="hardshipagreement" class="<c:choose><c:when test="${true}">select</c:when><c:otherwise></c:otherwise></c:choose>" >
				            		<span><img src="<c:url value="/resources/images/icon_06.png" />" alt="" style="padding:5px 5px 0 0;" />Hardship Agreement</span>
				            	</a>
				            </li> --%>
				            <li> 
				            	<a href="#" class="<c:choose><c:when test="${menu=='health'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu4">
				            		<span>Health Insurance</span>
				            	</a>
				            </li> 
				           <%--  <li> 
				            	<a href="staffchecklist" class="<c:choose><c:when test="${true}">select</c:when><c:otherwise></c:otherwise></c:choose>">
				            		<span><img src="<c:url value="/resources/images/icon_07.png" />" alt="" style="padding:5px 5px 0 0;" />Staff checklist</span>
				            	</a>
				            </li> --%>
				            <%--  <li>
				            	<a href="Assignment" class="<c:choose><c:when test="${true}">select</c:when><c:otherwise></c:otherwise></c:choose>" >
				            		<span><img src="<c:url value="/resources/images/icon_03.png" />" alt="" style="padding:5px 5px 0 0;" />Assignment of Benefits</span>
				            	</a>
				            </li> --%>
				            <li>
				            	<a href="#" class="<c:choose><c:when test="${menu=='consent'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu2">
				            		<span>Consent To Treat</span>
				            	</a>
				            </li>
				            <li>
								<a href="#" class="<c:choose><c:when test="${menu=='authorization'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu3">
									<span>Authorization Forms</span>
								</a>
							</li>
							
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='doctor'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu6">
									<span>Doctor Forms</span>
								</a>
							</li>
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='admin'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu7">
									<span>Admin Forms</span>
								</a>
							</li>  
						</ul>
						<div class="clear">
						<script type="text/javascript">
							ddlevelsmenu.setup("ddtopmenubar", "topbar")
						</script>

						<ul id="ddsubmenu1" class="ddsubmenustyle">
							<li><a href="autoaccident">Auto Accident</a></li>
							<li><a href="viewautoaccident">View Auto Accident</a></li>
							<li><a href="workaccident">Work Accident</a></li>
							<li><a href="wiewworkaccident"> View Work Accident</a></li>
							
							<!-- <li><a href="viewauto">View Autoaccident</a></li> -->
							<!-- <li><a href="broadcast">Send Stream</a></li>
            				<li><a href="viewreports">Report</a></li>  -->
          				</ul>
						<!-- <ul id="ddsubmenu2" class="ddsubmenustyle">
							<li><a href="autoaccident">Auto Accident</a></li>
				            <li><a href="workaccident">Work Accident</a></li>
				            <li><a href="showaddparticipantgroups">Add Participant Groups</a></li>
							<li><a href="viewparticipantgroups">View Participant Groups</a></li>
						</ul> -->
						<!-- <ul id="ddsubmenu3" class="ddsubmenustyle">
							<li><a href="showaddadminuser">Add Admin User</a></li>        
				            <li><a href="viewadminuser">View Admin User</a></li>
				            <li><a href="activityofadmin">User Activity Logs</a></li>
				         </ul> -->
						
<%-- <li>
				            	<a href="patientDetails" class="<c:choose><c:when test="${true}">select</c:when><c:otherwise></c:otherwise></c:choose>" rel="ddsubmenu5">
				            		<span><img src="<c:url value="/resources/images/email.png" />" alt="" style="padding:5px 5px 0 0;" />Patient Information</span>
				            	</a>
				            </li>
				            <li>
				            	<a href="#" class="<c:choose><c:when test="${true}">select</c:when><c:otherwise></c:otherwise></c:choose>" rel="ddsubmenu1">
				            		<span><img src="<c:url value="/resources/images/icon_03.png" />" alt="" style="padding:5px 5px 0 0;" />Accident</span>
				            	</a>
				            </li> --%>
				           
						</ul>
						<div class="clear"></div>
						<script type="text/javascript">
							ddlevelsmenu.setup("ddtopmenubar", "topbar")
						</script>

						<ul id="ddsubmenu5" class="ddsubmenustyle">
						
						<ul id="ddsubmenu1" class="ddsubmenustyle">

							 <li><a href="viewpatient">View Patient Details</a></li>
							
          				</ul>
						<ul id="ddsubmenu1" class="ddsubmenustyle">							 <li><a href="autoaccident">Auto Accident</a></li>
							 
				            <li><a href="workaccident">Work Accident</a></li>
				            <li><a href="wiewworkaccident"> View Work Accident</a></li>
							
          				</ul>
          				
						<ul id="ddsubmenu2" class="ddsubmenustyle">

							<li><a href="treatform">Authorization And Consent To Treat</a></li>
						<li><a href="viewtreatform">View Authorization And Consent To Treat</a></li>
						<c:if test="${age <18}">						
				        <li id="consent"><a href="treatminor">Consent To Treat A minor</a></li>
				         <li><a href="viewtreatminor">View Consent To Treat minor</a></li> </c:if> 

</ul>
<ul id="ddsubmenu6" class="ddsubmenustyle">

							
				            <li><a href="physicalexam">Physical Exam Form</a></li>
				            <li><a href="viewphysicalexam">View Physical exam Form</a></li>

				            <li><a href="radiologicreport">Radiologic report Form</a></li>
				            <li><a href="viewradiologicreport">View Radiologic report Form</a></li>

				             <li><a href="hamiltonchiropractic">InitialExam</a></li>
				             <li><a href="viewfirsthamiltonchiropractic">View InitialExam</a></li>
				             <li><a href="soapnotes">SOAP Notes</a></li>
				             <li><a href="viewsoapnotes">View Soap Notes</a></li>

</ul>

<ul id="ddsubmenu7" class="ddsubmenustyle">


							
				            <li><a href="staffchecklist">Staff checklist</a></li>
				            <li><a href="staffdetails">View Staff checklist</a></li>
				            <li><a href="insuranceverification">Insurance verification</a></li>
				             <li><a href="insuranceverifylist">View Insurance verification</a></li>
				            </ul>

							
				           						<div class="clear"></div>
						<script type="text/javascript">
							ddlevelsmenu.setup("ddtopmenubar", "topbar")
						</script>
						<!-- <ul id="ddsubmenu1" class="ddsubmenustyle">
						
							 <li><a href="autoaccident">Auto Accident</a></li>
				            <li><a href="workaccident">Work Accident</a></li>
							
          				</ul>
						<ul id="ddsubmenu2" class="ddsubmenustyle">

							<li><a href="treatform">Authorization And Consent To Treat</a></li>
				            <li><a href="treatminor">Consent To Treat A minor</a></li>
				            

							
				            <li><a href="showaddparticipantgroups">Add Participant Groups</a></li>
							<li><a href="viewparticipantgroups">View Participant Groups</a></li>

						</ul>
 -->						<ul id="ddsubmenu3" class="ddsubmenustyle">
							<li><a href="hardshipagreement">Hardship Agreement</a></li>
							<li><a href="hardshiplist">View Hardship Agreement</a></li>
							<li><a href="screeningAuthz">Screening Disclosure</a></li> 
							<li><a href="screeninglist">View Screening Disclosure</a></li>       
				            <li><a href="medicalrecords">Release Of Records</a></li>
				            <li><a href="medicalrecordslist">View Release Of Records</a></li>
				            <li><a href="Assignment">Assignment Of Benefits</a></li>
				            <li><a href="assignmentlist">View Assignment Of Benefits</a></li>
				            <li><a href="Hippaprivacy">Hippa Privacy</a></li>
				            <li><a href="hippalist">View Hippa Privacy</a></li>
				         </ul>
						<!-- <ul id="ddsubmenu4" class="ddsubmenustyle">
							<li><a href="textmsgsettings">Text Message API settings</a></li>
							<li><a href="addmailtemplate">Mail Templates</a></li>
							<li><a href="changepassword">Change My Password</a></li>
						</ul> -->
						<ul id="ddsubmenu5" class="ddsubmenustyle">
						<!-- <li><a href="patientDetails">Patient Information</a></li> -->
						<!-- <li><a href="viewpatient">View Patient</a></li> -->
						</ul>
						
						
						<!-- <ul id="ddsubmenu5" class="ddsubmenustyle">
						<li><a href="patientDetails">Patient Information</a></li>
						<li><a href="viewpatient">View Patient</a></li>
						</ul> -->





							<ul id="ddsubmenu4" class="ddsubmenustyle">
							<li><a href="insuranceplan">Insurance Waiver</a></li>
							<li><a href="insuranceplanlist">View Insurance Waiver</a></li>
							<li><a href="insuranceinformation">Health Insurance Information</a></li>
							<li><a href="insuranceinfolist">View Health Insurance Information</a></li>
							<!-- <li><a href="insuranceverification">Health Insurance Verification</a></li> -->
						</ul>
						
					</div>
					<div class="menu_r"></div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
</div>
</div>
</body>
</html>
<script src="Accident_type.js"></script>
