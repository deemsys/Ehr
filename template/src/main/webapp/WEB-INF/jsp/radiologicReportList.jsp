<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/tabs.css" type="text/css" />
 <script src="resources/js/tabs-1.9.1.js"></script>
  <script src="resources/js/tabs-ui.js"></script>
   
<title>Insert title here</title>
</head>

<script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>

<form method="post" action="">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
	              <h2 align="center" >Radiologic Report Details<br></b></h2>
	       </div></div> 
	        <div class="contentbox">
	        <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td>
    				<table cellpadding="0" cellspacing="0" border="0" width="100%">
	        <tr class="row1">
            <c:forEach items="${radiologicReportForm.radiologicReport}" var="radiologicReport" varStatus="status">
                   
                  <td> Patient Name: </td>
                    
                  <td>${radiologicReport.pname}</td>
                 
                  <td> Date :</td>
                    
                  <td>${radiologicReport.date}</td>
               
                 
                  <td> ID :</td>
                   
                  <td>${radiologicReport.id}</td>
                
                  <td> Date of Birth:</td>
                    
                  <td>${radiologicReport.dob}</td>
                </tr>
                 </c:forEach>
               </table>  
               
<div id="tabs">
       <ul>
          <li><a href="#tabs-1">Cervical Spine</a></li>
          <li><a href="#tabs-2">Thoracic Spine</a></li>
          <li><a href="#tabs-3">Lumbar Spine</a></li>
          <li><a href="#tabs-4">Extremities</a></li>
       </ul>
         
   <div id="tabs-1"> 
   		 <div id="right_content">
    <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;"></td>
      </tr>
      <tr>
        <td valign="top" align="left"><div>
            <div class="headings altheading">
              <h2>Cervical Spine</h2>
            </div>
            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
            
            <c:forEach items="${radiologicReportForm.radiologicReport}" var="radiologicReport" varStatus="status">
                   <tr class="row2">
                  <td width="15%" valign="middle" align="left" > Views </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${radiologicReport.views1}</td>
                </tr>
                 <tr class="row1">
                  <td width="15%" valign="middle" align="left" >  Negative for recent fracture, dislocation or gross Osteopathology : </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${radiologicReport.negative_1}</td>
                </tr>
                 <tr class="row2">
                  <td width="15%" valign="middle" align="left" > Positive for </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${radiologicReport.positive_1} ${radiologicReport.positive_text1}</td>
                </tr>
                 <tr class="row1">
                  <td width="15%" valign="middle" align="left" >  Negative for recent fracture, dislocation or gross Osteopathology : </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${radiologicReport.negative_1}</td>
                </tr>
                 <tr class="row2">
                  <td width="15%" valign="middle" align="left" > Views </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${radiologicReport.views1}</td>
                </tr>
                 <tr class="row1">
                  <td width="15%" valign="middle" align="left" >  Negative for recent fracture, dislocation or gross Osteopathology : </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${radiologicReport.negative_1}</td>
                </tr>
                 <tr class="row2">
                  <td width="15%" valign="middle" align="left" > Views </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${radiologicReport.views1}</td>
                </tr>
                 <tr class="row1">
                  <td width="15%" valign="middle" align="left" >  Negative for recent fracture, dislocation or gross Osteopathology : </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${radiologicReport.negative_1}</td>
                </tr>
                 <tr class="row2">
                  <td width="15%" valign="middle" align="left" > Views </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${radiologicReport.views1}</td>
                </tr>
                 <tr class="row1">
                  <td width="15%" valign="middle" align="left" >  Negative for recent fracture, dislocation or gross Osteopathology : </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${radiologicReport.negative_1}</td>
                </tr>
                
  
                </c:forEach>
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
      </div>
</form>



                <jsp:include page="footer.jsp"></jsp:include>