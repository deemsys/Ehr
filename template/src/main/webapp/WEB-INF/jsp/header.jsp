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
<link rel="stylesheet" type="text/css" href="pro_dropdown_2/pro_dropdown_2.css" />

<script src="pro_dropdown_2/stuHover.js" type="text/javascript"></script>
<style type="text/css">
ul.submenu {
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
.ddsubmenu,.ddsubmenu ul
{
list-style-type: none;
	border: 1px solid #444;
	border-bottom: 0;
	visibility: hidden; 
}
.ddsubmenustyle li {
list-style-type: none;
	line-height: 28px;
	font-size: 13px;
}

.ddsubmenu li a {
list-style-type: none;
	display: block;
	width: 160px;
	color: #fff;
	text-decoration: none;
	padding: 0 10px;
	background: #243d6e;
	border-bottom: 1px solid #fff;
	font-size: 13px;
}

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
/* .ddsubmenustyle ol{
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
} */
/* .ddsubmenustyle ol li {
list-style-type: none;
	line-height: 28px;
	font-size: 13px;
} */

.ddsubmenustyle li {
list-style-type: none;
	line-height: 28px;
	font-size: 13px;
}
.ddsubmenustyle li li {
list-style-type: none;
	line-height: 28px;
	font-size: 13px;
}

.ddsubmenustyle li a {

list-style-type: none;
	display: block;
	width: 160;
	color: #fff;
	text-decoration: none;
	padding: 0 10px ;
	background: #243d6e;
	 border-bottom: 1px solid #fff; 
	font-size: 13px;
}
* html .ddsubmenustyle li { /*IE6 CSS hack*/
	display: inline-block;	
	width: 100px; /*width of menu (include side paddings of LI A*/
}
.ddsubmenustyle ol li a:hover {
list-style-type: none;
	background-color: #eee;
	border-bottom: 1px solid #ccc;
	color: #333333;
}
.ddsubmenustyle li a:hover {
list-style-type: none;
	background-color: #eee;
	border-bottom: 1px solid #ccc;
	color: #333333;
}

 .downarrowpointer {
	/*CSS for "down" arrow image added to top menu items*/
	padding: 0;
	border: 0;
	position: 0;
} 

   .rightarrowpointer {
	/*CSS for "right" arrow image added to drop down menu items*/
	 background:url(../images/login-head.png) no-repeat;
	position: absolute;
	padding-top: 3px;
	left: 100px;
	border: 10;
}  

.ddiframeshim {
	position: absolute;
	z-index: 500;
	background:none;
	border-width: 0;
	width: 0;
	height: 0;
	display: block;
}

.nav {
/* width:800px;
margin:30px 50px;;
padding: 0;
float:left;
margin: 0; */
	
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
.nav li {
 list-style: none;
 float: left; 
 padding:0 10px;
}

/*--temp--*/
.nav ul ul li {
clear:left;
}
.nav ul ul {
position:absolute;
left:14em;
top:0;
}
.nav ul ul li a {
display:block;
padding: 3px 15px;
color: #242424;
text-decoration: none;
font-size:13px;
font-family:"Lato" !important;
}
/*--end temp--*/
.nav li a {
display: block;
padding: 3px 15px;
color: #242424;
text-decoration: none;
font-size:13px; 
font-family:"Lato" !important;
}
.nav a:hover {
color:#367FB3;
}
.nav a:active {
color:#367FB3;
}
.nav li ul {
display: none; 
width: 14em; /* Width to help Opera out */
background-color:transparent;
z-index:666;
}
.nav li:hover ul, .nav li.hover ul {
display: block;
position: absolute;
margin:0px -10px;
padding:0px; 
}
.nav li:hover li, .nav li.hover li {
float: none; 
line-height:30px;
}
.nav li:hover li a, .nav li.hover li a {
 background-color:#367FB3;
 color:#fff;
 font-size:13px; 
 font-family:"Lato" !important;
}
.nav li li a:hover {
background-color:#52baff; 
color:#fff;
}



</style>
</head>
<body onload="javascript:startTime();">

<c:choose>
<c:when test="${menu=='sign'}">
	<div id="main">
		<div id="header">
			<div class="logo">
			   <a href="#"><img src="<c:url value="/resources/images/title1.png" />" alt="Company Logo" /></a>
		
		
			   <ul class="menu" style="width: 1340">
			   </c:when> <c:otherwise>
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
						<td align="right" valign="middle"><span class="cart_txt">Welcome 
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
					<c:choose>
					<c:when test="${menu=='checklist'}">
					<ul class="menu">
					</c:when>			
					<c:otherwise>
					
					
					
					
						<c:choose>
						<c:when test="${menu=='search'}">
						
						<ul class="menu">
						 <li>
				            	<a href="viewpatientdetails" class="<c:choose>
				            	<c:when test="${menu=='search'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
				            		<span>Patient Information</span>
				            	</a>
				            </li>
						 <li>
				            	<a href="doctorsearch" class="<c:choose>
				            	<c:when test="${menu=='doctorsearch'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
				            		<span>Examination Forms</span>
				            	</a>
				            </li>
						     
				            	</ul>
				            
				           
				          
				         
					</c:when>
					<c:when test="${menu=='doctorsearch'}">
						
						<ul class="menu">
						 <li>
				            	<a href="viewpatientdetails" class="<c:choose>
				            	<c:when test="${menu=='search'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
				            		<span>Patient Information</span>
				            	</a>
				            </li>
						 <li>
				            	<a href="doctorsearch" class="<c:choose>
				            	<c:when test="${menu=='doctorsearch'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
				            		<span>Examination Forms</span>
				            	</a>
				            </li>
						     
				            	</ul>
				            
				           
				          
				         
					</c:when>
					<c:otherwise>
						<c:if test="${role==0}">
						<c:choose>
				            <c:when test="${patientno=='0'}"> 
				            <ul class="menu">
				            <li>
				            	<a href="viewpatient" class="<c:choose>
				            	<c:when test="${menu=='patientInfo'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
				            		<span>Patient Information</span>
				            	</a>
				            </li>
				            <li>
				            	<a href="#" class="<c:choose>
				            	<c:when test="${menu=='Accident'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu1">
				            		<span Style="color:white">Accident</span>
				            	</a>
				            </li>
				            
				            <li> 
				            	<a href="#" class="<c:choose><c:when test="${menu=='health'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu4">
				            		<span>Health Insurance</span>
				            	</a>
				            </li> 
				         
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
								<a href="#" class="<c:choose><c:when test="${menu=='hipknee'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu26">
									<span>Disability Index</span>
								</a>
							</li>
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='symptom'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu23">
									<span>PAIN DIAGRAM</span>
								</a>
							</li>
							</c:when>
							<c:otherwise>
							 <ul class="menu">
							<li>
				            	<a href="#" class="<c:choose>
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
				            
				            <li> 
				            	<a href="#" class="<c:choose><c:when test="${menu=='health'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu4">
				            		<span>Health Insurance</span>
				            	</a>
				            </li> 
				         
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
								<a href="#" class="<c:choose><c:when test="${menu=='hipknee'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu26">
									<span>Disability Index</span>
								</a>
							</li>
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='symptom'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu23">
									<span>PAIN DIAGRAM</span>
								</a>
							</li>
							</c:otherwise>
							</c:choose>
							</c:if>
							<c:if test="${role==1}">
							
							

<%-- <c:choose>


<c:when test="${visit=='0'}"> --%>

<ul class="menu2" width="1000">
<!-- <style type="text/css">
.menu2 {
	margin:0;
	height:60px;
	overflow:hidden;
	background:#243d6e;
	z-index: 100;
}
.menu2 li img{vertical-align:top}
.menu2 li {
	float:left;
	margin-right:8px;
	text-transform:uppercase;
}
</style> -->
  <ul class="menu" style="width: 1350">
<c:choose><c:when test="${visit==0}">

						<li>
								<a href="physicalexam" class="<c:choose><c:when test="${menu=='phyexam'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" ><!-- rel="ddsubmenu11" -->
									<span>Physical Examination</span>
								</a>
							</li>
							<li>
								<a href="radiologicreport" class="<c:choose><c:when test="${menu=='report'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" ><!-- rel="ddsubmenu8" -->
									<span>Radiologic Report</span>
								</a>
							</li>
							
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='soapnotes'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu10">
									<span>Soap Notes</span>
								</a>
							</li>
							</c:when>
							
								<c:when test="${visit=='1'}">

						<li>
								<a href="physicalexam" class="<c:choose><c:when test="${menu=='phyexam'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" ><!-- rel="ddsubmenu11" -->
									<span>Physical Examination</span>
								</a>
							</li>							
							
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='soapnotes'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu10">
									<span>Soap Notes</span>
								</a>
							</li>
							</c:when>
								<c:when test="${visit=='2'}">

						
							<li>
								<a href="radiologicreport" class="<c:choose><c:when test="${menu=='report'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" ><!-- rel="ddsubmenu8" -->
									<span>Radiologic Report</span>
								</a>
							</li>
							
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='soapnotes'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu10">
									<span>Soap Notes</span>
								</a>
							</li>
							</c:when>
								<c:when test="${visit=='3'}">					
							
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='soapnotes'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu10">
									<span>Soap Notes</span>
								</a>
							</li>
							</c:when>
							
  	<c:otherwise>
  	
  	
        <li><a href="<c:out value="editsoapnotes?soapid=${username}"/>" class="<c:choose><c:when test="${menu=='notes'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>Soap Notes</span>
								</a>
								
							</li></c:otherwise>
</c:choose>
						<%-- 	<li>
								<a href="#" class="<c:choose><c:when test="${menu=='initial'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu13">
									<span>Initial Exam & Re Exam</span>
								</a>
							</li> --%>
							<%-- <li>
								<a href="#" class="<c:choose><c:when test="${menu=='symptom'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu23">
									<span>Symptom</span>
								</a>
							</li> --%>
							<%-- <li>
								<a href="#" class="<c:choose><c:when test="${menu=='therapy'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu24">
									<span>Manual Therapy Treatment</span>
								</a>
							</li> --%>
						<%-- 	<li>
								<a href="#" class="<c:choose><c:when test="${menu=='wristindex'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu25">
									<span>Wrist/Hand Disability Index</span>
								</a>
							</li> --%>
						<%-- 	<li>
								<a href="#" class="<c:choose><c:when test="${menu=='hipknee'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu26">
									<span>Hip And Knee Questionnarie</span>
								</a>
							</li> --%>
														
						<%-- 	<li>
								<a href="#" class="<c:choose><c:when test="${menu=='duties'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu29">
									<span>Duties Under Duress Summary </span>
								</a>
							</li>
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='shoulder'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu31">
									<span>Shoulder Pain Score </span>
								</a>
							</li> --%>
							<%-- </c:otherwise>
							</c:choose> --%>
					
							</c:if>
							<c:if test="${role==2}">
								<ul class="menu">
								<li>
								<a href="viewallpatientdetails" class="<c:choose><c:when test="${menu=='adminpatient'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="">
									<span>Patient Details</span>
								</a>
							</li>
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='admin'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu7">
									<span>Admin Forms</span>
								</a>
							</li>
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='perry'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu30">
									<span>Perry Chiropractic</span>
								</a>
							</li>
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='xray'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu33">
									<span>Xray</span>
								</a>
							</li>
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='narrative'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu32">
									<span>Narrative Report</span>
								</a>
							</li>
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='fax'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu34">
									<span>Fax Cover</span>
								</a>
							</li>
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='returntoschool'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu35">
									<span>Work School</span>
								</a>
							</li>
							<li>
								<a href="#" class="<c:choose><c:when test="${menu=='dcfee'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>" rel="ddsubmenu27">
									<span>Dc Fee Slip</span>
								</a>
							</li>
							</c:if>  
						</ul><div class="clear">
						<script type="text/javascript">
							ddlevelsmenu.setup("ddtopmenubar", "topbar")
						</script>

						<ul id="ddsubmenu1" class="ddsubmenustyle">
							<li><a href="autoaccident">Auto Accident</a></li>
							<!-- <li><a href="viewautoaccident">View Auto Accident</a></li> -->
							<li><a href="workaccident">Work Accident</a></li>
							<!-- <li><a href="viewworkaccident"> View Work Accident</a></li> -->
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
						<li><a href="patientDetails">Add Patient Details</a></li>
							 <li><a href="viewpatient">View Patient Details</a></li>
							
          				</ul>
          					
						<ul id="ddsubmenu1" class="ddsubmenustyle">
							 <li><a href="autoaccident">Auto Accident</a></li>
							 
				            <li><a href="workaccident">Work Accident</a></li>
				            <li><a href="viewworkaccident"> View Work Accident</a></li>
							
          				</ul>
						<ul id="ddsubmenu2" class="ddsubmenustyle">

							<li><a href="treatform">Authorization And Consent To Treat</a></li>
						<!-- <li><a href="treatformlist">View Authorization And Consent To Treat</a></li> -->
					
						<c:if test="${age <18}">						
				        <li id="consent"><a href="treatminor">Consent To Treat A minor</a></li>
				         <!-- <li><a href="viewtreatminor">View Consent To Treat minor</a></li> -->
				          </c:if> 

</ul>
<ul id="ddsubmenu11" class="ddsubmenustyle">

							
				            <li><a href="physicalexam">Physical Exam Form</a></li>
				            <li><a href="viewphysicalexam">View Physical exam Form</a></li>
</ul>


<ul id="ddsubmenu6" class="ddsubmenustyle">

							
				            <li><a href="physicalexam">Physical Exam Form</a></li>
				            <li><a href="viewphysicalexam">View Physical exam Form</a></li>
</ul>
<ul id="ddsubmenu8" class="ddsubmenustyle">
				            <li><a href="radiologicreport">Radiologic report Form</a></li>
				            <li><a href="viewradiologicreport">View Radiologic report Form</a></li>
</ul>
<ul id="ddsubmenu9" class="ddsubmenustyle">
				             <li><a href="hamiltonchiropractic">InitialExam</a></li>
				             <li><a href="viewfirsthamiltonchiropractic">View InitialExam</a></li>
				             </ul>
 <ul id="ddsubmenu10" class="ddsubmenustyle">
				             <li><a href="soapnotes">SOAP Notes</a></li>
				            

</ul>


<ul id="ddsubmenu7" class="ddsubmenustyle">

							
				            <li><a href="checklistsearch">Staff checklist</a></li>
				            <!-- <li><a href="staffdetails">View Staff checklist</a></li> -->
				            <li><a href="insuranceverification">Insurance verification</a></li>
				            
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
							<!-- <li><a href="hardshiplist">View Hardship Agreement</a></li> -->
							<li><a href="screeningAuthz">Screening Disclosure</a></li> 
						<!-- 	<li><a href="screeninglist">View Screening Disclosure</a></li>        -->
				            <li><a href="medicalrecords">Release Of Records</a></li>
				          <!--   <li><a href="medicalrecordslist">View Release Of Records</a></li> -->
				            <li><a href="Assignment">Assignment Of Benefits</a></li>
				          <!--   <li><a href="assignmentlist">View Assignment Of Benefits</a></li> -->
				            <li><a href="Hippaprivacy">Hippa Privacy</a></li>
				          <!--   <li><a href="hippalist">View Hippa Privacy</a></li> -->
				         </ul>
						<!-- <ul id="ddsubmenu4" class="ddsubmenustyle">
							<li><a href="textmsgsettings">Text Message API settings</a></li>
							<li><a href="addmailtemplate">Mail Templates</a></li>
							<li><a href="changepassword">Change My Password</a></li>
						</ul> -->
						<!-- <ul id="ddsubmenu5" class="ddsubmenustyle"> -->
						<!-- <li><a href="patientDetails">Patient Information</a></li> -->
						<!-- <li><a href="viewpatient">View Patient</a></li> -->
						</ul>
						
						
						<!-- <ul id="ddsubmenu5" class="ddsubmenustyle">
						<li><a href="patientDetails">Patient Information</a></li>
						<li><a href="viewpatient">View Patient</a></li>
						</ul> -->





							<ul id="ddsubmenu4" class="ddsubmenustyle">
							<li><a href="insuranceplan">Insurance Waiver</a></li>
						<!-- 	<li><a href="insuranceplanlist">View Insurance Waiver</a></li> -->
							<li><a href="insuranceinformation">Health Insurance Information</a></li>
							<!-- <li><a href="insuranceinfolist">View Health Insurance Information</a></li> -->
							<!-- <li><a href="insuranceverification">Health Insurance Verification</a></li> -->
						</ul>
						<script>
						function lumbo()
						{
							document.getElementById("ddsubmenu14").style.display="block";
						}
						
						</script>
						<!-- <ul id="ddsubmenu13" class="ddsubmenustyle">
						
							<li style="list-style-type: none"><a href="#" rel="ddsubmenu14" ><span>Lumbopelvic Exam</span> </a>
							  <ul id="ddsubmenu14" >
							     <li > <a href="lumbopelvicexam" >Lumbopelvic Initial Exam</a>
							      <li><a href="viewlumbopelvicexam">View Lumbopelvic Exam & Reexam</a></li>
							   </ul> 
							     </li>
							<li><a href="#" rel="ddsubmenu15" >Hip Exam</a>
							     <ul id="ddsubmenu15" >
							      <li><a href="perry" >Hip Initial Exam</a></li>
							      <li><a href="viewhipexam">View Hip Exam & Reexam</a></li>
							     </ul>
							     </li>
							<li><a href="#" rel="ddsubmenu16" >Knee Exam</a> 
							<ul id="ddsubmenu16" >
							      <li><a href="kneeexam" >Knee Initial Exam</a></li>
							      <li><a href="viewkneeexam">View Knee Exam & Reexam</a></li>
							     </ul>
							     </li>
							<li><a href="#" rel="ddsubmenu17" >Foot Exam</a>
							<ul id="ddsubmenu17" >
							      <li><a href="ankle" >Foot Initial Exam</a></li>
							      <li><a href="viewfootexam">View Foot Exam & Reexam</a></li>
							     </ul>
							     </li>     
				            <li><a href="#" rel="ddsubmenu18" onmouseover="cervicaldisplay()">Cervical Exam</a>
				              <ul id="ddsubmenu18" >
							      <li><a href="cervicalexam" >Cervical Initial Exam</a></li>
							      <li><a href="viewcervicalexam">View Cervical Exam & Reexam</a></li>
							     </ul>
							     </li>
				            <li><a href="#" rel="ddsubmenu19" onmouseover="shoulderdisplay()">Shoulder Exam</a>
				             <ul id="ddsubmenu19" >
							      <li><a href="shoulderexam" >Shoulder Initial Exam</a></li>
							      <li><a href="viewshoulderexamdetails">View Shoulder Exam & Reexam</a></li>
							     </ul>
							     </li>
				            <li><a href="#" rel="ddsubmenu20" onmouseover="elbowdisplay()">Elbow Exam</a>
				                <ul id="ddsubmenu20" >
							      <li><a href="elbowexam" >Elbow Initial Exam</a></li>
							      <li><a href="viewelbowexam">View Elbow Exam & Reexam</a></li>
							     </ul>
							     </li>
				            <li><a href="#" rel="ddsubmenu21" onmouseover="wristdisplay()">Wrist And Hand Exam</a>
				               <ul id="ddsubmenu21" >
							      <li><a href="wristexam" >Wrist Initial Exam</a></li>
							      <li><a href="viewwristexamdetails">View Wrist Exam & Reexam</a></li>
							     </ul>
							     </li>
				            <li><a href="#" rel="ddsubmenu22" onmouseover="thoracicdisplay()">Thoracic Exam</a>
				               <ul id="ddsubmenu22" >
							      <li><a href="thoracicexam" >Thoracic Initial Exam</a></li>
							      <li><a href="viewthoracicexam">View Thoracic Exam & Reexam</a></li>
							     </ul>
							     </li>
				         </ul>
				         --> <ul id="ddsubmenu23" class="ddsubmenustyle">
							      <li><a href="symptom" >Pain Diagram</a></li>
							      <!-- <li><a href="viewsymptom">View Symptom</a></li> -->
							     </ul>
							     </li>
				         </ul>
				         <ul id="ddsubmenu24" class="ddsubmenustyle">
							      <li><a href="manual" >Manual Therapy Daily Eval And Treatment </a></li>
							      <li><a href="viewmanualtherapy">View Manual Therapy Daily Eval And Treatment</a></li>
							     </ul>
							     </li>
				         </ul>
						 <ul id="ddsubmenu25" class="ddsubmenustyle">
							      <li><a href="wristdisabilityindex" >Wrist/Hand Disability Index</a></li>
							      <li><a href="viewwristindex">View Wrist/Hand Disability Index</a></li>
							      <li><a href="lowbackdisability" >Low Back Disability</a></li>
							      <li><a href="viewlowback">View Low Back Disability</a></li>
							      <li><a href="neckindex" >Neck/Mild Back Disability Index</a></li>
							      <li><a href="viewneckindex">View Neck/Mild Back Disability Index</a></li>
							      <li><a href="oswestryindex" >Oswestry Disability Index 2.0</a></li>
							      <li><a href="viewoswestryindex">View Oswestry Disability Index 2.0</a></li>
							     </ul>
							     </li>
				         </ul>
				         <ul id="ddsubmenu26" class="ddsubmenustyle">
							      <li><a href="hipquestionnaire" >Hip And Knee Questionnarie</a></li>							      
							      <li><a href="footquestionnarie" >Foot And Ankle Questionnarie</a></li>			  
					    </ul>
							     </li>
				         </ul>
				          <ul id="ddsubmenu27" class="ddsubmenustyle">
							      <li><a href="dcfeeslip" >Dc Fee Slip</a></li>
							   <!--    <li><a href="viewdcfeeslip">View Dc Fee Slip</a></li> -->
							     </ul>
							     </li>
				         </ul>
				         <ul id="ddsubmenu29" class="ddsubmenustyle">
							      <li><a href="dutiesunderduress" >Duties Under Duress Summary</a></li>
							      <li><a href="viewduties">View Duties Under Duress Summary</a></li>
							     </ul>
						<ul id="ddsubmenu30" class="ddsubmenustyle">
							      <li><a href="perrychiropractic" >Form Cover Letter</a></li>
							    <!--   <li><a href="viewperrychiropractic">View Form Cover Letter</a></li> -->
							      <li><a href="patientattorney" >Form Cover Letter For Patient's Attorney</a></li>
							    <!--  <li><a href="viewpatientattorney">View Form Cover Letter For Patient's Attorney</a></li> -->
							     <li><a href="updateletter" >Update Letter</a></li><!-- 
							      <li><a href="viewupdateletter">View Update Letter</a></li> -->
							     <li><a href="copyofrequest" >Requesting Fee Reduction</a></li>
							    <!--  <li><a href="viewcopyofrequest" >View Requesting Fee Reduction</a></li> -->
							     </ul>
							     <ul id="ddsubmenu31" class="ddsubmenustyle">
							      <li><a href="shoulderpainscore">Shoulder Pain Score</a></li>
							      <li><a href="viewshoulderpainscore">View Shoulder Pain Score</a></li>
							     </ul>
							     <ul id="ddsubmenu32" class="ddsubmenustyle">
							      <li><a href="narrativesearch">Narrativereport</a></li>
							   <!--    <li><a href="viewnarrativereport">View Narrativereport</a></li> -->
							     </ul>
							      <ul id="ddsubmenu33" class="ddsubmenustyle">
							      <li><a href="xray">Xray</a></li>
							   <!--    <li><a href="viewxray">View Xray</a></li> -->
							      <li><a href="formbill">Form Bill</a></li>
							    <!--   <li><a href="viewformbill">View Form Bill</a></li> -->
							      <li><a href="pimedpay">PI med pay Warning letter</a></li>
							  <!--     <li><a href="viewpimedpay">View PI med pay Warning letter</a></li> -->
							     <li><a href="letterofprotection">Letter of Protection</a></li>
							    <!--   <li><a href="viewletterofprotection">View Letter of Protection</a></li> -->
							     
							     </ul>
							     <ul id="ddsubmenu34" class="ddsubmenustyle">
							      <li><a href="faxcover">Faxcover</a></li>
							<!--       <li><a href="viewfaxcover">View Fax cover</a></li> -->
							      <li><a href="lettertopatients">Letter to Patients</a></li>
							<!--       <li><a href="viewlettertopatients">View Letter to Patients</a></li> -->
							     <li><a href="noticeassignment">Notice Assignments</a></li>
							   <!--    <li><a href="viewnoticeassignment">View Notice Assignments</a></li>	 -->
							      <li><a href="requestfordemand">Request for Demand</a></li>
							   <!--    <li><a href="viewrequestfordemand">View Request for Demand</a></li>	 -->
							       <li><a href="responseattorney">Response Attorney</a></li>
							    <!--   <li><a href="viewresponseattorney">View Request for Demand</a></li>	 -->			             						     
					             			             						     
					             </ul>
					              <ul id="ddsubmenu35" class="ddsubmenustyle">
							       <li><a href="workschool">Work School</a></li>
							    <!--   <li><a href="viewworkschool">View Work School</a></li> -->
							     
							     </ul>
							     </li>
				         </ul>
					</div>
					<div class="menu_r"></div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		</c:otherwise>
		</c:choose>
		</c:otherwise>
		</c:choose>
		
					</c:otherwise>					
					</c:choose>
</div>
</div>
</body>
</html>
<script src="Accident_type.js"></script>
