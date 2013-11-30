<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="resources/css/tabs.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
  <script src="resources/js/tabs-1.9.1.js"></script>
  <script src="resources/js/tabs-ui.js"></script>
	</head>
	<script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
	<body>
	<form method="POST" action="updatephysicalexam">

<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
	              <h2 align="center" >Editing Physical exam<br></b></h2>
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
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="sign" value="${physicalexam.sign}" />
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Name :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="name" value="${physicalexam.name}"/>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>ID :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="id" value="${physicalexam.id}"/>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="date" value="${physicalexam.date}" />
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Vitals-Age:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="age" value="${physicalexam.age}"/>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Sex:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="sex" value="${physicalexam.sex}"/>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Height:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="height" value="${physicalexam.height}"/>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Weight:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="weight" value="${physicalexam.weight}"/>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Temp:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="temp" value="${physicalexam.temp}"/>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>BP:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="bp" value="${physicalexam.bp}"/>
				                  </td>
				                </tr>
				                </table>
				                <td align="left" valign="top"> 
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Pulse:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="pulse" value="${physicalexam.pulse}"/>
				                  </td>
				                </tr>
				                <tr class="row1">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Appearance:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="appearance" class="input_cmbbx1">
				                  		<option value="excellent" <c:if test="${physicalexam.appearance=='excellent'}"><c:out value="selected"/></c:if>>Excellent</option>
						                 <option value="good" <c:if test="${physicalexam.appearance=='good'}"><c:out value="selected"/></c:if>>Good</option>   
						                 <option value="fair" <c:if test="${physicalexam.appearance=='fair'}"><c:out value="selected"/></c:if>>Fair</option>
						                 <option value="Severe" <c:if test="${physicalexam.appearance=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						          
				                   		</select>
				                   	</td> </tr>  
				                   	 <tr class="row2">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Weight:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="weight1" class="input_cmbbx1">
				                  		<option value="un" <c:if test="${physicalexam.weight1=='un'}"><c:out value="selected"/></c:if>>UN</option>
				                  		<option value="n" <c:if test="${physicalexam.weight1=='n'}"><c:out value="selected"/></c:if>>N</option>
				                  		<option value="wn" <c:if test="${physicalexam.weight1=='wn'}"><c:out value="selected"/></c:if>>WN</option>
						                    
				                   		</select>
				                   	</td> </tr>  
				                   	 <tr class="row1">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>GAIT:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="gait" class="input_cmbbx1">
				                  		<option value="antalgic" <c:if test="${physicalexam.gait=='antalgic'}"><c:out value="selected"/></c:if>>Antalgic</option>
				                  		<option value="limp" <c:if test="${physicalexam.gait=='limp'}"><c:out value="selected"/></c:if>>Limp</option>
				                  		<option value="sway" <c:if test="${physicalexam.gait=='sway'}"><c:out value="selected"/></c:if>>Sway</option>
				                  		<option value="stagger" <c:if test="${physicalexam.gait=='stagger'}"><c:out value="selected"/></c:if>>Stagger</option>
				                  		<option value="normal" <c:if test="${physicalexam.gait=='normal'}"><c:out value="selected"/></c:if>>Normal</option>
				                  		
				                   		</select>
				                   		
				                   	</td> </tr>
				                   	 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>HEAD,EENT:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="head" value="Normal" class="input_txt"  <c:if test="${physicalexam.head=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="head" value="Abnormal" class="input_txt"  <c:if test="${physicalexam.head=='Abnormal'}"><c:out value="checked=checked"/></c:if>>Abnormal&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Visceral Pathologies:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="path" value="Normal" class="input_txt"  <c:if test="${physicalexam.path=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="path" value="Abnormal" class="input_txt"  <c:if test="${physicalexam.path=='Abnormal'}"><c:out value="checked=checked"/></c:if>>Abnormal&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Posture:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="posture" value="Good" class="input_txt"  <c:if test="${physicalexam.posture=='Good'}"><c:out value="checked=checked"/></c:if>>Good&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="posture" value="Poor" class="input_txt"  <c:if test="${physicalexam.posture=='Poor'}"><c:out value="checked=checked"/></c:if>>Poor&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                   	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Romberg's Sign:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="romber" value="Present" class="input_txt"  <c:if test="${physicalexam.romber=='Present'}"><c:out value="checked=checked"/></c:if>>Present&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="romber" value="NotPresent" class="input_txt"  <c:if test="${physicalexam.romber=='NotPresent'}"><c:out value="checked=checked"/></c:if>>NotPresent&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>CN Exam:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="exam" value="Normal" class="input_txt"  <c:if test="${physicalexam.exam=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="exam" value="DNP" class="input_txt"  <c:if test="${physicalexam.exam=='DNP'}"><c:out value="checked=checked"/></c:if>>DNP&nbsp;&nbsp;&nbsp;</td>
				                </tr>  	
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Abnormal Findings:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="abnormal" value=${physicalexam.abnormal } />
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="headtiltright" value="Right" <c:if test="${physicalexam.headtiltright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="headtiltleft" value="Left" <c:if test="${physicalexam.headtiltleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="headtiltnormal" value="Normal" <c:if test="${physicalexam.headtiltnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Rotation:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="rotationright" value="Right" <c:if test="${physicalexam.rotationright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="rotationleft" value="Left"  <c:if test="${physicalexam.rotationleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="rotationnormal" value="Normal" <c:if test="${physicalexam.rotationnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>TMJ Syndrome:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tmjright" value="Right" <c:if test="${physicalexam.tmjright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tmjleft" value="Left" <c:if test="${physicalexam.tmjleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="tmjnormal" value="Normal" <c:if test="${physicalexam.tmjnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>High Shoulder:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="highright" value="Right" <c:if test="${physicalexam.highright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="highleft" value="Left" <c:if test="${physicalexam.highleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="highnormal" value="Normal" <c:if test="${physicalexam.highnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Lordosis:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lordhyper" value="Hyper" <c:if test="${physicalexam.lordhyper=='Hyper'}"><c:out value="checked=checked"/></c:if>>Hyper</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lordhypo" value="Hypo" <c:if test="${physicalexam.lordhypo=='Hypo'}"><c:out value="checked=checked"/></c:if>>Hypo</td>
				                  <td class="input_txt"><input type="checkbox" name="lordnormal" value="Normal" <c:if test="${physicalexam.lordnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                
				                </table>
				                <table border="0">
				               <tr class="row1">
				               <td><b>PALPATION:</b></td>
				               
				                  </tr>
				                <tr class="row1">
				                  <td>Lymph Nodes:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lymphedema" value="Lymphedema" <c:if test="${physicalexam.lymphedema=='Lymphedema'}"><c:out value="checked=checked"/></c:if>>Lymphedema</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lymphnormal" value="Normal" <c:if test="${physicalexam.lymphnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                  </tr>
				                   <tr class="row1">
				                  <td>Paraspinal:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="paraspain" value="Pain" <c:if test="${physicalexam.paraspain=='Pain'}"><c:out value="checked=checked"/></c:if>>Pain</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="parasspasm" value="Spasm" <c:if test="${physicalexam.parasspasm=='Spasm'}"><c:out value="checked=checked"/></c:if>>Spasm</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="parasedema" value="Edema" <c:if test="${physicalexam.parasedema=='Edema'}"><c:out value="checked=checked"/></c:if>>Edema</td>
				                   <td class="input_txt" align="left"> <input type="checkbox" name="parastriggerpoint" value="TriggerPoint" <c:if test="${physicalexam.parastriggerpoint=='TriggerPoint'}"><c:out value="checked=checked"/></c:if>>TriggerPoint</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Trapezius/SCM:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="trapeziusrl" value="R-L" <c:if test="${physicalexam.trapeziusrl=='R-L'}"><c:out value="checked=checked"/></c:if>>R-L</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="trapeziustono" value="Tonocity" <c:if test="${physicalexam.trapeziustono=='Tonocity'}"><c:out value="checked=checked"/></c:if>>Tonicity</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="trapeziusnormal" value="Normal" <c:if test="${physicalexam.trapeziusnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Vertebrae:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="vertebraefix" value="Fixations" <c:if test="${physicalexam.vertebraefix=='Fixations'}"><c:out value="checked=checked"/></c:if>>Fixations</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="vertebraenofix" value="No_fixations" <c:if test="${physicalexam.vertebraenofix=='No_fixations'}"><c:out value="checked=checked"/></c:if>>No Fixations</td>
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
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="flexnormal" value="${physicalexam.flexnormal }" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="flexpain" value="${physicalexam.flexpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="flexspasm" value="${physicalexam.flexspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="flexstiff" value="${physicalexam.flexstiff }"/></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 75:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="extnormal" value="${physicalexam.extnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="extpain" value="${physicalexam.extpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="extspasm" value="${physicalexam.extspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="extstiff" value="${physicalexam.extstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 45:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="rlfnormal" value="${physicalexam.rlfnormal } "/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="rlfpain" value="${physicalexam.rlfpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rlfspasm" value="${physicalexam.rlfspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rlfstiff" value="${physicalexam.rlfstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 45:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="llfnormal" value="${physicalexam.llfnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="llfpain" value="${physicalexam.llfpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="llfspasm" value="${physicalexam.llfspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="llfstiff" value="${physicalexam.llfstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 80:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="rrnormal" value=${physicalexam.rrnormal }/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="rrpain" value=${physicalexam.rrpain }/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rrspasm" value=${physicalexam.rrspasm }/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="rrstiff" value=${physicalexam.rrstiff }/></td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 80:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lrnormal" value="${physicalexam.lrnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lrpain" value="${physicalexam.lrpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lrspasm" value="${physicalexam.lrspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lrstiff" value="${physicalexam.lrstiff}"/></td>
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
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="c5" value="${physicalexam.c5 }"/></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c5right" value="Right" <c:if test="${physicalexam.c5right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c5left" value="Left" <c:if test="${physicalexam.c5left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                <tr class="row1">
				                   <td>C-6:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="c6" value="${physicalexam.c6 }"/></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c6right" value="Right" <c:if test="${physicalexam.c6right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c6left" value="Left" <c:if test="${physicalexam.c6left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>C-7:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="c7" value="${physicalexam.c7 }"/></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c7right" value="Right" <c:if test="${physicalexam.c7right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c7left" value="Left" <c:if test="${physicalexam.c7left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>C-8:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="c8" value="${physicalexam.c8 }"/></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c8right" value="Right" <c:if test="${physicalexam.c8right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="c8left" value="Left" <c:if test="${physicalexam.c8left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>T-1:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="t1" value="${physicalexam.t1 }"/></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="t1right" value="Right"<c:if test="${physicalexam.t1right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="t1left" value="Left"<c:if test="${physicalexam.t1left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>Other:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="other" value="${physicalexam.other }"/></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="otherright" value="Right" <c:if test="${physicalexam.otherright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="otherleft" value="Left" <c:if test="${physicalexam.otherleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
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
				                 		<option value="0" <c:if test="${physicalexam.deltoidright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.deltoidright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.deltoidright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.deltoidright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.deltoidright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.deltoidright=='5'}"><c:out value="selected"/></c:if>>5</option> 
						                    
				                   		</select></td>
				                   		<td><select name="deltoidleft">
						                <option value="0" <c:if test="${physicalexam.deltoidleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.deltoidleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.deltoidleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.deltoidleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.deltoidleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.deltoidleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                 <td>(Wrist Ext.) C-6	</td>
				                 <td><select name="wristright">
						                    <option value="0" <c:if test="${physicalexam.wristright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.wristright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.wristright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.wristright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.wristright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.wristright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="wristleft">
						                    <option value="0" <c:if test="${physicalexam.wristleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.wristleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.wristleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.wristleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.wristleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.wristleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Wrist Flex) C-7	</td>
				                 <td><select name="wristflexright">
						                    <option value="0" <c:if test="${physicalexam.wristflexright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.wristflexright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.wristflexright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.wristflexright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.wristflexright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.wristflexright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="wristflexleft">
						                    <option value="0" <c:if test="${physicalexam.wristflexleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.wristflexleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.wristflexleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.wristflexleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.wristflexleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.wristflexleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Finger Flex) C-8</td>
				                 <td><select name="fingerflexright">
						                   <option value="0" <c:if test="${physicalexam.fingerflexright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.fingerflexright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.fingerflexright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.fingerflexright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.fingerflexright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.fingerflexright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="fingerflexleft">
						                    <option value="0" <c:if test="${physicalexam.fingerflexleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.fingerflexleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.fingerflexleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.fingerflexleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.fingerflexleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.fingerflexleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Finger Add.) T-1</td>
				                 <td><select name="fingeraddright">
						                   <option value="0" <c:if test="${physicalexam.fingeraddright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.fingeraddright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.fingeraddright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.fingeraddright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.fingeraddright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.fingeraddright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="fingeraddleft">
						                    <option value="0" <c:if test="${physicalexam.fingeraddleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.fingeraddleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.fingeraddleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.fingeraddleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.fingeraddleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.fingeraddleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Wrist Ext.) C-6	</td>
				                 <td><select name="wristextright">
						                   <option value="0" <c:if test="${physicalexam.wristextright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.wristextright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.wristextright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.wristextright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.wristextright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.wristextright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="wristextleft">
						                    <option value="0" <c:if test="${physicalexam.wristextleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.wristextleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.wristextleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.wristextleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.wristextleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.wristextleft=='5'}"><c:out value="selected"/></c:if>>5</option>
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
						                   <option value="0" <c:if test="${physicalexam.bicepright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.bicepright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.bicepright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.bicepright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.bicepright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		<td><select name="bicepleft">
						                    <option value="0" <c:if test="${physicalexam.bicepleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.bicepleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.bicepleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.bicepleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.bicepleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>C-6/7 (Bracio-Rad.)</td>
				                 <td><select name="bracioradright">
						                   <option value="0" <c:if test="${physicalexam.bracioradright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.bracioradright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.bracioradright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.bracioradright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.bracioradright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		<td><select name="bracioradleft">
						                    <option value="0" <c:if test="${physicalexam.bracioradleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.bracioradleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.bracioradleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.bracioradleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.bracioradleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>C-7/8 (Tricep)</td>
				                 <td><select name="tricepright">
						                    <option value="0" <c:if test="${physicalexam.tricepright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.tricepright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.tricepright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.tricepright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.tricepright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		<td><select name="tricepleft">
						                    <option value="0" <c:if test="${physicalexam.tricepleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.tricepleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.tricepleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.tricepleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.tricepleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="highshoulderright" value="Right" <c:if test="${physicalexam.highshoulderright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="highshoulderleft" value="Left" <c:if test="${physicalexam.highshoulderleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="highshouldernormal" value="Normal" <c:if test="${physicalexam.highshouldernormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Curvature:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="curvatureright" value="Right" <c:if test="${physicalexam.curvatureright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="curvatureleft" value="Left" <c:if test="${physicalexam.curvatureleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="curvaturenormal" value="Normal" <c:if test="${physicalexam.curvaturenormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Winging:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="wingingright" value="Right" <c:if test="${physicalexam.wingingright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="wingingleft" value="Left" <c:if test="${physicalexam.wingingleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="wingingnormal" value="Normal" <c:if test="${physicalexam.wingingnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Rib Hump:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="ribhumpright" value="Right"<c:if test="${physicalexam.ribhumpright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="ribhumpleft" value="Left" <c:if test="${physicalexam.ribhumpleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="ribhumpnormal" value="Normal" <c:if test="${physicalexam.ribhumpnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Chest Measure:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="chestmeasurein" value="Inhale" <c:if test="${physicalexam.chestmeasurein=='Inhale'}"><c:out value="checked=checked"/></c:if>>Inhale</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="chestmeasureex" value="Exhale" <c:if test="${physicalexam.chestmeasureex=='Exhale'}"><c:out value="checked=checked"/></c:if>>Exhale</td>
				                  
				                  </tr>
				                  <tr class="row1">
				                   <td>kyphosis:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="kyphosishyper" value="Hyper" <c:if test="${physicalexam.kyphosishyper=='Hyper'}"><c:out value="checked=checked"/></c:if>>Hyper</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="kyphosishypo" value="Hypo" <c:if test="${physicalexam.kyphosishypo=='Hypo'}"><c:out value="checked=checked"/></c:if>>Hypo</td>
				                  <td class="input_txt"><input type="checkbox" name="kyphosisnormal" value="Normal" <c:if test="${physicalexam.kyphosisnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                
				                </table>
				                
				                <table border="0">
				               <tr class="row1">
				               <td><b>PALPATION:</b></td>
				               
				                  </tr>
				                <tr class="row1">
				                  <td>Paraspinal:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="parapain" value="Pain" <c:if test="${physicalexam.parapain=='Pain'}"><c:out value="checked=checked"/></c:if>>Pain</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraspasm" value="Spasm" <c:if test="${physicalexam.paraspasm=='Spasm'}"><c:out value="checked=checked"/></c:if>>Spasm</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraedema" value="Edema" <c:if test="${physicalexam.paraedema=='Edema'}"><c:out value="checked=checked"/></c:if>>Edema</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paratriggerpoint" value="TriggerPoint"<c:if test="${physicalexam.paratriggerpoint=='TriggerPoint'}"><c:out value="checked=checked"/></c:if>>TriggerPoint</td>
				                  </tr> 
				                  <tr class="row1">
				                  <td>Ribs:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="ribspost" value="Posterior" <c:if test="${physicalexam.ribspost=='Posterior'}"><c:out value="checked=checked"/></c:if>>Posterior</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="ribsnor" value="Normal" <c:if test="${physicalexam.ribsnor=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 </tr>
				                   <tr class="row1">
				                  <td>Vertebrae:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="vertefix" value="Fixation"<c:if test="${physicalexam.vertefix=='Fixation'}"><c:out value="checked=checked"/></c:if>>Fixations</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="vertenofix" value="No_Fixation" <c:if test="${physicalexam.vertenofix=='No_Fixation'}"><c:out value="checked=checked"/></c:if>>No Fixations</td>
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
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thoracicnormal" value="${physicalexam.thoracicnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thoracicpain" value="${physicalexam.thoracicpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoracicspasm" value="${physicalexam.thoracicspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoracicstiff" value="${physicalexam.thoracicstiff }"/></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 30:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thoextnormal" value="${physicalexam.thoextnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thoextpain" value="${physicalexam.thoextpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoextspasm" value="${physicalexam.thoextspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thoextstiff" value="${physicalexam.thoextstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 30:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thorlfnormal" value="${physicalexam.thorlfnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thorlfpain" value="${physicalexam.thorlfpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorlfspasm" value="${physicalexam.thorlfspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorlfstiff" value="${physicalexam.thorlfstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 30:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thollfnormal" value="${physicalexam.thollfnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thollfpain" value="${physicalexam.thollfpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thollfspasm" value="${physicalexam.thollfspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thollfstiff" value="${physicalexam.thollfstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 40:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thorrnormal" value="${physicalexam.thorrnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="thorrpain" value="${physicalexam.thorrpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorrspasm" value="${physicalexam.thorrspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="thorrstiff" value="${physicalexam.thorrstiff }"/></td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 40:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="tholrnormal" value="${physicalexam.tholrnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="tholrpain" value="${physicalexam.tholrpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="tholrspasm" value="${physicalexam.tholrspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="tholrstiff" value="${physicalexam.tholrstiff }"/></td>
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
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thot1" value="${physicalexam.thot1 }"/></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot1right" value="Right"<c:if test="${physicalexam.thot1right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot1left" value="Left"<c:if test="${physicalexam.thot1left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                <tr class="row1">
				                   <td>T-4:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thot4" value="${physicalexam.thot4 }"/></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot4right" value="Right"<c:if test="${physicalexam.thot4right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot4left" value="Left"<c:if test="${physicalexam.thot4left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>T-10:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thot10" value="${physicalexam.thot10 }"/></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot10right" value="Right"<c:if test="${physicalexam.thot10right=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thot10left" value="Left"<c:if test="${physicalexam.thot10left=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>Other:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="thoother" value="${physicalexam.thoother }"/></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thootherright" value="Right" <c:if test="${physicalexam.thootherright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thootherleft" value="Left" <c:if test="${physicalexam.thootherleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  </tr>
				                  </table>
				                  <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>MYOTOMES:</td>
				                  </tr>
				                  <tr class="row1">
				                   <td valign="top" align="left" class="input_txt">
				                  	
				                  	<input type="radio" name="myotomes" value="Positive Beevors" class="input_txt"  onclick="toggle('show3')" <c:if test="${physicalexam.myotomes=='Positive Beevors'}"><c:out value="checked=checked"/></c:if>>Positive Beevor's&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="myotomes" value="Negative Beevors" class="input_txt"  onclick="toggle('hide3')" <c:if test="${physicalexam.myotomes=='Negative Beevors'}"><c:out value="checked=checked"/></c:if>>Negative Beevor's&nbsp;&nbsp;&nbsp;</td>
				                  </tr>
				                  </table>
				                  <div id="positive">
				                   <table border="0">
				                   <tr class="row1">
				                    <td><input type="checkbox" name="positiveruq" value="RUQ" <c:if test="${physicalexam.positiveruq=='RUQ'}"><c:out value="checked=checked"/></c:if>>RUQ</td>
				                    <td><input type="checkbox" name="positiveluq" value="LUQ" <c:if test="${physicalexam.positiveluq=='LUQ'}"><c:out value="checked=checked"/></c:if>>LUQ</td>
				                    <td><input type="checkbox" name="positiverlq" value="RLQ" <c:if test="${physicalexam.positiverlq=='RLQ'}"><c:out value="checked=checked"/></c:if>>RLQ</td>
				                    <td><input type="checkbox" name="positivellq" value="LLQ" <c:if test="${physicalexam.positivellq=='LLQ'}"><c:out value="checked=checked"/></c:if>>LLQ</td>
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="highcrestright" value="Right" <c:if test="${physicalexam.highcrestright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="highcrestleft" value="Left" <c:if test="${physicalexam.highcrestleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="highcrestnormal" value="Normal" <c:if test="${physicalexam.highcrestnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>High PSIS:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="highpsisright" value="Right" <c:if test="${physicalexam.highpsisright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="highpsisleft" value="Left" <c:if test="${physicalexam.highpsisleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="highpsisnormal" value="Normal" <c:if test="${physicalexam.highpsisnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Curvature:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="curveright" value="Right"<c:if test="${physicalexam.curveright=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="curveleft" value="Left"<c:if test="${physicalexam.curveleft=='Left'}"><c:out value="checked=checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="curvenormal" value="Normal"<c:if test="${physicalexam.curvenormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 </tr>
				                 <tr class="row1">
				                   <td>Lordosis:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lordosishyper" value="Hyper"<c:if test="${physicalexam.lordosishyper=='Hyper'}"><c:out value="checked=checked"/></c:if>>Hyper</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lordosishypo" value="Hypo"<c:if test="${physicalexam.lordosishypo=='Hypo'}"><c:out value="checked=checked"/></c:if>>Hypo</td>
				                  <td class="input_txt"><input type="checkbox" name="lordosisnormal" value="Normal"<c:if test="${physicalexam.lordosisnormal=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                 
				                  </tr>
				                  </table>
				                
				                <table border="0">
				               <tr class="row1">
				               <td><b>PALPATION:</b></td>
				               
				                  </tr>
				                <tr class="row1">
				                  <td>Paraspinal:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="paraspinalpain" value="Pain"<c:if test="${physicalexam.paraspinalpain=='Pain'}"><c:out value="checked=checked"/></c:if>>Pain</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraspinalspasm" value="Spasm"<c:if test="${physicalexam.paraspinalspasm=='Spasm'}"><c:out value="checked=checked"/></c:if>>Spasm</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraspinaledema" value="Edema"<c:if test="${physicalexam.paraspinaledema=='Edema'}"><c:out value="checked=checked"/></c:if>>Edema</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="paraspinaltp" value="TriggerPoint"<c:if test="${physicalexam.paraspinaltp=='TriggerPoint'}"><c:out value="checked=checked"/></c:if>>TriggerPoint</td>
				                  </tr> 
				                   <tr class="row1">
				                  <td>Quadratus Lumborum:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="quadrl" value="R-L"<c:if test="${physicalexam.quadrl=='R-L'}"><c:out value="checked=checked"/></c:if>>R-L</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="quadtono" value="Tonicity"<c:if test="${physicalexam.quadtono=='Tonocity'}"><c:out value="checked=checked"/></c:if>>Tonicity</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="quadnor" value="Normal"<c:if test="${physicalexam.quadnor=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Hamstring:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hamstringrl" value="R-L"<c:if test="${physicalexam.hamstringrl=='R-L'}"><c:out value="checked=checked"/></c:if>>R-L</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="hamstringtono" value="Tonicity"<c:if test="${physicalexam.hamstringtono=='Tonocity'}"><c:out value="checked=checked"/></c:if>>Tonicity</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="hamstringnor" value="Normal"<c:if test="${physicalexam.hamstringnor=='Normal'}"><c:out value="checked=checked"/></c:if>>Normal</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Vertebrae:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="verfix" value="Fixations"<c:if test="${physicalexam.verfix=='Fixations'}"><c:out value="checked=checked"/></c:if>>Fixations</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="vernofix" value="No_Fixations"<c:if test="${physicalexam.vernofix=='No_Fixations'}"><c:out value="checked=checked"/></c:if>>No Fixations</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Abdomen:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="abdomentender" value="Tender"<c:if test="${physicalexam.abdomentender=='Tender'}"><c:out value="checked=checked"/></c:if>>Tender</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="abdomenpulse" value="Pulsations"<c:if test="${physicalexam.abdomenpulse=='Pulsations'}"><c:out value="checked=checked"/></c:if>>Pulsations</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="abdomenascites" value="Ascites"<c:if test="${physicalexam.abdomenascites=='Ascites'}"><c:out value="checked=checked"/></c:if>>Ascites</td>
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
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lumflexnormal" value="${physicalexam.lumflexnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumflexpain" value="${physicalexam.lumflexpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumflexspasm" value="${physicalexam.lumflexspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumflexstiff" value="${physicalexam.lumflexstiff }"/></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 30:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lumextnormal" value="${physicalexam.lumextnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumextpain" value="${physicalexam.lumextpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumextspasm" value="${physicalexam.lumextspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumextstiff" value="${physicalexam.lumextstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 25:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lumrlfnormal" value="${physicalexam.lumrlfnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumrlfpain" value="${physicalexam.lumrlfpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrlfspasm" value="${physicalexam.lumrlfspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrlfstiff" value="${physicalexam.lumrlfstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 25:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lumllfnormal" value="${physicalexam.lumllfnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumllfpain" value="${physicalexam.lumllfpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumllfspasm" value="${physicalexam.lumllfspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumllfstiff" value="${physicalexam.lumllfstiff }"/></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 30:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lumrrnormal" value="${physicalexam.lumrrnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumrrpain" value="${physicalexam.lumrrpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrrspasm" value="${physicalexam.lumrrspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumrrstiff" value="${physicalexam.lumrrstiff }"/></td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 30:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="lumlrnormal" value="${physicalexam.lumlrnormal }"/></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="lumlrpain" value="${physicalexam.lumlrpain }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumlrspasm" value="${physicalexam.lumlrspasm }"/></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="lumlrstiff" value="${physicalexam.lumlrstiff }"/></td>
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
						                      <option value="0" <c:if test="${physicalexam.hipflexright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.hipflexright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.hipflexright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.hipflexright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.hipflexright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.hipflexright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="hipflexleft">
						                     <option value="0" <c:if test="${physicalexam.hipflexleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.hipflexleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.hipflexleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.hipflexleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.hipflexleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.hipflexleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                 <td>(Leg Ext.) L-3	</td>
				                 <td><select name="legextright">
						                     <option value="0" <c:if test="${physicalexam.legextright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.legextright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.legextright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.legextright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.legextright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.legextright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="legextleft">
						                      <option value="0" <c:if test="${physicalexam.legextleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.legextleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.legextleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.legextleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.legextleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.legextleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				              
				                    <tr class="row1">
				                 <td>(Dorsiflex) L-4	</td>
				                 <td><select name="dorsiflexright">
						                     <option value="0" <c:if test="${physicalexam.dorsiflexright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.dorsiflexright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.dorsiflexright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.dorsiflexright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.dorsiflexright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.dorsiflexright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="dorsiflexleft">
						                     <option value="0" <c:if test="${physicalexam.dorsiflexleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.dorsiflexleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.dorsiflexleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.dorsiflexleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.dorsiflexleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.dorsiflexleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                 <td>(1st digit flex.) L-5	</td>
				                 <td><select name="digitflexright">
						                     <option value="0" <c:if test="${physicalexam.digitflexright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.digitflexright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.digitflexright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.digitflexright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.digitflexright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.digitflexright=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		<td><select name="digitflexleft">
						                     <option value="0" <c:if test="${physicalexam.digitflexleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.digitflexleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.digitflexleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.digitflexleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.digitflexleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                <option value="5" <c:if test="${physicalexam.digitflexleft=='5'}"><c:out value="selected"/></c:if>>5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                  <td>(Heel Walk)L-4/5</td>
				                  <td valign="top" align="left" class="input_txt">
				                  <input type="radio" name="heelright" value="Positive" class="input_txt"   <c:if test="${physicalexam.heelright=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="heelright" value="Negative" class="input_txt"   <c:if test="${physicalexam.heelright=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative &nbsp;&nbsp;&nbsp;</td>
				                  
				                  
				                  
				                  <td valign="top" align="left" class="input_txt">
				                  <input type="radio" name="heelleft" value="Positive" class="input_txt"   <c:if test="${physicalexam.heelleft=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="heelleft" value="Negative" class="input_txt"  <c:if test="${physicalexam.heelleft=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative &nbsp;&nbsp;&nbsp;</td>
				                  </tr>
				                   <tr class="row1">
				                  <td>(Toe Walk)S-1/2</td>
				                  <td valign="top" align="left" class="input_txt">
				                   <input type="radio" name="toeright" value="Positive" class="input_txt"   <c:if test="${physicalexam.toeright=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="toeright" value="Negative" class="input_txt"  <c:if test="${physicalexam.toeright=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative &nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                   <input type="radio" name="toeleft" value="Positive" class="input_txt"   <c:if test="${physicalexam.toeleft=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="toeleft" value="Negative" class="input_txt"  <c:if test="${physicalexam.toeleft=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative &nbsp;&nbsp;&nbsp;</td>
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
						                     <option value="0" <c:if test="${physicalexam.patellarright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.patellarright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.patellarright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.patellarright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.patellarright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
				                   		</select></td>
				                   		<td><select name="patellarleft">
						                    <option value="0" <c:if test="${physicalexam.patellarleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.patellarleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.patellarleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.patellarleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.patellarleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>L-5,S-1,2(Achilles)</td>
				                 <td><select name="achillesright">
						                    <option value="0" <c:if test="${physicalexam.achillesright=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.achillesright=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.achillesright=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.achillesright=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.achillesright=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		<td><select name="achillesleft">
						                     <option value="0" <c:if test="${physicalexam.achillesleft=='0'}"><c:out value="selected"/></c:if>>0</option>
				                  		<option value="1" <c:if test="${physicalexam.achillesleft=='1'}"><c:out value="selected"/></c:if>>1</option>
				                  		<option value="2" <c:if test="${physicalexam.achillesleft=='2'}"><c:out value="selected"/></c:if>>2</option>
				                  		<option value="3" <c:if test="${physicalexam.achillesleft=='3'}"><c:out value="selected"/></c:if>>3</option>
				                  		<option value="4" <c:if test="${physicalexam.achillesleft=='4'}"><c:out value="selected"/></c:if>>4</option>
						                
											
				                   		</select></td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                  <td>Babinski(UMNL)</td>
				                  <td valign="top" align="left" class="input_txt">
				                   <input type="radio" name="babinskiright" value="Positive" class="input_txt"   <c:if test="${physicalexam.babinskiright=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="babinskiright" value="Negative" class="input_txt"  <c:if test="${physicalexam.babinskiright=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative &nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                   <input type="radio" name="babinskileft" value="Positive" class="input_txt"   <c:if test="${physicalexam.babinskileft=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="babinskileft" value="Negative" class="input_txt"  <c:if test="${physicalexam.babinskileft=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative &nbsp;&nbsp;&nbsp;</td>
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
