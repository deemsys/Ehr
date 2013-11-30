<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="resources/css/tabs.css" type="text/css" />
  

  <script src="resources/js/tabs-1.9.1.js"></script>
  <script src="resources/js/tabs-ui.js"></script>
 
 
	
	<script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
  <script>
  $(function(){
      $("#datepicker").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
          var minValue = $(this).val();
          minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
          minValue.setDate(minValue.getDate()+1);
          $("#datepicker").datepicker( "option", "minDate", minValue );
      })
  });

  </script>
  </head>
	<body>
	<form method="POST" action="physicalexam">

<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
	              <h2 align="center" >Chiropractic Therapy Center<br></b></h2>
	       </div></div> 
	       <div class="contentbox">
	    <%--   <c:choose>
		 <c:when test="${empty physical}"> --%>
	        <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
    					<!-- <h2 class="quck-txt">Patient Details</h2> -->
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
	                            <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Physician Signature :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="sign" /><span class="err"><form:errors path="Physicalexam.sign"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Name :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="name" /><span class="err"><form:errors path="Physicalexam.name"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>ID :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="id" /><span class="err"><form:errors path="Physicalexam.id"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker" name="date" /><span class="err"><form:errors path="Physicalexam.date"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Vitals-Age:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="age" /><span class="err"><form:errors path="Physicalexam.age"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Sex:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="sex" /><span class="err"><form:errors path="Physicalexam.sex"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Height:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="height" /><span class="err"><form:errors path="Physicalexam.height"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Weight:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="weight" /><span class="err"><form:errors path="Physicalexam.weight"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Temp:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="temp" /><span class="err"><form:errors path="Physicalexam.temp"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>BP:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="bp" /><span class="err"><form:errors path="Physicalexam.bp"></form:errors>
				                  </td>
				                </tr>
				                </table>
				                <td align="left" valign="top"> 
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Pulse:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="pulse" /><span class="err"><form:errors path="Physicalexam.pulse"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Appearance:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="appearance" class="input_cmbbx1">
						                    <option selected="selected" value="excellent" >Excellent</option>
											<option value="good">Good</option>
											<option value="fair">Fair</option>
											<option value="Severe">Severe</option>
				                   		</select>
				                   	</td> </tr>  
				                   	 <tr class="row2">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Weight:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="weight1" class="input_cmbbx1">
						                    <option selected="selected" value="un" >UN</option>
											<option value="n">N</option>
											<option value="wn">WN</option>
				                   		</select>
				                   	</td> </tr>  
				                   	 <tr class="row1">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>GAIT:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="gait" class="input_cmbbx1">
						                    <option selected="selected" value="antalgic" >Antalgic</option>
											<option value="limp">Limp</option>
											<option value="sway">Sway</option>
											<option value="stagger">Stagger</option>
											<option value="normal">Normal</option>
				                   		</select>
				                   		
				                   	</td> </tr>
				                   	 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>HEAD,EENT:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="head" value="Normal" class="input_txt" checked="true">Normal&nbsp;&nbsp;&nbsp;<input type="radio" name="head" value="Abnormal" class="input_txt">Abnormal&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Visceral Pathologies:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="path" value="Normal" class="input_txt" checked="true">Normal&nbsp;&nbsp;&nbsp;<input type="radio" name="path" value="Abnormal" class="input_txt">Abnormal&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Posture:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="posture" value="Good" class="input_txt" checked="true">Good&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="posture" value="Poor" class="input_txt">Poor&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                   	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Romberg's Sign:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="romber" value="Present" class="input_txt" checked="true">Present&nbsp;&nbsp;&nbsp;<input type="radio" name="romber" value="NotPresent" class="input_txt">NotPresent&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>CN Exam:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="exam" value="Normal" class="input_txt" checked="true">Normal&nbsp;&nbsp;&nbsp;<input type="radio" name="exam" value="DNP" class="input_txt">DNP&nbsp;&nbsp;&nbsp;</td>
				                </tr>  	
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Abnormal Findings:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="abnormal" /><span class="err"><form:errors path="Physicalexam.abnormal"></form:errors>
				                  </td>
				                </tr>
				               
				              
				                </table>
				               <%--  </c:when>
				                <c:otherwise>
				                <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
    					<!-- <h2 class="quck-txt">Patient Details</h2> -->
    					<c:set value="${physicalexamForm.physicalexam[0]}" var="physicalexam"/>
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
	                            <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Physician Signature :</td>
				                  <input type="hidden" class="input_txtbx1" id="inp_id" value="${physicalexam.physical_id}" name="physical_id" />
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="sign" value="${physical.sign}" /><span class="err"><form:errors path="Physicalexam.sign"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Name :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="name" value="${physical.name}"/><span class="err"><form:errors path="Physicalexam.name"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>ID :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="id" value="${physical.id}"/><span class="err"><form:errors path="Physicalexam.id"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="date" value="${physical.date}" /><span class="err"><form:errors path="Physicalexam.date"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Vitals-Age:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="age" value="${physical.age}"/><span class="err"><form:errors path="Physicalexam.age"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Sex:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="sex" value="${physical.sex}"/><span class="err"><form:errors path="Physicalexam.sex"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Height:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="height" value="${physical.height}"/><span class="err"><form:errors path="Physicalexam.height"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Weight:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="weight" value="${physical.weight}"/><span class="err"><form:errors path="Physicalexam.weight"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Temp:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="temp" value="${physical.temp}"/><span class="err"><form:errors path="Physicalexam.temp"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>BP:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="bp" value="${physical.bp}"/><span class="err"><form:errors path="Physicalexam.bp"></form:errors>
				                  </td>
				                </tr>
				                </table>
				                <td align="left" valign="top"> 
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Pulse:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="pulse" value="${physical.pulse}"/><span class="err"><form:errors path="Physicalexam.pulse"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Appearance:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="appearance" class="input_cmbbx1">
				                  		<option value="excellent" <c:if test="${physical.appearance=='excellent'}"><c:out value="selected"/></c:if>>Excellent</option>
						                 <option value="good" <c:if test="${physical.appearance=='good'}"><c:out value="selected"/></c:if>>Good</option>   
						                 <option value="fair" <c:if test="${physical.appearance=='fair'}"><c:out value="selected"/></c:if>>Fair</option>
						                 <option value="Severe" <c:if test="${physical.appearance=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						          
				                   		</select>
				                   	</td> </tr>  
				                   	 <tr class="row2">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Weight:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="weight1" class="input_cmbbx1">
				                  		<option value="un" <c:if test="${physical.weight1=='un'}"><c:out value="selected"/></c:if>>UN</option>
				                  		<option value="n" <c:if test="${physical.weight1=='n'}"><c:out value="selected"/></c:if>>N</option>
				                  		<option value="wn" <c:if test="${physical.weight1=='wn'}"><c:out value="selected"/></c:if>>WN</option>
						                    
				                   		</select>
				                   	</td> </tr>  
				                   	 <tr class="row1">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>GAIT:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="gait" class="input_cmbbx1">
				                  		<option value="antalgic" <c:if test="${physical.gait=='antalgic'}"><c:out value="selected"/></c:if>>Antalgic</option>
				                  		<option value="limp" <c:if test="${physical.gait=='limp'}"><c:out value="selected"/></c:if>>Limp</option>
				                  		<option value="sway" <c:if test="${physical.gait=='sway'}"><c:out value="selected"/></c:if>>Sway</option>
				                  		<option value="stagger" <c:if test="${physical.gait=='stagger'}"><c:out value="selected"/></c:if>>Stagger</option>
				                  		<option value="normal" <c:if test="${physical.gait=='normal'}"><c:out value="selected"/></c:if>>Normal</option>
				                  		
				                   		</select>
				                   		
				                   	</td> </tr>
				                   	 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>HEAD,EENT:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="head" value="Normal" class="input_txt"  <c:if test="${physical.head=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="head" value="Abnormal" class="input_txt"  <c:if test="${physical.head=='Abnormal'}"><c:out value="checked=checked"/></c:if>>Abnormal&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Visceral Pathologies:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="path" value="Normal" class="input_txt"  <c:if test="${physical.path=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="path" value="Abnormal" class="input_txt"  <c:if test="${physical.path=='Abnormal'}"><c:out value="checked=checked"/></c:if>>Abnormal&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Posture:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="posture" value="Good" class="input_txt"  <c:if test="${physical.posture=='Good'}"><c:out value="checked=checked"/></c:if>>Good&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="posture" value="Poor" class="input_txt"  <c:if test="${physical.posture=='Poor'}"><c:out value="checked=checked"/></c:if>>Poor&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                   	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Romberg's Sign:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="romber" value="Present" class="input_txt"  <c:if test="${physical.romber=='Present'}"><c:out value="checked=checked"/></c:if>>Present&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="romber" value="NotPresent" class="input_txt"  <c:if test="${physical.romber=='NotPresent'}"><c:out value="checked=checked"/></c:if>>NotPresent&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>CN Exam:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="exam" value="Normal" class="input_txt"  <c:if test="${physical.exam=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="exam" value="DNP" class="input_txt"  <c:if test="${physical.exam=='DNP'}"><c:out value="checked=checked"/></c:if>>DNP&nbsp;&nbsp;&nbsp;</td>
				                </tr>  	
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Abnormal Findings:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="abnormal" value=${physical.abnormal } /><span class="err"><form:errors path="Physicalexam.abnormal"></form:errors>
				                  </td>
				                </tr>
				               
				              
				                </table>
				                </c:otherwise>
				                </c:choose>
				                --%>
				                </td>
				                </tr>
	</table>
	</div>
	</td>
	</tr>
	</table>
	
	<div id="tabs">
       <ul>
          <li><a href="#tabs-1">CERVICAL SPINE</a></li>
          <li><a href="#tabs-2">THORACIC SPINE</a></li>
          <li><a href="#tabs-3">LUMBAR SPINE - SI - HIP</a></li>
       </ul>
         
   <div id="tabs-1">
	 <div id="right_content">
		 <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>CERVICAL SPINE</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        		                
                               
                        <table border="0">
				               <tr class="row1">
				               <td><b>INSPECTION:</b></td>
				               
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>Head Tilt:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="headtiltright" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="headtiltleft" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="headtiltnormal" value="Normal">Normal</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Rotation:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="rotationright" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="rotationleft" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="rotationnormal" value="Normal">Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>TMJ Syndrome:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tmjright" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tmjleft" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="tmjnormal" value="Normal">Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>High Shoulder:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="highright" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="highleft" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="highnormal" value="Normal">Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Lordosis:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lordhyper" value="Hyper">Hyper</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lordhypo" value="Hypo">Hypo</td>
				                  <td class="input_txt"><input type="checkbox" name="lordnormal" value="Normal">Normal</td>
				                 
				                  </tr>
				                
				                </table>
				                <table border="0">
				               <tr class="row1">
				               <td><b>PALPATION:</b></td>
				               
				                  </tr>
				                <tr class="row1">
				                  <td>Lymph Nodes:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lymphedema" value="Lymphedema">Lymphedema</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lymphnormal" value="Normal">Normal</td>
				                  </tr>
				                   <tr class="row1">
				                  <td>Paraspinal:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="paraspain" value="Pain">Pain</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="parasspasm" value="Spasm">Spasm</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="parasedema" value="Edema">Edema</td>
				                   <td class="input_txt" align="left"> <input type="checkbox" name="parastriggerpoint" value="TriggerPoint">TriggerPoint</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Trapezius/SCM:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="trapeziusrl" value="R-L">R-L</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="trapeziustono" value="Tonocity">Tonicity</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="trapeziusnormal" value="Normal">Normal</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Vertebrae:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="vertebraefix" value="Fixations">Fixations</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="vertebraenofix" value="No_fixations">No Fixations</td>
				                  </tr>
				                  </table>
				               <table border="0">
				               <tr class="row1">
				               <td><b>RANGE OF MOTION:(Include Degrees)</b></td>
				               <td valign="top" align="left" class="input_txt">Normal ROM </td>
				                  <td class="input_txt">Pain</td>
				                  <td class="input_txt">Spasm</td>
				                  <td class="input_txt">Stiff</td>
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>FLEX 60:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="flexnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="flexpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="flexspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="flexstiff" /></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 75:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="extnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="extpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="extspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="extstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 45:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="rlfnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="rlfpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rlfspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rlfstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 45:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="llfnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="llfpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="llfspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="llfstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 80:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="rrnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="rrpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rrspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rrstiff" /></td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 80:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lrnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lrpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lrspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lrstiff" /></td>
				                  </tr>
				                </table>
				                
				                 <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>DERMATOMES:</td>
				                  </tr>
				               <tr class="row1">
				                  <td><b>Sensation:</td>
				                  <td valign="top" align="left" class="input_txt"><b>Normal</td>
				                 <td class="input_txt" align="left"><b>Abnormal Sensation</td>
				                  
				                 
				                  </tr>
				                <tr class="row1">
				                   <td>C-5:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="c5" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c5right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c5left" value="Left">Left</td>
				                  </tr>
				                <tr class="row1">
				                   <td>C-6:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="c6" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c6right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c6left" value="Left">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>C-7:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="c7" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c7right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c7left" value="Left">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>C-8:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="c8" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c8right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c8left" value="Left">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>T-1:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="t1" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="t1right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="t1left" value="Left">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>Other:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="other" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="otherright" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="otherleft" value="Left">Left</td>
				                  </tr>
				       </table>
				       
				       <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>MYOTOMES:</td>
				                  </tr>
				               <tr class="row1">
				                 <td></td>
				                  <td valign="top" align="left" class="input_txt"><b>Right</td>
				                 <td class="input_txt" align="left"><b>Left</td>
				                  </tr>
				                    <tr class="row1">
				                 <td>(Deltoid) C-5	</td>
				                 <td><select name="deltoidright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
				                   		</select></td>
				                   		<td><select name="deltoidleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                 <td>(Wrist Ext.) C-6	</td>
				                 <td><select name="wristright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
				                   		</select></td>
				                   		<td><select name="wristleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Wrist Flex) C-7	</td>
				                 <td><select name="wristflexright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
				                   		</select></td>
				                   		<td><select name="wristflexleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Finger Flex) C-8</td>
				                 <td><select name="fingerflexright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
				                   		</select></td>
				                   		<td><select name="fingerflexleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Finger Add.) T-1</td>
				                 <td><select name="fingeraddright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
				                   		</select></td>
				                   		<td><select name="fingeraddleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Wrist Ext.) C-6	</td>
				                 <td><select name="wristextright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
				                   		</select></td>
				                   		<td><select name="wristextleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                 </table>
				                  <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>DEEP TENDON REFLEXES:</td>
				                  </tr>
				               <tr class="row1">
				                 <td></td>
				                  <td valign="top" align="left" class="input_txt"><b>Right</td>
				                 <td class="input_txt" align="left"><b>Left</td>
				                  </tr> 
				                  <tr class="row1">
				                 <td>C-5/6 (Bicep) </td>
				                 <td><select name="bicepright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											
				                   		</select></td>
				                   		<td><select name="bicepleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>C-6/7 (Bracio-Rad.)</td>
				                 <td><select name="bracioradright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											
				                   		</select></td>
				                   		<td><select name="bracioradleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>C-7/8 (Tricep)</td>
				                 <td><select name="tricepright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											
				                   		</select></td>
				                   		<td><select name="tricepleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											
				                   		</select></td>
				                   		
				                  </tr>
				                 
				              </table>
				              </td>
				              </tr>
				              </table>
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
        	<h2>THORACIC SPINE</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table border="0">
				               <tr class="row1">
				               <td><b>INSPECTION:</b></td>
				               
				                  </tr>
				                 <tr class="row1">
				                  <td>High Shoulder:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="highshoulderright" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="highshoulderleft" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="highshouldernormal" value="Normal">Normal</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Curvature:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="curvatureright" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="curvatureleft" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="curvaturenormal" value="Normal">Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Winging:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="wingingright" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="wingingleft" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="wingingnormal" value="Normal">Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Rib Hump:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="ribhumpright" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="ribhumpleft" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="ribhumpnormal" value="Normal">Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Chest Measure:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="chestmeasurein" value="Inhale">Inhale</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="chestmeasureex" value="Exhale">Exhale</td>
				                  
				                  </tr>
				                  <tr class="row1">
				                   <td>kyphosis:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="kyphosishyper" value="Hyper">Hyper</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="kyphosishypo" value="Hypo">Hypo</td>
				                  <td class="input_txt"><input type="checkbox" name="kyphosisnormal" value="Normal">Normal</td>
				                 
				                  </tr>
				                
				                </table>
				                
				                <table border="0">
				               <tr class="row1">
				               <td><b>PALPATION:</b></td>
				               
				                  </tr>
				                <tr class="row1">
				                  <td>Paraspinal:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="parapain" value="Pain">Pain</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraspasm" value="Spasm">Spasm</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraedema" value="Edema">Edema</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paratriggerpoint" value="TriggerPoint">TriggerPoint</td>
				                  </tr> 
				                  <tr class="row1">
				                  <td>Ribs:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="ribspost" value="Posterior">Posterior</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="ribsnor" value="Normal">Normal</td>
				                 </tr>
				                   <tr class="row1">
				                  <td>Vertebrae:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="vertefix" value="Fixation">Fixations</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="vertenofix" value="No_Fixation">No Fixations</td>
				                  </tr>
				                  </table>
				                   <table border="0">
				               <tr class="row1">
				               <td><b>RANGE OF MOTION:(Include Degrees)</b></td>
				               <td valign="top" align="left" class="input_txt">Normal ROM </td>
				                  <td class="input_txt">Pain</td>
				                  <td class="input_txt">Spasm</td>
				                  <td class="input_txt">Stiff</td>
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>FLEX 40:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thoracicnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thoracicpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoracicspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoracicstiff" /></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 30:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thoextnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thoextpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoextspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoextstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 30:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thorlfnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thorlfpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorlfspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorlfstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 30:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thollfnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thollfpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thollfspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thollfstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 40:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thorrnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thorrpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorrspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorrstiff" /></td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 40:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="tholrnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="tholrpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="tholrspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="tholrstiff" /></td>
				                  </tr>
				                </table>
				                 <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>DERMATOMES:</td>
				                  </tr>
				               <tr class="row1">
				                  <td><b>Sensation:</td>
				                  <td valign="top" align="left" class="input_txt"><b>Normal</td>
				                 <td class="input_txt" align="left"><b>Abnormal Sensation</td>
				                  
				                 
				                  </tr>
				                <tr class="row1">
				                   <td>T-1:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thot1" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot1right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot1left" value="Left">Left</td>
				                  </tr>
				                <tr class="row1">
				                   <td>T-4:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thot4" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot4right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot4left" value="Left">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>T-10:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thot10" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot10right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot10left" value="Left">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>Other:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thoother" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thootherright" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thootherleft" value="Left">Left</td>
				                  </tr>
				                  </table>
				                  <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>MYOTOMES:</td>
				                  </tr>
				                  <tr class="row1">
				                   <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="myotomes" value="Positive Beevors" class="input_txt" checked="true" onclick="toggle3('show3')">Positive Beevor's&nbsp;&nbsp;&nbsp;<input type="radio" name="myotomes" value="Negative Beevors" class="input_txt"  onclick="toggle3('hide3')">Negative Beevor's</td>
				                  </tr>
				                  </table>
				                  <div id="positive">
				                   <table border="0">
				                   <tr class="row1">
				                    <td><input type="checkbox" name="positiveruq" value="RUQ">RUQ</td>
				                    <td><input type="checkbox" name="positiveluq" value="LUQ">LUQ</td>
				                    <td><input type="checkbox" name="positiverlq" value="RLQ">RLQ</td>
				                    <td><input type="checkbox" name="positivellq" value="LLQ">LLQ</td>
				                   </tr>
				                   </table>
				                 </div>
				                 </td>
				                 </tr>
				                 </table>
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
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>LUMBAR SPINE-SI-HIP</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table border="0">
				               <tr class="row1">
				               <td><b>INSPECTION:</b></td>
				               </tr>
				                 <tr class="row1">
				                  <td>High Crest:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="highcrestright" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="highcrestleft" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="highcrestnormal" value="Normal">Normal</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>High PSIS:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="highpsisright" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="highpsisleft" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="highpsisnormal" value="Normal">Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Curvature:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="curveright" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="curveleft" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="curvenormal" value="Normal">Normal</td>
				                 </tr>
				                 <tr class="row1">
				                   <td>Lordosis:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lordosishyper" value="Hyper">Hyper</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lordosishypo" value="Hypo">Hypo</td>
				                  <td class="input_txt"><input type="checkbox" name="lordosisnormal" value="Normal">Normal</td>
				                 
				                  </tr>
				                  </table>
				                
				                <table border="0">
				               <tr class="row1">
				               <td><b>PALPATION:</b></td>
				               
				                  </tr>
				                <tr class="row1">
				                  <td>Paraspinal:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="paraspinalpain" value="Pain">Pain</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraspinalspasm" value="Spasm">Spasm</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraspinaledema" value="Edema">Edema</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraspinaltp" value="TriggerPoint">TriggerPoint</td>
				                  </tr> 
				                   <tr class="row1">
				                  <td>Quadratus Lumborum:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="quadrl" value="R-L">R-L</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="quadtono" value="Tonicity">Tonicity</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="quadnor" value="Normal">Normal</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Hamstring:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hamstringrl" value="R-L">R-L</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="hamstringtono" value="Tonicity">Tonicity</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="hamstringnor" value="Normal">Normal</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Vertebrae:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="verfix" value="Fixations">Fixations</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="vernofix" value="No_Fixations">No Fixations</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Abdomen:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="abdomentender" value="Tender">Tender</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="abdomenpulse" value="Pulsations">Pulsations</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="abdomenascites" value="Ascites">Ascites</td>
				                  </tr>
				                  </table>
				                   <table border="0">
				               <tr class="row1">
				               <td><b>RANGE OF MOTION:(Include Degrees)</b></td>
				               <td valign="top" align="left" class="input_txt">Normal ROM </td>
				                  <td class="input_txt">Pain</td>
				                  <td class="input_txt">Spasm</td>
				                  <td class="input_txt">Stiff</td>
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>FLEX 80:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lumflexnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumflexpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumflexspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumflexstiff" /></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 30:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lumextnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumextpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumextspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumextstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 25:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lumrlfnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumrlfpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrlfspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrlfstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 25:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lumllfnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumllfpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumllfspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumllfstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 30:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lumrrnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumrrpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrrspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrrstiff" /></td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 30:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lumlrnormal" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumlrpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumlrspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumlrstiff" /></td>
				                  </tr>
				                </table>
				                 <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>MYOTOMES:</td>
				                  </tr>
				               <tr class="row1">
				                 <td></td>
				                  <td valign="top" align="left" class="input_txt"><b>Right</td>
				                 <td class="input_txt" align="left"><b>Left</td>
				                  </tr>
				                    <tr class="row1">
				                 <td>(Hip Flex) L-5	</td>
				                 <td><select name="hipflexright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		<td><select name="hipflexleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                 <td>(Leg Ext.) L-3	</td>
				                 <td><select name="legextright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		<td><select name="legextleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				              
				                    <tr class="row1">
				                 <td>(Dorsiflex) L-4	</td>
				                 <td><select name="dorsiflexright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		<td><select name="dorsiflexleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                 <td>(1st digit flex.) L-5	</td>
				                 <td><select name="digitflexright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		<td><select name="digitflexleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                  <td>(Heel Walk)L-4/5</td>
				                  <td valign="top" align="left" class="input_txt"><input type="radio" name="heelright" value="Positive" class="input_txt" checked="true" >Positive&nbsp;&nbsp;&nbsp;<input type="radio" name="heelright" value="Negative" class="input_txt" >Negative&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt"><input type="radio" name="heelleft" value="Positive" class="input_txt" checked="true" >Positive&nbsp;&nbsp;&nbsp;<input type="radio" name="heelleft" value="Negative" class="input_txt" >Negative&nbsp;&nbsp;&nbsp;</td>
				                  </tr>
				                   <tr class="row1">
				                  <td>(Toe Walk)S-1/2</td>
				                  <td valign="top" align="left" class="input_txt"><input type="radio" name="toeright" value="Positive" class="input_txt" checked="true" >Positive&nbsp;&nbsp;&nbsp;<input type="radio" name="toeright" value="Negative" class="input_txt" >Negative&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt"><input type="radio" name="toeleft" value="Positive" class="input_txt" checked="true" >Positive&nbsp;&nbsp;&nbsp;<input type="radio" name="toeleft" value="Negative" class="input_txt" >Negative&nbsp;&nbsp;&nbsp;</td>
				                  </tr>
				                  </table>
				                   <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>DEEP TENDON REFLEXES:</td>
				                  </tr>
				               <tr class="row1">
				                 <td></td>
				                  <td valign="top" align="left" class="input_txt"><b>Right</td>
				                 <td class="input_txt" align="left"><b>Left</td>
				                  </tr> 
				                  <tr class="row1">
				                 <td>L-2,3,4 (Patellar) </td>
				                 <td><select name="patellarright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											
				                   		</select></td>
				                   		<td><select name="patellarleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>L-5,S-1,2(Achilles)</td>
				                 <td><select name="achillesright">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											
				                   		</select></td>
				                   		<td><select name="achillesleft">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											
				                   		</select></td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                  <td>Babinski(UMNL)</td>
				                  <td valign="top" align="left" class="input_txt"><input type="radio" name="babinskiright" value="Positive" class="input_txt" checked="true" >Positive&nbsp;&nbsp;&nbsp;<input type="radio" name="babinskiright" value="Negative" class="input_txt" >Negative&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt"><input type="radio" name="babinskileft" value="Positive" class="input_txt" checked="true" >Positive&nbsp;&nbsp;&nbsp;<input type="radio" name="babinskileft" value="Negative" class="input_txt" >Negative&nbsp;&nbsp;&nbsp;</td>
				                  </tr>
				                  
				                  </table>
				                  <table align="right">
				                  <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
				                   <td>&nbsp;&nbsp;</td>
				                    <!-- <td><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewphysicalexam'"></td> -->
				                    <td>&nbsp;&nbsp;</td>
				                    <td><input type="reset" class="submit_btn" value="Cancel"></td>
				              </tr>
				                  </table>
				                  </td>
				                  </tr>
				                  </table>
				                  </div>
				                  </td>
				                  </tr>
				                  </table>
				                  </div>
				                  </div>
				                  </div>
				                  </form>
				                  </body>
				                  </html>
				                   
				                   
				                  
				                  
				                   		
				                
				                  
<script type="text/javascript">
function toggle3(value){
	/* alert(value); */
	var e = document.getElementById('positive');
if(value=='show3')
 e.style.display="block";
else
 e.style.display="none";
}
</script>				              
 <jsp:include page="footer.jsp"></jsp:include>
