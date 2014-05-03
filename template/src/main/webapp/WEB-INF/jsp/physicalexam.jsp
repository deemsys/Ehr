<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="resources/css/tabs.css" type="text/css" />
  

  <script src="resources/js/tabs-1.9.1.js"></script>
  <script src="resources/js/tabs-ui.js"></script>
 
 
	
	<script>
	$(function(){
    var $select = $(".1-100");
    for (i=1;i<=100;i++){
        $select.append($('<option></option>').val(i).html(i))
    }
});

	$(function(){
    var $select = $(".40-250");
    for (i=40;i<=250;i++){
        $select.append($('<option></option>').val(i).html(i))
    }
});
	$(function() {
		$( "#tabs" ).tabs({
			event: "mouseover"
		});
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
$(function(){
    var $select = $(".1-500");
    for (i=1;i<=500;i++){
        $select.append($('<option></option>').val(i).html(i))
    }
});

  </script>
  </head>
	<body>
	<form method="POST" action="physicalexam">

<br>
<br>

	 <c:choose>
            <c:when test="${empty physical}">


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
				                  	<input type="hidden" name="patient_id" value="${patientid}"><input type="text" class="input_txtbx1" id="inp_id" name="sign" /><span class="err"><form:errors path="Physicalexam.sign"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Name :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="name" /><span class="err"><form:errors path="Physicalexam.name"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Email :</td>
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
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Age:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  <select name="age" class="1-100" id="inp_id"></select>
				                  <span class="err"></span><form:errors path="Physicalexam.age"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Sex:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	
				                   <select name="sex" class="input_cmbbx1" id="inp_id">
						                   
											<option value="Male">Male</option>
											<option value="Female">Female</option>
											
				                   		</select><span class="err"><form:errors path="Physicalexam.sex"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Height:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	
				                  <select name="height" class="input_cmbbx1" id="inp_id">
						                    
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											
											
				                   		</select><span class="err"><form:errors path="Physicalexam.height"></form:errors>
				                   		 <select name="height1" class="input_cmbbx1" id="height1">
				                   		 <option selected="selected" value="5.0" >5.0</option>
				                   		 <option value="5.1">5.1</option>
<option value="5.2">5.2</option>
<option value="5.3">5.3</option>
<option value="5.4">5.4</option>
<option value="5.5">5.5</option>
<option value="5.6">5.6</option>
<option value="5.7">5.7</option>
<option value="5.8">5.8</option>
<option value="5.9">5.9</option>
<option value="6.0">6.0</option>
<option value="6.1">6.1</option>
<option value="6.2">6.2</option>
<option value="6.3">6.3</option>
<option value="6.4">6.4</option>
<option value="6.5">6.5</option>
<option value="6.6">6.6</option>
<option value="6.7">6.7</option>
<option value="6.8">6.8</option>
<option value="6.9">6.9</option>
<option value="7.0">7.0</option>
<option value="7.1">7.1</option>
<option value="7.2">7.2</option>
<option value="7.3">7.3</option>
<option value="7.4">7.4</option>
<option value="7.5">7.5</option>
<option value="7.6">7.6</option>
<option value="7.7">7.7</option>
<option value="7.8">7.8</option>
<option value="7.9">7.9</option>
<option value="8.0">8.0</option>
<option value="8.1">8.1</option>
<option value="8.2">8.2</option>
<option value="8.3">8.3</option>
<option value="8.4">8.4</option>
<option value="8.5">8.5</option>
<option value="8.6">8.6</option>
<option value="8.7">8.7</option>
<option value="8.8">8.8</option>
<option value="8.9">8.9</option>
<option value="9.0">9.0</option>
<option value="9.1">9.1</option>
<option value="9.2">9.2</option>
<option value="9.3">9.3</option>
<option value="9.4">9.4</option>
<option value="9.5">9.5</option>
<option value="9.6">9.6</option>
<option value="9.7">9.7</option>
<option value="9.8">9.8</option>
<option value="9.9">9.9</option>
<option value="10.0">10.0</option>
<option value="10.1">10.1</option>
<option value="10.2">10.2</option>
<option value="10.3">10.3</option>
<option value="10.4">10.4</option>
<option value="10.5">10.5</option>
<option value="10.6">10.6</option>
<option value="10.7">10.7</option>
<option value="10.8">10.8</option>
<option value="10.9">10.9</option>
<option value="11.0">11.0</option>
<option value="11.1">11.1</option>
<option value="11.2">11.2</option>
<option value="11.3">11.3</option>
<option value="11.4">11.4</option>
<option value="11.5">11.5</option>
				                   		  </select>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Weight:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<select name="weight" class="1-500" id="inp_id"></select>
				                 <span class="err"><form:errors path="Physicalexam.weight"></form:errors>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Temp:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  <select name="temp" class="input_cmbbx1" id="tempid">
				                  <option selected="selected" value="95.0" >95.0</option>
				                  <option value="95.1">95.1</option>
<option value="95.2">95.2</option>
<option value="95.3">95.3</option>
<option value="95.4">95.4</option>
<option value="95.5">95.5</option>
<option value="95.6">95.6</option>
<option value="95.7">95.7</option>
<option value="95.8">95.8</option>
<option value="95.9">95.9</option>
<option value="96.0">96.0</option>
<option value="96.1">96.1</option>
<option value="96.2">96.2</option>
<option value="96.3">96.3</option>
<option value="96.4">96.4</option>
<option value="96.5">96.5</option>
<option value="96.6">96.6</option>
<option value="96.7">96.7</option>
<option value="96.8">96.8</option>
<option value="96.9">96.9</option>
<option value="97.0">97.0</option>
<option value="97.1">97.1</option>
<option value="97.2">97.2</option>
<option value="97.3">97.3</option>
<option value="97.4">97.4</option>
<option value="97.5">97.5</option>
<option value="97.6">97.6</option>
<option value="97.7">97.7</option>
<option value="97.8">97.8</option>
<option value="97.9">97.9</option>
<option value="98.0">98.0</option>
<option value="98.1">98.1</option>
<option value="98.2">98.2</option>
<option value="98.3">98.3</option>
<option value="98.4">98.4</option>
<option value="98.5">98.5</option>
<option value="98.6">98.6</option>
<option value="98.7">98.7</option>
<option value="98.8">98.8</option>
<option value="98.9">98.9</option>
<option value="99.0">99.0</option>
<option value="99.1">99.1</option>
<option value="99.2">99.2</option>
<option value="99.3">99.3</option>
<option value="99.4">99.4</option>
<option value="99.5">99.5</option>
<option value="99.6">99.6</option>
<option value="99.7">99.7</option>
<option value="99.8">99.8</option>
<option value="99.9">99.9</option>
<option value="100.0">100.0</option>
<option value="100.1">100.1</option>
<option value="100.2">100.2</option>
<option value="100.3">100.3</option>
<option value="100.4">100.4</option>
<option value="100.5">100.5</option>
<option value="100.6">100.6</option>
<option value="100.7">100.7</option>
<option value="100.8">100.8</option>
<option value="100.9">100.9</option>
<option value="101.0">101.0</option>
<option value="101.1">101.1</option>
<option value="101.2">101.2</option>
<option value="101.3">101.3</option>
<option value="101.4">101.4</option>
<option value="101.5">101.5</option>
<option value="101.6">101.6</option>
<option value="101.7">101.7</option>
<option value="101.8">101.8</option>
<option value="101.9">101.9</option>
<option value="102.0">102.0</option>
<option value="102.1">102.1</option>
<option value="102.2">102.2</option>
<option value="102.3">102.3</option>
<option value="102.4">102.4</option>
<option value="102.5">102.5</option>
<option value="102.6">102.6</option>
<option value="102.7">102.7</option>
<option value="102.8">102.8</option>
<option value="102.9">102.9</option>
<option value="103.0">103.0</option>
<option value="103.1">103.1</option>
<option value="103.2">103.2</option>
<option value="103.3">103.3</option>
<option value="103.4">103.4</option>
<option value="103.5">103.5</option>
<option value="103.6">103.6</option>
<option value="103.7">103.7</option>
<option value="103.8">103.8</option>
<option value="103.9">103.9</option>
				                  </select>
				                  <span class="err"><form:errors path="Physicalexam.temp"></form:errors>
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
				                  	<select name="pulse" class="40-250" id="inp_id"></select>
				                 <span class="err"><form:errors path="Physicalexam.pulse"></form:errors>
				                  
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
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Nourishment</td>
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
				                  	<input type="text" name="path"  class="input_txt" ></td>
				               
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
				                  <td class="input_txt" align="left"> <span id="edema">Edema </span><input type="text" name="parasedema" >
				                   <td class="input_txt" align="left"><span id="TriggerPoint">TriggerPoint </span> <input type="text" name="parastriggerpoint" ></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Trapezius</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	
				                   <select name="trapeziusrl" class="input_cmbbx1" id="inp_id">
						                    <option selected="selected" value="Right" >Right</option>
						                   
											<option value="Tonicity">Tonicity</option>
											<option value="Normal">Normal</option>
											
				                   		</select><span class="err"><form:errors path="Physicalexam.trapeziusrl"></form:errors>
				                  </td>
				                  
				                 	<td valign="top" align="left" class="input_txt">
				                  	
				                   <select name="trapeziusrl1" class="input_cmbbx1" id="inp_id">
						                    <option selected="selected" value="Left" >Left</option>
						                   
											<option value="Tonicity">Tonicity</option>
											<option value="Normal">Normal</option>
											
				                   		</select><span class="err"><form:errors path="Physicalexam.trapeziusrl1"></form:errors>
				                  </td>	                
				                  </tr>
				                  <tr class="row1">
				                  <td>SCM:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	
				                   <select name="scm" class="input_cmbbx1" id="inp_id">
						                    <option selected="selected" value="Right" >Right</option>
						                   
											<option value="Tonicity">Tonicity</option>
											<option value="Normal">Normal</option>
											
				                   		</select><span class="err"><form:errors path="Physicalexam.trapeziusrl"></form:errors>
				                  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	
				                   <select name="scm1" class="input_cmbbx1" id="inp_id">
						                    <option selected="selected" value="Left" >Left</option>
						                   
											<option value="Tonicity">Tonicity</option>
											<option value="Normal">Normal</option>
											
				                   		</select><span class="err"><form:errors path="Physicalexam.trapeziusrl"></form:errors>
				                  </td>
				                  
				                 
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
				               
				                  </tr>
				               <tr class="row1">
				               
				               <td valign="top" align="left" class="input_txt">Normal ROM </td>
				                  <td class="input_txt">Pain</td>
				                  <td class="input_txt">Spasm</td>
				                  <td class="input_txt">Stiff</td>
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>FLEX 60</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="flexpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="flexspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="flexstiff" /></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 75</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="extpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="extspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="extstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 45</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="rlfpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rlfspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rlfstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 45</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="llfpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="llfspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="llfstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 80</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="rrpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rrspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rrstiff" /></td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 80</td>
				                 
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
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="c5" ></td>
				                   			                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c5right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c5left" value="Left">Left</td>
				                  </tr>
				                <tr class="row1">
				                   <td>C-6:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="c6" ></td>
				                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c6right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c6left" value="Left">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>C-7:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="c7" ></td>
				                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c7right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c7left" value="Left">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>C-8:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="c8" ></td>
				                 
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c8right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c8left" value="Left">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>T-1:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="t1" ></td>
				                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="t1right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="t1left" value="Left">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>Other:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="other" ></td>
				                  
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
				                 <tr class="row1">
				               <td><b>Visual Disturbance:</b></td>
				               <td>Present:</td>
				               <td><select name="presentvisual">
				               <option selected="selected" value="R" >R</option>
											<option value="L">L</option>
											
				              <%--  <option value="R" <c:if test="${physical.presentvisual=='R'}">
<c:out value="selected"/></c:if>>R</option>
     <option value="L" <c:if test="${physical.presentvisual=='L'}">
<c:out value="selected"/></c:if>>L</option> --%>
						                    
											
											
											
				                   		</select></td>
				                   		<td><span class="err">*</span>If present, perform eye exam & auscultate carotid arteries</td>
				                   		<td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="presentrl" /></td>

				                   		
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
				                  <td valign="top" align="left" class="input_txt"> <input type="text" name="chestmeasurein" ></td>
				                 
				                  
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
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paratriggerpoint" value="Trigger Points">Trigger Points</td>
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
				               </tr>
				                  <tr class="row1">
				               <td valign="top" align="left" class="input_txt">Normal ROM </td>
				                  <td class="input_txt">Pain</td>
				                  <td class="input_txt">Spasm</td>
				                  <td class="input_txt">Stiff</td>
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>FLEX 40</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thoracicpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoracicspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoracicstiff" /></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 30</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thoextpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoextspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoextstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 30</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thorlfpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorlfspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorlfstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 30</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thollfpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thollfspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thollfstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 40</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thorrpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorrspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorrstiff" /></td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 40</td>
				                 
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
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thot1" ></td>
				                                    
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot1right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot1left" value="Left">Left</td>
				                  </tr>
				                <tr class="row1">
				                   <td>T-4:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thot4" ></td>
				                 
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot4right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot4left" value="Left">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>T-10:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thot10" ></td>
				                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot10right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot10left" value="Left">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>Other:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thoother" ></td>
				                  
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
				                  	<input type="radio" name="myotomes" value="Positive Beevors" class="input_txt" checked="true" onclick="toggle3('show3')">Positive Beevor's</td>
				                    <td><input type="checkbox" name="positiveruq" value="RUQ">RUQ</td>
				                    <td><input type="checkbox" name="positiveluq" value="LUQ">LUQ</td>
				                    <td><input type="checkbox" name="positiverlq" value="RLQ">RLQ</td>
				                    <td><input type="checkbox" name="positivellq" value="LLQ">LLQ</td>
				                  </tr>
				                  <tr class="row1">
				                   <td valign="top" align="left" class="input_txt">
				                   <input type="radio" name="myotomes1" value="Negative Beevors" class="input_txt"  onclick="toggle3('hide3')">Negative Beevor's</td>
				                    
				                    <td><input type="checkbox" name="negativeruq" value="RUQ">RUQ</td>
				                    <td><input type="checkbox" name="negativeluq" value="LUQ">LUQ</td>
				                    <td><input type="checkbox" name="negativerlq" value="RLQ">RLQ</td>
				                    <td><input type="checkbox" name="negativellq" value="LLQ">LLQ</td>
				                 </tr>
				                  </table>
				                 
				                   <table border="0">
				                     <tr class="row1">
				               
				                   		<td><span class="err">*</span>If present is a smoker and has difficulty breathing, perform cardio-respiratory exam</td>
				                   		<td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="patientsmoker" /></td>

				                   		
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
				                  <td valign="top" align="left" class="input_txt">
				                  	
				                   <select name="quadrl" class="input_cmbbx1" id="inp_id">
						                    <option selected="selected" value="Right" >Right</option>
						                   
											<option value="Tonicity">Tonicity</option>
											<option value="Normal">Normal</option>
											
				                   		</select><span class="err"><form:errors path="Physicalexam.quadrl"></form:errors>
				                  </td>
				                  
				                 	<td valign="top" align="left" class="input_txt">
				                  	
				                   <select name="quadrl1" class="input_cmbbx1" id="inp_id">
						                    <option selected="selected" value="Left" >Left</option>
						                   
											<option value="Tonicity">Tonicity</option>
											<option value="Normal">Normal</option>
											
				                   		</select><span class="err"><form:errors path="Physicalexam.quadrl"></form:errors>
				                  
				                  </tr>
				                  <tr class="row1">
				                  <td>Hamstring:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	
				                   <select name="hamstringrl" class="input_cmbbx1" id="inp_id">
						                    <option selected="selected" value="Right" >Right</option>
						                   
											<option value="Tonicity">Tonicity</option>
											<option value="Normal">Normal</option>
											
				                   		</select><span class="err"><form:errors path="Physicalexam.hamstringrl"></form:errors>
				                  </td>
				                  
				                 	<td valign="top" align="left" class="input_txt">
				                  	
				                   <select name="hamstringrl1" class="input_cmbbx1" id="inp_id">
						                    <option selected="selected" value="Left" >Left</option>
						                   
											<option value="Tonicity">Tonicity</option>
											<option value="Normal">Normal</option>
											
				                   		</select><span class="err"><form:errors path="Physicalexam.hamstringrl1"></form:errors>
				                  
				                 
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
				                  <tr class="row1">
				              
				                   		<td>*If positive tests, perform Abdominal Exam</td>
				                   		

				                   		
				                  </tr>
				                  </table>
				                   <table border="0">
				               <tr class="row1">
				               <td><b>RANGE OF MOTION:(Include Degrees)</b></td>
				               </tr>
				                
				                <tr class="row1">
				                 <td valign="top" align="left" class="input_txt"><b>Normal ROM </b></td>
				                  <td class="input_txt">Pain</td>
				                  <td class="input_txt">Spasm</td>
				                  <td class="input_txt">Stiff</td>
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>FLEX 80</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumflexpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumflexspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumflexstiff" /></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 30</td>
				                 
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumextpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumextspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumextstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 25</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumrlfpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrlfspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrlfstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 25</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumllfpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumllfspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumllfstiff" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 30</td>
				                
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumrrpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrrspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrrstiff" /></td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 30</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumlrpain" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumlrspasm" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumlrstiff" /></td>
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
				                   <td>L-1:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lu1" ></td>
				                   
				                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu1right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu1left" value="Left">Left</td>
				                  </tr>
				                   <tr class="row1">
				                   <td>L-2:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lu2" ></td>
				                   
				                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu2right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu2left" value="Left">Left</td>
				                  </tr>
				                   <tr class="row1">
				                   <td>L-3:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lu3" ></td>
				                   
				                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu3right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu3left" value="Left">Left</td>
				                  </tr>
				                   <tr class="row1">
				                   <td>L-4:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lu4" ></td>
				                  
				                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu4right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu4left" value="Left">Left</td>
				                  </tr>
				                   <tr class="row1">
				                   <td>L-5:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lu5" ></td>
				                  
				                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu5right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu5left" value="Left">Left</td>
				                  </tr>
				                 <tr class="row1">
				                   <td>S-1:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lu6" ></td>
				                  
				                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu6right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu6left" value="Left">Left</td>
				                  </tr>
				                   <tr class="row1">
				                   <td>S-2:</td>
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lu7" ></td>
				                   
				                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu7right" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lu7left" value="Left">Left</td>
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
				                  
				                  <!-- <td valign="top" align="left" class="input_txt"><input type="radio" name="babinskipositive" value="Positive" class="input_txt" checked="true" >Positive&nbsp;&nbsp;&nbsp;<input type="radio" name="babinskinegative" value="Negative" class="input_txt" >Negative&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt"><input type="radio" name="babinskiright" value="Positive" class="input_txt" checked="true" >Positive&nbsp;&nbsp;&nbsp;<input type="radio" name="babinskileft" value="Negative" class="input_txt" >Negative&nbsp;&nbsp;&nbsp;</td> -->
				                  </tr>
				                  
				                 <!--  </table>
				                   <table border="0">
				                     <tr class="row1">
				               
				                   		<td><span class="err">*</span>If present, perform eye exam & auscultate carotid arteries</td>
				                   		<td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="performeye" /></td>

				                   		
				                  </tr>
				                   </table> -->
				                  <table align="right">
				                  <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
				                   <td>&nbsp;&nbsp;</td>
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
				                  </c:when>
				                  <c:otherwise>

<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
	              <h2 align="center"> Physical exam<br></b></h2>
	       </div></div> 
	       
	        <div class="contentbox">
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
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="sign" value="${physical.sign}" /><span class="err"><form:errors path="Physicalexam.sign"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Name :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="name" value="${physical.name}"/><span class="err"><form:errors path="Physicalexam.name"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Email:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="id" value="${physical.id}"/><span class="err"><form:errors path="Physicalexam.id"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="date" value="${physical.date}" /><span class="err"><form:errors path="Physicalexam.date"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Vitals-Age:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  <select name="age" class="1-100" id="inp_id" value="${physical.age}">
				                  		</select>
				                  	<span class="err"><form:errors path="Physicalexam.age"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Sex:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  <select name="sex" class="input_cmbbx1" id="inp_id">
						                  <option value="Male" <c:if test="${physical.sex=='Male'}">
<c:out value="selected"/></c:if>>Male</option> 
<option value="Female" <c:if test="${physical.sex=='Female'}">
<c:out value="selected"/></c:if>>Female</option>
               		</select><span class="err">
				                  	<form:errors path="Physicalexam.sex"></form:errors></span>
				                  </td>
				                  	
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Height:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	 	
				                  <select name="height" class="input_cmbbx1" id="inp_id">
						          
						                  <option value="1" <c:if test="${physical.height=='1'}">
<c:out value="selected"/></c:if>>1</option> 
 <option value="2" <c:if test="${physical.height=='2'}">
<c:out value="selected"/></c:if>>2</option> 
 <option value="3" <c:if test="${physical.height=='3'}">
<c:out value="selected"/></c:if>>3</option> 
 <option value="4" <c:if test="${physical.height=='4'}">
<c:out value="selected"/></c:if>>4</option> 
 <option value="5" <c:if test="${physical.height=='5'}">
<c:out value="selected"/></c:if>>5</option>
 <option value="6" <c:if test="${physical.height=='6'}">
<c:out value="selected"/></c:if>>6</option>
 <option value="7" <c:if test="${physical.height=='7'}">
<c:out value="selected"/></c:if>>7</option>   
 <option value="8" <c:if test="${physical.height=='8'}">
<c:out value="selected"/></c:if>>8</option>
 <option value="9" <c:if test="${physical.height=='9'}">
<c:out value="selected"/></c:if>>9</option> 
 <option value="10" <c:if test="${physical.height=='10'}">
<c:out value="selected"/></c:if>>10</option>  
						                    
											
											
											
											
				                   		</select><span class="err"><form:errors path="Physicalexam.height"></form:errors>
				                  	 <select name="height1" class="input_cmbbx1" id="height1">
				                   		<option value="5.0" <c:if test="${physical.height1=='5.0'}">
<c:out value="selected"/></c:if>>5.0</option> 
<option value="5.1" <c:if test="${physical.height1=='5.1'}">
<c:out value="selected"/></c:if>>5.1</option> 
<option value="5.2" <c:if test="${physical.height1=='5.2'}">
<c:out value="selected"/></c:if>>5.2</option> 
<option value="5.3" <c:if test="${physical.height1=='5.3'}">
<c:out value="selected"/></c:if>>5.3</option> 
<option value="5.4" <c:if test="${physical.height1=='5.4'}">
<c:out value="selected"/></c:if>>5.4</option> 
<option value="5.5" <c:if test="${physical.height1=='5.5'}">
<c:out value="selected"/></c:if>>5.5</option> 
<option value="5.6" <c:if test="${physical.height1=='5.6'}">
<c:out value="selected"/></c:if>>5.6</option> 
<option value="5.7" <c:if test="${physical.height1=='5.7'}">
<c:out value="selected"/></c:if>>5.7</option> 
<option value="5.8" <c:if test="${physical.height1=='5.8'}">
<c:out value="selected"/></c:if>>5.8</option> 
<option value="5.9" <c:if test="${physical.height1=='5.9'}">
<c:out value="selected"/></c:if>>5.9</option> 
<option value="6.0" <c:if test="${physical.height1=='6.0'}">
<c:out value="selected"/></c:if>>6.0</option> 
<option value="6.1" <c:if test="${physical.height1=='6.1'}">
<c:out value="selected"/></c:if>>6.1</option> 
<option value="6.2" <c:if test="${physical.height1=='6.2'}">
<c:out value="selected"/></c:if>>6.2</option> 
<option value="6.3" <c:if test="${physical.height1=='6.3'}">
<c:out value="selected"/></c:if>>6.3</option> 
<option value="6.4" <c:if test="${physical.height1=='6.4'}">
<c:out value="selected"/></c:if>>6.4</option> 
<option value="6.5" <c:if test="${physical.height1=='6.5'}">
<c:out value="selected"/></c:if>>6.5</option> 
<option value="6.6" <c:if test="${physical.height1=='6.6'}">
<c:out value="selected"/></c:if>>6.6</option> 
<option value="6.7" <c:if test="${physical.height1=='6.7'}">
<c:out value="selected"/></c:if>>6.7</option> 
<option value="6.8" <c:if test="${physical.height1=='6.8'}">
<c:out value="selected"/></c:if>>6.8</option> 
<option value="6.9" <c:if test="${physical.height1=='6.9'}">
<c:out value="selected"/></c:if>>6.9</option> 
<option value="7.0" <c:if test="${physical.height1=='7.0'}">
<c:out value="selected"/></c:if>>7.0</option> 
<option value="7.1" <c:if test="${physical.height1=='7.1'}">
<c:out value="selected"/></c:if>>7.1</option>
<option value="7.2" <c:if test="${physical.height1=='7.2'}">
<c:out value="selected"/></c:if>>7.2</option>
<option value="7.3" <c:if test="${physical.height1=='7.3'}">
<c:out value="selected"/></c:if>>7.3</option>
<option value="7.4" <c:if test="${physical.height1=='7.4'}">
<c:out value="selected"/></c:if>>7.4</option>
<option value="7.5" <c:if test="${physical.height1=='7.5'}">
<c:out value="selected"/></c:if>>7.5</option>
<option value="7.6" <c:if test="${physical.height1=='7.6'}">
<c:out value="selected"/></c:if>>7.6</option>
<option value="7.7" <c:if test="${physical.height1=='7.7'}">
<c:out value="selected"/></c:if>>7.7</option>
<option value="7.8" <c:if test="${physical.height1=='7.8'}">
<c:out value="selected"/></c:if>>7.8</option>
<option value="7.9" <c:if test="${physical.height1=='7.9'}">
<c:out value="selected"/></c:if>>7.9</option>

<option value="8.0" <c:if test="${physical.height1=='8.0'}">
<c:out value="selected"/></c:if>>8.0</option>
<option value="8.1" <c:if test="${physical.height1=='8.1'}">
<c:out value="selected"/></c:if>>8.1</option>
<option value="8.2" <c:if test="${physical.height1=='8.2'}">
<c:out value="selected"/></c:if>>8.2</option>
<option value="8.3" <c:if test="${physical.height1=='8.3'}">
<c:out value="selected"/></c:if>>8.3</option>
<option value="8.4" <c:if test="${physical.height1=='8.4'}">
<c:out value="selected"/></c:if>>8.4</option>
<option value="8.5" <c:if test="${physical.height1=='8.5'}">
<c:out value="selected"/></c:if>>8.5</option>
<option value="8.6" <c:if test="${physical.height1=='8.6'}">
<c:out value="selected"/></c:if>>8.6</option>
<option value="8.7" <c:if test="${physical.height1=='8.7'}">
<c:out value="selected"/></c:if>>8.7</option>
<option value="8.8" <c:if test="${physical.height1=='8.8'}">
<c:out value="selected"/></c:if>>8.8</option>
<option value="8.9" <c:if test="${physical.height1=='8.9'}">
<c:out value="selected"/></c:if>>8.0</option>
<option value="9.0" <c:if test="${physical.height1=='9.0'}">
<c:out value="selected"/></c:if>>9.0</option>
<option value="9.1" <c:if test="${physical.height1=='9.1'}">
<c:out value="selected"/></c:if>>9.1</option>
<option value="9.2" <c:if test="${physical.height1=='9.2'}">
<c:out value="selected"/></c:if>>9.2</option>
<option value="9.3" <c:if test="${physical.height1=='9.3'}">
<c:out value="selected"/></c:if>>9.3</option>
<option value="9.4" <c:if test="${physical.height1=='9.4'}">
<c:out value="selected"/></c:if>>9.4</option>
<option value="9.5" <c:if test="${physical.height1=='9.5'}">
<c:out value="selected"/></c:if>>9.5</option>
<option value="9.6" <c:if test="${physical.height1=='9.6'}">
<c:out value="selected"/></c:if>>9.6</option>
<option value="9.7" <c:if test="${physical.height1=='9.7'}">
<c:out value="selected"/></c:if>>9.7</option>
<option value="9.8" <c:if test="${physical.height1=='9.8'}">
<c:out value="selected"/></c:if>>9.8</option>
<option value="9.9" <c:if test="${physical.height1=='9.9'}">
<c:out value="selected"/></c:if>>9.9</option>
<option value="10.0" <c:if test="${physical.height1=='10.0'}">
<c:out value="selected"/></c:if>>10.0</option>
<option value="10.1" <c:if test="${physical.height1=='10.1'}">
<c:out value="selected"/></c:if>>10.1</option>
<option value="10.2" <c:if test="${physical.height1=='10.2'}">
<c:out value="selected"/></c:if>>10.2</option>
<option value="10.3" <c:if test="${physical.height1=='10.3'}">
<c:out value="selected"/></c:if>>10.3</option>
<option value="10.4" <c:if test="${physical.height1=='10.4'}">
<c:out value="selected"/></c:if>>10.4</option>
<option value="10.5" <c:if test="${physical.height1=='10.5'}">
<c:out value="selected"/></c:if>>10.5</option>
<option value="10.6" <c:if test="${physical.height1=='10.6'}">
<c:out value="selected"/></c:if>>10.6</option>
<option value="10.7" <c:if test="${physical.height1=='10.7'}">
<c:out value="selected"/></c:if>>10.7</option>
<option value="10.8" <c:if test="${physical.height1=='10.8'}">
<c:out value="selected"/></c:if>>10.8</option>
<option value="10.9" <c:if test="${physical.height1=='10.9'}">
<c:out value="selected"/></c:if>>10.9</option>
<option value="11.0" <c:if test="${physical.height1=='11.0'}">
<c:out value="selected"/></c:if>>11.0</option>
<option value="11.1" <c:if test="${physical.height1=='11.1'}">
<c:out value="selected"/></c:if>>11.1</option>
<option value="11.2" <c:if test="${physical.height1=='11.2'}">
<c:out value="selected"/></c:if>>11.2</option>
<option value="11.3" <c:if test="${physical.height1=='11.3'}">
<c:out value="selected"/></c:if>>11.3</option>
<option value="11.4" <c:if test="${physical.height1=='11.4'}">
<c:out value="selected"/></c:if>>11.4</option>
<option value="11.5" <c:if test="${physical.height1=='11.5'}">
<c:out value="selected"/></c:if>>11.5</option>
				                   		 
				                   		  </select>
				                 
				                  	
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Weight:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  <select name="weight" class="1-500" id="inp_id" value="${physical.weight}">
				                  		</select>
				                  	<span class="err"><form:errors path="Physicalexam.weight"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Temp:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  <select name="temp" class="input_cmbbx1" id="tempid">
				                  <option value="95.0" <c:if test="${physical.temp=='95.0'}">
<c:out value="selected"/></c:if>>95.0</option> 
<option value="95.0" <c:if test="${physical.temp=='95.0'}">
<c:out value="selected"/></c:if>>95.0</option> 
<option value="95.1" <c:if test="${physical.temp=='95.1'}">
<c:out value="selected"/></c:if>>95.1</option> 
<option value="95.2" <c:if test="${physical.temp=='95.2'}">
<c:out value="selected"/></c:if>>95.2</option> 
<option value="95.3" <c:if test="${physical.temp=='95.3'}">
<c:out value="selected"/></c:if>>95.3</option> 
<option value="95.4" <c:if test="${physical.temp=='95.4'}">
<c:out value="selected"/></c:if>>95.4</option> 
<option value="95.5" <c:if test="${physical.temp=='95.5'}">
<c:out value="selected"/></c:if>>95.5</option> 
<option value="95.6" <c:if test="${physical.temp=='95.6'}">
<c:out value="selected"/></c:if>>95.6</option> 
<option value="95.7" <c:if test="${physical.temp=='95.7'}">
<c:out value="selected"/></c:if>>95.7</option> 
<option value="95.8" <c:if test="${physical.temp=='95.8'}">
<c:out value="selected"/></c:if>>95.8</option> 
<option value="95.9" <c:if test="${physical.temp=='95.9'}">
<c:out value="selected"/></c:if>>95.9</option> 
<option value="96.0" <c:if test="${physical.temp=='96.0'}">
<c:out value="selected"/></c:if>>96.0</option> 
<option value="96.1" <c:if test="${physical.temp=='96.1'}">
<c:out value="selected"/></c:if>>96.1</option> 
<option value="96.2" <c:if test="${physical.temp=='96.2'}">
<c:out value="selected"/></c:if>>96.2</option> 
<option value="96.3" <c:if test="${physical.temp=='96.3'}">
<c:out value="selected"/></c:if>>96.3</option> 
<option value="96.4" <c:if test="${physical.temp=='96.4'}">
<c:out value="selected"/></c:if>>96.4</option> 
<option value="96.5" <c:if test="${physical.temp=='96.5'}">
<c:out value="selected"/></c:if>>96.5</option> 
<option value="96.6" <c:if test="${physical.temp=='96.6'}">
<c:out value="selected"/></c:if>>96.6</option> 
<option value="96.7" <c:if test="${physical.temp=='96.7'}">
<c:out value="selected"/></c:if>>96.7</option> 
<option value="96.8" <c:if test="${physical.temp=='96.8'}">
<c:out value="selected"/></c:if>>96.8</option> 
<option value="96.9" <c:if test="${physical.temp=='96.9'}">
<c:out value="selected"/></c:if>>96.9</option> 
<option value="97.0" <c:if test="${physical.temp=='97.0'}">
<c:out value="selected"/></c:if>>97.0</option> 
<option value="97.1" <c:if test="${physical.temp=='97.1'}">
<c:out value="selected"/></c:if>>97.1</option> 
<option value="97.2" <c:if test="${physical.temp=='97.2'}">
<c:out value="selected"/></c:if>>97.2</option> 
<option value="97.3" <c:if test="${physical.temp=='97.3'}">
<c:out value="selected"/></c:if>>97.3</option> 
<option value="97.4" <c:if test="${physical.temp=='97.4'}">
<c:out value="selected"/></c:if>>97.4</option> 
<option value="97.5" <c:if test="${physical.temp=='97.5'}">
<c:out value="selected"/></c:if>>97.5</option> 
<option value="97.6" <c:if test="${physical.temp=='97.6'}">
<c:out value="selected"/></c:if>>97.6</option> 
<option value="97.7" <c:if test="${physical.temp=='97.7'}">
<c:out value="selected"/></c:if>>97.7</option> 
<option value="97.8" <c:if test="${physical.temp=='97.8'}">
<c:out value="selected"/></c:if>>97.8</option> 
<option value="97.9" <c:if test="${physical.temp=='97.9'}">
<c:out value="selected"/></c:if>>97.9</option> 

<option value="98.0" <c:if test="${physical.temp=='98.0'}">
<c:out value="selected"/></c:if>>98.0</option> 
<option value="98.1" <c:if test="${physical.temp=='98.1'}">
<c:out value="selected"/></c:if>>98.1</option> 
<option value="98.2" <c:if test="${physical.temp=='98.2'}">
<c:out value="selected"/></c:if>>98.2</option> 
<option value="98.3" <c:if test="${physical.temp=='98.3'}">
<c:out value="selected"/></c:if>>98.3</option> 
<option value="98.4" <c:if test="${physical.temp=='98.4'}">
<c:out value="selected"/></c:if>>98.4</option> 
<option value="98.5" <c:if test="${physical.temp=='98.5'}">
<c:out value="selected"/></c:if>>98.5</option> 
<option value="98.6" <c:if test="${physical.temp=='98.6'}">
<c:out value="selected"/></c:if>>98.6</option> 
<option value="98.7" <c:if test="${physical.temp=='98.7'}">
<c:out value="selected"/></c:if>>98.7</option> 
<option value="98.8" <c:if test="${physical.temp=='98.8'}">
<c:out value="selected"/></c:if>>98.8</option>
<option value="98.9" <c:if test="${physical.temp=='98.9'}">
<c:out value="selected"/></c:if>>98.9</option> 
<option value="99.0" <c:if test="${physical.temp=='99.0'}">
<c:out value="selected"/></c:if>>99.0</option>  
<option value="99.1" <c:if test="${physical.temp=='99.1'}">
<c:out value="selected"/></c:if>>99.1</option>  
<option value="99.2" <c:if test="${physical.temp=='99.2'}">
<c:out value="selected"/></c:if>>99.2</option>  
<option value="99.3" <c:if test="${physical.temp=='99.3'}">
<c:out value="selected"/></c:if>>99.3</option>  
<option value="99.4" <c:if test="${physical.temp=='99.4'}">
<c:out value="selected"/></c:if>>99.4</option>  
<option value="99.5" <c:if test="${physical.temp=='99.5'}">
<c:out value="selected"/></c:if>>99.5</option>  
<option value="99.6" <c:if test="${physical.temp=='99.6'}">
<c:out value="selected"/></c:if>>99.6</option>  
<option value="99.7" <c:if test="${physical.temp=='99.7'}">
<c:out value="selected"/></c:if>>99.7</option>  
<option value="99.8" <c:if test="${physical.temp=='99.8'}">
<c:out value="selected"/></c:if>>99.8</option>  
<option value="99.9" <c:if test="${physical.temp=='99.9'}">
<c:out value="selected"/></c:if>>99.9</option> 
<option value="100.0" <c:if test="${physical.temp=='100.0'}">
<c:out value="selected"/></c:if>>100.0</option>  
<option value="100.1" <c:if test="${physical.temp=='100.1'}">
<c:out value="selected"/></c:if>>100.1</option>  
<option value="100.2" <c:if test="${physical.temp=='100.2'}">
<c:out value="selected"/></c:if>>100.2</option>  
<option value="100.3" <c:if test="${physical.temp=='100.3'}">
<c:out value="selected"/></c:if>>100.3</option>  
<option value="100.4" <c:if test="${physical.temp=='100.4'}">
<c:out value="selected"/></c:if>>100.4</option>  
<option value="100.5" <c:if test="${physical.temp=='100.5'}">
<c:out value="selected"/></c:if>>100.5</option>  
<option value="100.6" <c:if test="${physical.temp=='100.6'}">
<c:out value="selected"/></c:if>>100.6</option>  
<option value="100.7" <c:if test="${physical.temp=='100.7'}">
<c:out value="selected"/></c:if>>100.7</option>  
<option value="100.8" <c:if test="${physical.temp=='100.8'}">
<c:out value="selected"/></c:if>>100.8</option>  
<option value="100.9" <c:if test="${physical.temp=='100.9'}">
<c:out value="selected"/></c:if>>100.9</option>  
<option value="101.0" <c:if test="${physical.temp=='101.0'}">
<c:out value="selected"/></c:if>>101.0</option>  
<option value="101.1" <c:if test="${physical.temp=='101.1'}">
<c:out value="selected"/></c:if>>101.1</option>  
<option value="101.2" <c:if test="${physical.temp=='101.2'}">
<c:out value="selected"/></c:if>>101.2</option>  
<option value="101.3" <c:if test="${physical.temp=='101.3'}">
<c:out value="selected"/></c:if>>101.3</option>  
<option value="101.4" <c:if test="${physical.temp=='101.4'}">
<c:out value="selected"/></c:if>>101.4</option>  
<option value="101.5" <c:if test="${physical.temp=='101.5'}">
<c:out value="selected"/></c:if>>101.5</option>  
<option value="101.6" <c:if test="${physical.temp=='101.6'}">
<c:out value="selected"/></c:if>>101.6</option>  
<option value="101.7" <c:if test="${physical.temp=='101.7'}">
<c:out value="selected"/></c:if>>101.7</option>  
<option value="101.8" <c:if test="${physical.temp=='101.8'}">
<c:out value="selected"/></c:if>>101.8</option>  
<option value="101.9" <c:if test="${physical.temp=='101.9'}">
<c:out value="selected"/></c:if>>101.9</option>  
<option value="102.0" <c:if test="${physical.temp=='102.0'}">
<c:out value="selected"/></c:if>>102.0</option>  
<option value="102.1" <c:if test="${physical.temp=='102.1'}">
<c:out value="selected"/></c:if>>102.1</option>  
<option value="102.2" <c:if test="${physical.temp=='102.2'}">
<c:out value="selected"/></c:if>>102.2</option> 
<option value="102.3" <c:if test="${physical.temp=='102.3'}">
<c:out value="selected"/></c:if>>102.3</option> 
<option value="102.4" <c:if test="${physical.temp=='102.4'}">
<c:out value="selected"/></c:if>>102.4</option> 
<option value="102.5" <c:if test="${physical.temp=='102.5'}">
<c:out value="selected"/></c:if>>102.5</option> 
<option value="102.6" <c:if test="${physical.temp=='102.6'}">
<c:out value="selected"/></c:if>>102.6</option> 
<option value="102.7" <c:if test="${physical.temp=='102.7'}">
<c:out value="selected"/></c:if>>102.7</option> 
<option value="102.8" <c:if test="${physical.temp=='102.8'}">
<c:out value="selected"/></c:if>>102.8</option> 
<option value="102.9" <c:if test="${physical.temp=='102.9'}">
<c:out value="selected"/></c:if>>102.3</option> 
<option value="103.0" <c:if test="${physical.temp=='103.0'}">
<c:out value="selected"/></c:if>>103.0</option> 
<option value="103.1" <c:if test="${physical.temp=='103.1'}">
<c:out value="selected"/></c:if>>103.1</option> 
<option value="103.2" <c:if test="${physical.temp=='103.2'}">
<c:out value="selected"/></c:if>>103.2</option> 
<option value="103.3" <c:if test="${physical.temp=='103.3'}">
<c:out value="selected"/></c:if>>103.3</option> 
<option value="103.4" <c:if test="${physical.temp=='103.4'}">
<c:out value="selected"/></c:if>>103.4</option> 
<option value="103.5" <c:if test="${physical.temp=='103.5'}">
<c:out value="selected"/></c:if>>103.5</option> 
<option value="103.6" <c:if test="${physical.temp=='103.6'}">
<c:out value="selected"/></c:if>>103.6</option> 
<option value="103.7" <c:if test="${physical.temp=='103.7'}">
<c:out value="selected"/></c:if>>103.7</option> 
<option value="103.8" <c:if test="${physical.temp=='103.8'}">
<c:out value="selected"/></c:if>>103.8</option>
<option value="103.9" <c:if test="${physical.temp=='103.9'}">
<c:out value="selected"/></c:if>>103.9</option>  


				                  
				                  
				                  	</select><span class="err"><form:errors path="Physicalexam.temp"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>BP:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="bp" value="${physical.bp}"/><span class="err"><form:errors path="Physicalexam.bp"></form:errors></span>
				                  </td>
				                </tr>
				                </table>
				                <td align="left" valign="top"> 
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Pulse:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  <select name="pulse" class="40-250" id="inp_id" value="${physical.pulse}"></select>
				                 <span class="err"><form:errors path="Physicalexam.pulse"></form:errors></span>
				                  
				                  
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
						          
				                   		</select><span class="err"><form:errors path="Physicalexam.appearance"></form:errors></span>
				                   	</td> </tr>  
				                   	 <tr class="row2">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Nourishment:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="weight1" class="input_cmbbx1">
				                  		<option value="un" <c:if test="${physical.weight1=='un'}"><c:out value="selected"/></c:if>>UN</option>
				                  		<option value="n" <c:if test="${physical.weight1=='n'}"><c:out value="selected"/></c:if>>N</option>
				                  		<option value="wn" <c:if test="${physical.weight1=='wn'}"><c:out value="selected"/></c:if>>WN</option>
						                    
				                   		</select><span class="err"><form:errors path="Physicalexam.weight1"></form:errors></span>
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
				                  		
				                   		</select><span class="err"><form:errors path="Physicalexam.gait"></form:errors></span>
				                   		
				                   	</td> </tr>
				                   	 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>HEAD,EENT:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="head" value="Normal" class="input_txt"  <c:if test="${physical.head=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="head" value="Abnormal" class="input_txt"  <c:if test="${physical.head=='Abnormal'}"><c:out value="checked=checked"/></c:if>>Abnormal&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Physicalexam.head"></form:errors></span></td>
				                </tr>
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Visceral Pathologies:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  <input type="text" class="input_txt"  name="path" value="${physical.path}"/>
				                  	
				                  	<span class="err"><form:errors path="Physicalexam.path"></form:errors></span></td>
				                 
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Posture:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="posture" value="Good" class="input_txt"  <c:if test="${physical.posture=='Good'}"><c:out value="checked=checked"/></c:if>>Good&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="posture" value="Poor" class="input_txt"  <c:if test="${physical.posture=='Poor'}"><c:out value="checked=checked"/></c:if>>Poor&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Physicalexam.posture"></form:errors></span></td>
				                </tr>
				                   	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Romberg's Sign:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="romber" value="Present" class="input_txt"  <c:if test="${physical.romber=='Present'}"><c:out value="checked=checked"/></c:if>>Present&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="romber" value="NotPresent" class="input_txt"  <c:if test="${physical.romber=='NotPresent'}"><c:out value="checked=checked"/></c:if>>NotPresent&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Physicalexam.romber"></form:errors></span></td>
				                </tr>
				                 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>CN Exam:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="exam" value="Normal" class="input_txt"  <c:if test="${physical.exam=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="exam" value="DNP" class="input_txt"  <c:if test="${physical.exam=='DNP'}"><c:out value="checked=checked"/></c:if>>DNP&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="Physicalexam.exam"></form:errors></span></td>
				                </tr>  	
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Abnormal Findings:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="abnormal" value="${physical.abnormal}" /><span class="err"><form:errors path="Physicalexam.abnormal"></form:errors></span>
				                  </td>
				                </tr>
				               
				              
				                </table>
				               
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="headtiltright" value="Right" <c:if test="${physical.headtiltright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="headtiltleft" value="Left" <c:if test="${physical.headtiltleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="headtiltnormal" value="Normal" <c:if test="${physical.headtiltnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Rotation:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="rotationright" value="Right" <c:if test="${physical.rotationright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="rotationleft" value="Left"  <c:if test="${physical.rotationleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="rotationnormal" value="Normal" <c:if test="${physical.rotationnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>TMJ Syndrome:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tmjright" value="Right" <c:if test="${physical.tmjright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tmjleft" value="Left" <c:if test="${physical.tmjleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="tmjnormal" value="Normal" <c:if test="${physical.tmjnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>High Shoulder:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="highright" value="Right" <c:if test="${physical.highright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="highleft" value="Left" <c:if test="${physical.highleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="highnormal" value="Normal" <c:if test="${physical.highnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Lordosis:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lordhyper" value="Hyper" <c:if test="${physical.lordhyper=='Hyper'}"><c:out value="checked=checked"/></c:if>>Hyper</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lordhypo" value="Hypo" <c:if test="${physical.lordhypo=='Hypo'}"><c:out value="checked=checked"/></c:if>>Hypo</td>
				                  <td class="input_txt"><input type="checkbox" name="lordnormal" value="Normal" <c:if test="${physical.lordnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                
				                </table>
				                <table border="0">
				               <tr class="row1">
				               <td><b>PALPATION:</b></td>
				               
				                  </tr>
				                <tr class="row1">
				                  <td>Lymph Nodes:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lymphedema" value="Lymphedema" <c:if test="${physical.lymphedema=='Lymphedema'}"><c:out value="checked=checked"/></c:if>>Lymphedema</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lymphnormal" value="Normal" <c:if test="${physical.lymphnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                  </tr>
				                   <tr class="row1">
				                  <td>Paraspinal:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="paraspain" value="Pain" <c:if test="${physical.paraspain=='Pain'}"><c:out value="checked=checked"/></c:if>>Pain</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="parasspasm" value="Spasm" <c:if test="${physical.parasspasm=='Spasm'}"><c:out value="checked=checked"/></c:if>>Spasm</td>
				                  <td class="input_txt" align="left"> 
				                  <input type="text" class="input_txtbx1"  name="parasedema" value="${physical.parasedema}"/>
				                 </td>
				                   <td class="input_txt" align="left"> <input type="text" class="input_txtbx1" name="parastriggerpoint" value="${physical.parastriggerpoint}"></td>
				                  
				                  </tr>
				                  <tr class="row1">
				                  <td>Trapezius</td>
				                  
				                  <td valign="top" align="left" class="input_txt">
				                  <select name="trapeziusrl" class="input_cmbbx1">
				                  <option value="Right" <c:if test="${physical.trapeziusrl=='Right'}"><c:out value="selected"/></c:if>>Right</option>
				                  		<option value="Tonicity" <c:if test="${physical.trapeziusrl=='Tonicity'}"><c:out value="selected"/></c:if>>Tonicity</option>
				                  		<option value="Normal" <c:if test="${physical.trapeziusrl=='Normal'}"><c:out value="selected"/></c:if>>Normal</option>
				                  		
				                  		
				                   		</select>
				                  </td>
				                 <td valign="top" align="left" class="input_txt">
				                  <select name="trapeziusrl1" class="input_cmbbx1">
				                  <option value="Left" <c:if test="${physical.trapeziusrl1=='Left'}"><c:out value="selected"/></c:if>>Left</option>
				                  		<option value="Tonicity" <c:if test="${physical.trapeziusrl1=='Tonicity'}"><c:out value="selected"/></c:if>>Tonicity</option>
				                  		<option value="Normal" <c:if test="${physical.trapeziusrl1=='Normal'}"><c:out value="selected"/></c:if>>Normal</option>
				                  		
				                  		
				                   		</select>
				                  </td>
				                  </tr>
				                  
				                  <tr class="row1">
				                  <td>SCM:</td>
				                   <td valign="top" align="left" class="input_txt">
				                  <select name="scm" class="input_cmbbx1">
				                  <option value="Right" <c:if test="${physical.scm=='Right'}"><c:out value="selected"/></c:if>>Right</option>
				                  		<option value="Tonicity" <c:if test="${physical.scm=='Tonicity'}"><c:out value="selected"/></c:if>>Tonicity</option>
				                  		<option value="Normal" <c:if test="${physical.scm=='Normal'}"><c:out value="selected"/></c:if>>Normal</option>
				                  		
				                  		
				                   		</select>
				                  </td>
				                 <td valign="top" align="left" class="input_txt">
				                  <select name="scm1" class="input_cmbbx1">
				                  <option value="Left" <c:if test="${physical.scm1=='Left'}"><c:out value="selected"/></c:if>>Left</option>
				                  		<option value="Tonicity" <c:if test="${physical.scm1=='Tonicity'}"><c:out value="selected"/></c:if>>Tonicity</option>
				                  		<option value="Normal" <c:if test="${physical.scm1=='Normal'}"><c:out value="selected"/></c:if>>Normal</option>
				                  		
				                  		
				                   		</select>
				                  </td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Vertebrae:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="vertebraefix" value="Fixations" <c:if test="${physical.vertebraefix=='Fixations'}"><c:out value="checked=checked"/></c:if>>Fixations</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="vertebraenofix" value="No_fixations" <c:if test="${physical.vertebraenofix=='No_fixations'}"><c:out value="checked=checked"/></c:if>>No Fixations</td>
				                  </tr>
				                  </table>
				               <table border="0">
				               <tr class="row1">
				               <td><b>RANGE OF MOTION:(Include Degrees)</b></td>
				              </tr>
				                <tr class="row1">
				               
				               <td valign="top" align="left" class="input_txt">Normal ROM </td>
				              
				               
				                  <td class="input_txt">Pain</td>
				                  <td class="input_txt">Spasm</td>
				                  <td class="input_txt">Stiff</td>
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>FLEX 60:</td>
				                 
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="flexpain" value="${physical.flexpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="flexspasm" value="${physical.flexspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="flexstiff" value="${physical.flexstiff }"/></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 75:</td>
				                 
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="extpain" value="${physical.extpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="extspasm" value="${physical.extspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="extstiff" value="${physical.extstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 45:</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="rlfpain" value="${physical.rlfpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rlfspasm" value="${physical.rlfspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rlfstiff" value="${physical.rlfstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 45:</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="llfpain" value="${physical.llfpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="llfspasm" value="${physical.llfspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="llfstiff" value="${physical.llfstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 80:</td>
				                 
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="rrpain" value=${physical.rrpain }></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rrspasm" value=${physical.rrspasm }></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rrstiff" value=${physical.rrstiff }></td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 80:</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lrpain" value="${physical.lrpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lrspasm" value="${physical.lrspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lrstiff" value="${physical.lrstiff}"/></td>
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
				                   <td class="input_txt" align="left"> <input type="checkbox" name="c5"  <c:if test="${physical.c5==''}"><c:out value="checked=checked"/></c:if>></td>
				                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c5right" value="Right" <c:if test="${physical.c5right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c5left" value="Left" <c:if test="${physical.c5left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                <tr class="row1">
				                   <td>C-6:</td>
				                   <td class="input_txt" align="left"> <input type="checkbox" name="c6"  <c:if test="${physical.c6==''}"><c:out value="checked=checked"/></c:if>></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c6right" value="Right" <c:if test="${physical.c6right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c6left" value="Left" <c:if test="${physical.c6left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>C-7:</td>
				                   <td class="input_txt" align="left"> <input type="checkbox" name="c7"  <c:if test="${physical.c7==''}"><c:out value="checked=checked"/></c:if>></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c7right" value="Right" <c:if test="${physical.c7right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c7left" value="Left" <c:if test="${physical.c7left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>C-8:</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="c8"  <c:if test="${physical.c8==''}"><c:out value="checked=checked"/></c:if>></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c8right" value="Right" <c:if test="${physical.c8right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c8left" value="Left" <c:if test="${physical.c8left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>T-1:</td>
				                   <td class="input_txt" align="left"> <input type="checkbox" name="t1"  <c:if test="${physical.t1==''}"><c:out value="checked=checked"/></c:if>></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="t1right" value="Right"<c:if test="${physical.t1right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="t1left" value="Left"<c:if test="${physical.t1left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>Other:</td>
				                   <td class="input_txt" align="left"> <input type="checkbox" name="other"  <c:if test="${physical.other==''}"><c:out value="checked=checked"/></c:if>></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="otherright" value="Right" <c:if test="${physical.otherright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="otherleft" value="Left" <c:if test="${physical.otherleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
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
				                 		<option value="0" <c:if test="${physical.deltoidright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.deltoidright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.deltoidright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.deltoidright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.deltoidright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.deltoidright=='5'}"><c:out value="selected"/></c:if>>5</option> 
						                    
				                   		</select></td>
				                   		<td><select name="deltoidleft">
						                <option value="0" <c:if test="${physical.deltoidleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.deltoidleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.deltoidleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.deltoidleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.deltoidleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.deltoidleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                 <td>(Wrist Ext.) C-6	</td>
				                 <td><select name="wristright">
						                    <option value="0" <c:if test="${physical.wristright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.wristright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.wristright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.wristright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.wristright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.wristright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="wristleft">
						                    <option value="0" <c:if test="${physical.wristleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.wristleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.wristleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.wristleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.wristleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.wristleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Wrist Flex) C-7	</td>
				                 <td><select name="wristflexright">
						                    <option value="0" <c:if test="${physical.wristflexright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.wristflexright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.wristflexright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.wristflexright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.wristflexright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.wristflexright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="wristflexleft">
						                    <option value="0" <c:if test="${physical.wristflexleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.wristflexleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.wristflexleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.wristflexleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.wristflexleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.wristflexleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Finger Flex) C-8</td>
				                 <td><select name="fingerflexright">
						                   <option value="0" <c:if test="${physical.fingerflexright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.fingerflexright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.fingerflexright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.fingerflexright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.fingerflexright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.fingerflexright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="fingerflexleft">
						                    <option value="0" <c:if test="${physical.fingerflexleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.fingerflexleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.fingerflexleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.fingerflexleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.fingerflexleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.fingerflexleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Finger Add.) T-1</td>
				                 <td><select name="fingeraddright">
						                   <option value="0" <c:if test="${physical.fingeraddright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.fingeraddright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.fingeraddright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.fingeraddright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.fingeraddright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.fingeraddright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="fingeraddleft">
						                    <option value="0" <c:if test="${physical.fingeraddleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.fingeraddleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.fingeraddleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.fingeraddleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.fingeraddleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.fingeraddleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <%-- <tr class="row1">
				                 <td>(Wrist Ext.) C-6	</td>
				                 <td><select name="wristextright">
						                   <option value="0" <c:if test="${physical.wristextright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.wristextright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.wristextright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.wristextright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.wristextright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.wristextright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="wristextleft">
						                    <option value="0" <c:if test="${physical.wristextleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.wristextleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.wristextleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.wristextleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.wristextleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.wristextleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr> --%>
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
						                   <option value="0" <c:if test="${physical.bicepright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.bicepright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.bicepright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.bicepright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.bicepright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		<td><select name="bicepleft">
						                    <option value="0" <c:if test="${physical.bicepleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.bicepleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.bicepleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.bicepleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.bicepleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>C-6/7 (Bracio-Rad.)</td>
				                 <td><select name="bracioradright">
						                   <option value="0" <c:if test="${physical.bracioradright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.bracioradright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.bracioradright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.bracioradright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.bracioradright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		<td><select name="bracioradleft">
						                    <option value="0" <c:if test="${physical.bracioradleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.bracioradleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.bracioradleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.bracioradleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.bracioradleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>C-7/8 (Tricep)</td>
				                 <td><select name="tricepright">
						                    <option value="0" <c:if test="${physical.tricepright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.tricepright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.tricepright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.tricepright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.tricepright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		<td><select name="tricepleft">
						                    <option value="0" <c:if test="${physical.tricepleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.tricepleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.tricepleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.tricepleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.tricepleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		
				                  </tr>
				                 <tr class="row1">
				               <td><b>Visual Disturbance:</b></td>
				               <td>Present:</td>
				               <td><select name="presentvisual">
						                    <option value="R" <c:if test="${physical.presentvisual=='R'}">
<c:out value="selected"/></c:if>>R</option>
     <option value="L" <c:if test="${physical.presentvisual=='L'}">
<c:out value="selected"/></c:if>>L</option>
						                
											
				                   		</select></td>
				               
				              
				                   		<td>*If present, perform eye exam & auscultate carotid arteries</td>
				                   		<td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="presentrl" value="${physical.presentrl }" /></td>

				                   		
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="highshoulderright" value="Right" <c:if test="${physical.highshoulderright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="highshoulderleft" value="Left" <c:if test="${physical.highshoulderleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="highshouldernormal" value="Normal" <c:if test="${physical.highshouldernormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Curvature:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="curvatureright" value="Right" <c:if test="${physical.curvatureright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="curvatureleft" value="Left" <c:if test="${physical.curvatureleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="curvaturenormal" value="Normal" <c:if test="${physical.curvaturenormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Winging:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="wingingright" value="Right" <c:if test="${physical.wingingright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="wingingleft" value="Left" <c:if test="${physical.wingingleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="wingingnormal" value="Normal" <c:if test="${physical.wingingnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Rib Hump:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="ribhumpright" value="Right"<c:if test="${physical.ribhumpright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="ribhumpleft" value="Left" <c:if test="${physical.ribhumpleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="ribhumpnormal" value="Normal" <c:if test="${physical.ribhumpnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Chest Measure:</td>
				                   <td><input type="text" name="chestmeasurein" value="${physical.chestmeasurein}" />
				                 
				                  </tr>
				                  <tr class="row1">
				                   <td>kyphosis:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="kyphosishyper" value="Hyper" <c:if test="${physical.kyphosishyper=='Hyper'}"><c:out value="checked=checked"/></c:if>>Hyper</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="kyphosishypo" value="Hypo" <c:if test="${physical.kyphosishypo=='Hypo'}"><c:out value="checked=checked"/></c:if>>Hypo</td>
				                  <td class="input_txt"><input type="checkbox" name="kyphosisnormal" value="Normal" <c:if test="${physical.kyphosisnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                
				                </table>
				                
				                <table border="0">
				               <tr class="row1">
				               <td><b>PALPATION:</b></td>
				               
				                  </tr>
				                <tr class="row1">
				                  <td>Paraspinal:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="parapain" value="Pain" <c:if test="${physical.parapain=='Pain'}"><c:out value="checked=checked"/></c:if>>Pain</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraspasm" value="Spasm" <c:if test="${physical.paraspasm=='Spasm'}"><c:out value="checked=checked"/></c:if>>Spasm</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraedema" value="Edema" <c:if test="${physical.paraedema=='Edema'}"><c:out value="checked=checked"/></c:if>>Edema</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paratriggerpoint" value="TriggerPoint"<c:if test="${physical.paratriggerpoint=='TriggerPoint'}"><c:out value="checked=checked"/></c:if>>TriggerPoint</td>
				                  </tr> 
				                  <tr class="row1">
				                  <td>Ribs:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="ribspost" value="Posterior" <c:if test="${physical.ribspost=='Posterior'}"><c:out value="checked=checked"/></c:if>>Posterior</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="ribsnor" value="Normal" <c:if test="${physical.ribsnor=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 </tr>
				                   <tr class="row1">
				                  <td>Vertebrae:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="vertefix" value="Fixation"<c:if test="${physical.vertefix=='Fixation'}"><c:out value="checked=checked"/></c:if>>Fixations</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="vertenofix" value="No_Fixation" <c:if test="${physical.vertenofix=='No_Fixation'}"><c:out value="checked=checked"/></c:if>>No Fixations</td>
				                  </tr>
				                  </table>
				                   <table border="0">
				               <tr class="row1">
				               <td><b>RANGE OF MOTION:(Include Degrees)</b></td>
				               </tr>
				               <tr class="row1">
				               <td valign="top" align="left" class="input_txt">Normal ROM </td>
				                  <td class="input_txt">Pain</td>
				                  <td class="input_txt">Spasm</td>
				                  <td class="input_txt">Stiff</td>
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>FLEX 40:</td>
				                 
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thoracicpain" value="${physical.thoracicpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoracicspasm" value="${physical.thoracicspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoracicstiff" value="${physical.thoracicstiff }"/></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 30:</td>
				                 
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thoextpain" value="${physical.thoextpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoextspasm" value="${physical.thoextspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoextstiff" value="${physical.thoextstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 30:</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thorlfpain" value="${physical.thorlfpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorlfspasm" value="${physical.thorlfspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorlfstiff" value="${physical.thorlfstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 30:</td>
				                 
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thollfpain" value="${physical.thollfpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thollfspasm" value="${physical.thollfspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thollfstiff" value="${physical.thollfstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 40:</td>
				                 
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thorrpain" value="${physical.thorrpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorrspasm" value="${physical.thorrspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorrstiff" value="${physical.thorrstiff }"/></td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 40:</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="tholrpain" value="${physical.tholrpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="tholrspasm" value="${physical.tholrspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="tholrstiff" value="${physical.tholrstiff }"/></td>
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
				                  
				                  <td class="input_txt" align="left"> <input type="checkbox" name="thot1"<c:if test="${physical.thot1==''}"><c:out value="checked=checked"/></c:if>></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot1right" value="Right"<c:if test="${physical.thot1right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot1left" value="Left"<c:if test="${physical.thot1left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                <tr class="row1">
				                   <td>T-4:</td>
				                   <td class="input_txt" align="left"> <input type="checkbox" name="thot4"<c:if test="${physical.thot4==''}"><c:out value="checked=checked"/></c:if>></td>
				                  
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot4right" value="Right"<c:if test="${physical.thot4right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot4left" value="Left"<c:if test="${physical.thot4left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>T-10:</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="thot10"<c:if test="${physical.thot10==''}"><c:out value="checked=checked"/></c:if>></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot10right" value="Right"<c:if test="${physical.thot10right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot10left" value="Left"<c:if test="${physical.thot10left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>Other:</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="thoother"<c:if test="${physical.thoother==''}"><c:out value="checked=checked"/></c:if>></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thootherright" value="Right" <c:if test="${physical.thootherright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thootherleft" value="Left" <c:if test="${physical.thootherleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  </table>
				                  <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>MYOTOMES:</td>
				                  </tr>
				                  <tr class="row1">
				                   <td valign="top" align="left" class="input_txt">
				                  	<tr class="row1">
				                   <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="myotomes" value="Positive Beevors" class="input_txt"  onclick="toggle3('show3')"<c:if test="${physical.myotomes=='Positive Beevors'}"><c:out value="checked=checked"/></c:if>>Positive Beevor's</td>
				                    <td><input type="checkbox" name="positiveruq" value="RUQ" <c:if test="${physical.positiveruq=='RUQ'}"><c:out value="checked=checked"/></c:if>>RUQ</td>
				                    <td><input type="checkbox" name="positiveluq" value="LUQ" <c:if test="${physical.positiveluq=='LUQ'}"><c:out value="checked=checked"/></c:if>>LUQ</td>
				                    <td><input type="checkbox" name="positiverlq" value="RLQ" <c:if test="${physical.positiverlq=='RLQ'}"><c:out value="checked=checked"/></c:if>>RLQ</td>
				                    <td><input type="checkbox" name="positivellq" value="LLQ" <c:if test="${physical.positivellq=='LLQ'}"><c:out value="checked=checked"/></c:if>>LLQ</td>
				                  </tr>
				                  <tr class="row1">
				                   <td valign="top" align="left" class="input_txt">
				                   <input type="radio" name="myotomes1" value="Negative Beevors" class="input_txt"  onclick="toggle3('hide3')">Negative Beevor's</td>
				                    
				                    <td><input type="checkbox" name="negativeruq" value="RUQ" <c:if test="${physical.negativeruq=='RUQ'}"><c:out value="checked=checked"/></c:if>>RUQ</td>
				                    <td><input type="checkbox" name="negativeluq" value="LUQ" <c:if test="${physical.negativeluq=='LUQ'}"><c:out value="checked=checked"/></c:if>>LUQ</td>
				                    <td><input type="checkbox" name="negativerlq" value="RLQ" <c:if test="${physical.negativerlq=='RLQ'}"><c:out value="checked=checked"/></c:if>>RLQ</td>
				                    <td><input type="checkbox" name="negativellq" value="LLQ" <c:if test="${physical.negativellq=='LLQ'}"><c:out value="checked=checked"/></c:if>>LLQ</td>
				                 </tr>
				                  
				                  	
				                 
				                  </table>
				                  
				                   <table border="0">
				                   
				                   <tr class="row1">
				               
				                   		<td>*If present is a smoker and has difficulty breathing, perform cardio-respiratory exam</td>
				                   		<td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="patientsmoker" value="${physical.patientsmoker}"/></td>

				                   		
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="highcrestright" value="Right" <c:if test="${physical.highcrestright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="highcrestleft" value="Left" <c:if test="${physical.highcrestleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="highcrestnormal" value="Normal" <c:if test="${physical.highcrestnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>High PSIS:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="highpsisright" value="Right" <c:if test="${physical.highpsisright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="highpsisleft" value="Left" <c:if test="${physical.highpsisleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="highpsisnormal" value="Normal" <c:if test="${physical.highpsisnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Curvature:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="curveright" value="Right"<c:if test="${physical.curveright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="curveleft" value="Left"<c:if test="${physical.curveleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="curvenormal" value="Normal"<c:if test="${physical.curvenormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 </tr>
				                 <tr class="row1">
				                   <td>Lordosis:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lordosishyper" value="Hyper"<c:if test="${physical.lordosishyper=='Hyper'}"><c:out value="checked=checked"/></c:if>>Hyper</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lordosishypo" value="Hypo"<c:if test="${physical.lordosishypo=='Hypo'}"><c:out value="checked=checked"/></c:if>>Hypo</td>
				                  <td class="input_txt"><input type="checkbox" name="lordosisnormal" value="Normal"<c:if test="${physical.lordosisnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                  </table>
				                
				                <table border="0">
				               <tr class="row1">
				               <td><b>PALPATION:</b></td>
				               
				                  </tr>
				                <tr class="row1">
				                  <td>Paraspinal:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="paraspinalpain" value="Pain"<c:if test="${physical.paraspinalpain=='Pain'}"><c:out value="checked=checked"/></c:if>>Pain</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraspinalspasm" value="Spasm"<c:if test="${physical.paraspinalspasm=='Spasm'}"><c:out value="checked=checked"/></c:if>>Spasm</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraspinaledema" value="Edema"<c:if test="${physical.paraspinaledema=='Edema'}"><c:out value="checked=checked"/></c:if>>Edema</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraspinaltp" value="TriggerPoint"<c:if test="${physical.paraspinaltp=='TriggerPoint'}"><c:out value="checked=checked"/></c:if>>TriggerPoint</td>
				                  </tr> 
				                   <tr class="row1">
				                  <td>Quadratus Lumborum:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  <select name="quadrl" class="input_cmbbx1">
				                  <option value="Right" <c:if test="${physical.quadrl=='Right'}"><c:out value="selected"/></c:if>>Right</option>
				                  		<option value="Tonicity" <c:if test="${physical.quadrl=='Tonicity'}"><c:out value="selected"/></c:if>>Tonicity</option>
				                  		<option value="Normal" <c:if test="${physical.quadrl=='Normal'}"><c:out value="selected"/></c:if>>Normal</option>
				                  		
				                  		
				                   		</select>
				                  </td>
				                 <td valign="top" align="left" class="input_txt">
				                  <select name="quadrl1" class="input_cmbbx1">
				                  <option value="Left" <c:if test="${physical.quadrl1=='Left'}"><c:out value="selected"/></c:if>>Left</option>
				                  		<option value="Tonicity" <c:if test="${physical.quadrl1=='Tonicity'}"><c:out value="selected"/></c:if>>Tonicity</option>
				                  		<option value="Normal" <c:if test="${physical.quadrl1=='Normal'}"><c:out value="selected"/></c:if>>Normal</option>
				                  		
				                  		
				                   		</select>
				                  </td>
				                  </tr>
				                  
				                  
				                 
				                  <tr class="row1">
				                  <td>Hamstring:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  <select name="hamstringrl" class="input_cmbbx1">
				                  <option value="Right" <c:if test="${physical.hamstringrl=='Right'}"><c:out value="selected"/></c:if>>Right</option>
				                  		<option value="Tonicity" <c:if test="${physical.hamstringrl=='Tonicity'}"><c:out value="selected"/></c:if>>Tonicity</option>
				                  		<option value="Normal" <c:if test="${physical.hamstringrl=='Normal'}"><c:out value="selected"/></c:if>>Normal</option>
				                  		
				                  		
				                   		</select>
				                  </td>
				                 <td valign="top" align="left" class="input_txt">
				                  <select name="hamstringrl1" class="input_cmbbx1">
				                  <option value="Left" <c:if test="${physical.hamstringrl1=='Left'}"><c:out value="selected"/></c:if>>Left</option>
				                  		<option value="Tonicity" <c:if test="${physical.hamstringrl1=='Tonicity'}"><c:out value="selected"/></c:if>>Tonicity</option>
				                  		<option value="Normal" <c:if test="${physical.hamstringrl1=='Normal'}"><c:out value="selected"/></c:if>>Normal</option>
				                  		
				                  		
				                   		</select>
				                  </td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Vertebrae:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="verfix" value="Fixations"<c:if test="${physical.verfix=='Fixations'}"><c:out value="checked=checked"/></c:if>>Fixations</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="vernofix" value="No_Fixations"<c:if test="${physical.vernofix=='No_Fixations'}"><c:out value="checked=checked"/></c:if>>No Fixations</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Abdomen:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="abdomentender" value="Tender"<c:if test="${physical.abdomentender=='Tender'}"><c:out value="checked=checked"/></c:if>>Tender</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="abdomenpulse" value="Pulsations"<c:if test="${physical.abdomenpulse=='Pulsations'}"><c:out value="checked=checked"/></c:if>>Pulsations</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="abdomenascites" value="Ascites"<c:if test="${physical.abdomenascites=='Ascites'}"><c:out value="checked=checked"/></c:if>>Ascites</td>
				                  </tr>
				                  </table>
				                   <table border="0">
				               <tr class="row1">
				               <td><b>RANGE OF MOTION:(Include Degrees)</b></td>
				               </tr>
				               <tr class="row1">
				               <td valign="top" align="left" class="input_txt">Normal ROM </td>
				                  <td class="input_txt">Pain</td>
				                  <td class="input_txt">Spasm</td>
				                  <td class="input_txt">Stiff</td>
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>FLEX 80:</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumflexpain" value="${physical.lumflexpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumflexspasm" value="${physical.lumflexspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumflexstiff" value="${physical.lumflexstiff }"/></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 30:</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumextpain" value="${physical.lumextpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumextspasm" value="${physical.lumextspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumextstiff" value="${physical.lumextstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 25:</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumrlfpain" value="${physical.lumrlfpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrlfspasm" value="${physical.lumrlfspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrlfstiff" value="${physical.lumrlfstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 25:</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumllfpain" value="${physical.lumllfpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumllfspasm" value="${physical.lumllfspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumllfstiff" value="${physical.lumllfstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 30:</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumrrpain" value="${physical.lumrrpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrrspasm" value="${physical.lumrrspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrrstiff" value="${physical.lumrrstiff }"/></td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 30:</td>
				                  
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumlrpain" value="${physical.lumlrpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumlrspasm" value="${physical.lumlrspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumlrstiff" value="${physical.lumlrstiff }"/></td>
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
				                   <td>L-1:</td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu1" <c:if test="${physical.lu1==''}"><c:out value="checked=checked"/></c:if>></td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu1right" value="Right" <c:if test="${physical.lu1right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu1left" value="Left" <c:if test="${physical.lu1left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>L-2:</td>
				                 <td class="input_txt" align="left"><input type="checkbox" name="lu2" <c:if test="${physical.lu2==''}"><c:out value="checked=checked"/></c:if>></td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu2right" value="Right" <c:if test="${physical.lu2right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu2left" value="Left" <c:if test="${physical.lu2left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>L-3:</td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu3" <c:if test="${physical.lu3==''}"><c:out value="checked=checked"/></c:if>></td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu3right" value="Right" <c:if test="${physical.lu3right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu3left" value="Left" <c:if test="${physical.lu3left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                 
				                 </tr>
				                   <tr class="row1">
				                   <td>L-4:</td>
				                 <td class="input_txt" align="left"><input type="checkbox" name="lu4" <c:if test="${physical.lu4==''}"><c:out value="checked=checked"/></c:if>></td>
				                 <td class="input_txt" align="left"><input type="checkbox" name="lu4right" value="Right" <c:if test="${physical.lu4right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu4left" value="Left" <c:if test="${physical.lu4left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>L-5:</td>
				                 <td class="input_txt" align="left"><input type="checkbox" name="lu5" <c:if test="${physical.lu5==''}"><c:out value="checked=checked"/></c:if>></td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu5right" value="Right" <c:if test="${physical.lu5right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu5left" value="Left" <c:if test="${physical.lu5left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                 <tr class="row1">
				                   <td>S-1:</td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu6" <c:if test="${physical.lu6==''}"><c:out value="checked=checked"/></c:if>></td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu6right" value="Right" <c:if test="${physical.lu6right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu6left" value="Left" <c:if test="${physical.lu6left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>S-2:</td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu7" <c:if test="${physical.lu7==''}"><c:out value="checked=checked"/></c:if>></td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu7right" value="Right" <c:if test="${physical.lu7right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                  <td class="input_txt" align="left"><input type="checkbox" name="lu7left" value="Left" <c:if test="${physical.lu7left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                 
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
						                      <option value="0" <c:if test="${physical.hipflexright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.hipflexright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.hipflexright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.hipflexright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.hipflexright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.hipflexright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="hipflexleft">
						                     <option value="0" <c:if test="${physical.hipflexleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.hipflexleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.hipflexleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.hipflexleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.hipflexleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.hipflexleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                 <td>(Leg Ext.) L-3	</td>
				                 <td><select name="legextright">
						                     <option value="0" <c:if test="${physical.legextright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.legextright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.legextright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.legextright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.legextright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.legextright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="legextleft">
						                      <option value="0" <c:if test="${physical.legextleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.legextleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.legextleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.legextleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.legextleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.legextleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				              
				                    <tr class="row1">
				                 <td>(Dorsiflex) L-4	</td>
				                 <td><select name="dorsiflexright">
						                     <option value="0" <c:if test="${physical.dorsiflexright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.dorsiflexright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.dorsiflexright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.dorsiflexright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.dorsiflexright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.dorsiflexright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="dorsiflexleft">
						                     <option value="0" <c:if test="${physical.dorsiflexleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.dorsiflexleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.dorsiflexleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.dorsiflexleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.dorsiflexleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.dorsiflexleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                 <td>(1st digit flex.) L-5	</td>
				                 <td><select name="digitflexright">
						                     <option value="0" <c:if test="${physical.digitflexright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.digitflexright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.digitflexright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.digitflexright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.digitflexright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.digitflexright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="digitflexleft">
						                     <option value="0" <c:if test="${physical.digitflexleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.digitflexleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.digitflexleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.digitflexleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.digitflexleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physical.digitflexleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                  <td>(Heel Walk)L-4/5</td>
				                  <td valign="top" align="left" class="input_txt">
				                  <input type="radio" name="heelright" value="Positive" class="input_txt"   <c:if test="${physical.heelright=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="heelright" value="Negative" class="input_txt"   <c:if test="${physical.heelright=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative &nbsp;&nbsp;&nbsp;</td>
				                  
				                  
				                  
				                  <td valign="top" align="left" class="input_txt">
				                  <input type="radio" name="heelleft" value="Positive" class="input_txt"   <c:if test="${physical.heelleft=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="heelleft" value="Negative" class="input_txt"  <c:if test="${physical.heelleft=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative &nbsp;&nbsp;&nbsp;</td>
				                  </tr>
				                   <tr class="row1">
				                  <td>(Toe Walk)S-1/2</td>
				                  <td valign="top" align="left" class="input_txt">
				                   <input type="radio" name="toeright" value="Positive" class="input_txt"   <c:if test="${physical.toeright=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="toeright" value="Negative" class="input_txt"  <c:if test="${physical.toeright=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative &nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                   <input type="radio" name="toeleft" value="Positive" class="input_txt"   <c:if test="${physical.toeleft=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="toeleft" value="Negative" class="input_txt"  <c:if test="${physical.toeleft=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative &nbsp;&nbsp;&nbsp;</td>
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
						                     <option value="0" <c:if test="${physical.patellarright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.patellarright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.patellarright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.patellarright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.patellarright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
				                   		</select></td>
				                   		<td><select name="patellarleft">
						                    <option value="0" <c:if test="${physical.patellarleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.patellarleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.patellarleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.patellarleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.patellarleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>L-5,S-1,2(Achilles)</td>
				                 <td><select name="achillesright">
						                    <option value="0" <c:if test="${physical.achillesright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.achillesright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.achillesright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.achillesright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.achillesright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		<td><select name="achillesleft">
						                     <option value="0" <c:if test="${physical.achillesleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physical.achillesleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physical.achillesleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physical.achillesleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physical.achillesleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                  <td>Babinski(UMNL)</td>
				                  <td valign="top" align="left" class="input_txt">
				                   <input type="radio" name="babinskiright" value="Positive" class="input_txt"   <c:if test="${physical.babinskiright=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="babinskiright" value="Negative" class="input_txt"  <c:if test="${physical.babinskiright=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative &nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                   <input type="radio" name="babinskileft" value="Positive" class="input_txt"   <c:if test="${physical.babinskileft=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="babinskileft" value="Negative" class="input_txt"  <c:if test="${physical.babinskileft=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative &nbsp;&nbsp;&nbsp;</td>
				                  </tr>
				                  
				                  </table>
				                  <table align="right">
				                  <tr>
				                    <td><input type="submit" class="submit_btn" value="Update" ></td>
				                   <td>&nbsp;&nbsp;</td>
				                    
				                    <td><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewphysicalexam'" ></td>
				                 
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
				                  </c:otherwise>
				                  </c:choose>
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
