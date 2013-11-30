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
<body>
<form action="updateradiologicreport" method="post" name="update" id="update">

   <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
	              <h2 align="center" > Edit Radiologic Report<br></br></h2>
	       </div></div> 
	        <div class="contentbox">
	        <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td>
    				<c:set value="${radiologicReportForm.radiologicReport[0]}" var="radiologicReport"/>
   					  <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tr class="row1">
	                              <td>Patient Name:</td>
				                  <input type="hidden" class="input_txtbx1" id="inp_id" value="${radiologicReport.pid}" name="pid" />
                                 <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.pname }" name="pname" /></br><span class="err"><form:errors path="report.pname"></form:errors></span></td>
                                 <td>Date:</td>
                                 <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.date }" name="date" /></br><span class="err"><form:errors path="report.date"></form:errors></span></td>
                                 <td>I.D.#:</td>
                                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.id }" name="id" /></br><span class="err"><form:errors path="report.id"></form:errors></span></td>
               					<td>Date Of Birth</td>
               					 <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.dob }" name="dob" /></br><span class="err"><form:errors path="report.dob"></form:errors></span></td>
               			 </tr>
               			 
                 <tr class="row1">
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="right">&nbsp;</td>
                  <td valign="top" align="right"></td>
                    
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
          <li><a href="#tabs-1">Edit Cervical Spine</a></li>
          <li><a href="#tabs-2">Edit  Thoracic Spine</a></li>
          <li><a href="#tabs-3">Edit Lumbar Spine</a></li>
          <li><a href="#tabs-4">Edit Extremities</a></li>
       </ul>
         
   <div id="tabs-1"> 
   		 <div id="right_content">
		 <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2> EDIT CERVICAL SPINE</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">		                
                               
                        <table border="0">
				               <tr class="row1">
                						<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Views:
                							<select name="views1" class="input_cmbbx1">
						                    <option value="A-P lower" <c:if test="${radiologicReport.views1=='A-P lower'}"><c:out value="selected"/></c:if>>A-P lower</option>
						                     <option value="APOM" <c:if test="${radiologicReport.views1=='APOM'}"><c:out value="selected"/></c:if>>APOM</option>
						                     <option value="L lateral"  <c:if test="${radiologicReport.views1=='L lateral'}"><c:out value="selected"/></c:if>>L lateral</option>
						                     <option value="RLF" <c:if test="${radiologicReport.views1=='RLF'}"><c:out value="selected"/></c:if>>RLF</option>
						                     <option value="LLF" <c:if test="${radiologicReport.views1=='LLF'}"><c:out value="selected"/></c:if>>LLF</option>
						                     <option value="RPO" <c:if test="${radiologicReport.views1=='RPO'}"><c:out value="selected"/></c:if>>RPO</option>
						                     <option value="LPO" <c:if test="${radiologicReport.views1=='LPO'}"><c:out value="selected"/></c:if>>LPO</option>
						                     <option value="Flex" <c:if test="${radiologicReport.views1=='Flex'}"><c:out value="selected"/></c:if>>Flex</option>
						                     <option value="Ext" <c:if test="${radiologicReport.views1=='Ext'}"><c:out value="selected"/></c:if>>Ext</option>
						                     </select>
						                     </td>
						                     
												<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Negative for Osteopathology" name="negative_1" <c:if test="${radiologicReport.negative_1=='Negative for Osteopathology'}"><c:out value="Checked"/></c:if>   />Negative for recent fracture, dislocation or gross Osteopathology</td>							                    
						                     			
						                     </tr>
						                     <tr class="row2">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="positive for" name="positive_for" onclick="this.form.positive1.style.visibility = this.checked? 'visible' : 'hidden'" <c:if test="${radiologicReport.positive_for=='positive for'}"><c:out value="Checked"/></c:if>   />Positive for
						                     			<input type="text" class="input_txtbx1" id="positive1"  style="visibility:hidden" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.positive_text1 }" name="positive_text1" /><span class="err"><form:errors path="report.positive_text1"></form:errors></span></td>
						                                
						                                <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Break in Georges" name="break_1" <c:if test="${radiologicReport.break_1=='Break in Georges'}"><c:out value="Checked"/></c:if>   />Break in Georges line at
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.break_text1 }" name="break_text1" /><span class="err"><form:errors path="report.break_text1"></form:errors></span></td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="ADI more than 3mm" name="adi_1" <c:if test="${radiologicReport.adi_1=='ADI more than 3mm'}"><c:out value="Checked"/></c:if>   />ADI more than 3mm</td>
						                     			
						                     </tr>
						                     <tr class="row1">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Hypolordosis" name="hypolorodosis_1" <c:if test="${radiologicReport.hypolorodosis_1=='Hypolordosis'}"><c:out value="Checked"/></c:if>   />hypolorodosis</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Normal Curvature" name="normalcurvature_1" <c:if test="${radiologicReport.normalcurvature_1=='Normal Curvature'}"><c:out value="Checked"/></c:if>   />Normal_Curvature</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Hyperlordosis" name="hyperlordosis_1" <c:if test="${radiologicReport.hyperlordosis_1=='Hyperlordosis'}"><c:out value="Checked"/></c:if>   />Hyperlordosis
						                     			<select name="hyperlordosis_select1" class="input_cmbbx1">
						                    <option value="Mild" <c:if test="${radiologicReport.hyperlordosis_select1=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radiologicReport.hyperlordosis_select1=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radiologicReport.hyperlordosis_select1=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						                     </td>
						          			 </tr>
						          			 
						          			  <tr class="row2">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="McGregors line normal" name="mcGregorslinenormal_1" <c:if test="${radiologicReport.mcGregorslinenormal_1=='McGregors line normal'}"><c:out value="Checked"/></c:if>   />McGregor's line normal</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="McGregors line interupted" name="mcGregorslineinterupted_1" <c:if test="${radiologicReport.mcGregorslineinterupted_1=='McGregors line interupted'}"><c:out value="Checked"/></c:if>   />McGregor's line interupted</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Degenerative joint disease at:" name="degenerativejointdisease_1" <c:if test="${radiologicReport.degenerativejointdisease_1=='Degenerative joint disease at:'}"><c:out value="Checked"/></c:if>   />Degenerative joint disease at:
						                     			<select name="degenerativejointdisease_select1" class="input_cmbbx1">
						                    <option value="C-2/3" <c:if test="${radiologicReport.degenerativejointdisease_select1=='C-2/3'}"><c:out value="selected"/></c:if>>C-2/3</option>
						                     <option value="C-3/4" <c:if test="${radiologicReport.degenerativejointdisease_select1=='C-3/4'}"><c:out value="selected"/></c:if>>C-3/4</option>
						                     <option value="C-4/5"  <c:if test="${radiologicReport.degenerativejointdisease_select1=='C-4/5'}"><c:out value="selected"/></c:if>>C-4/5</option>
						                     <option value="C-5/6"  <c:if test="${radiologicReport.degenerativejointdisease_select1=='C-5/6'}"><c:out value="selected"/></c:if>>C-5/6</option>
						                     <option value="C-6/7"  <c:if test="${radiologicReport.degenerativejointdisease_select1=='C-6/7'}"><c:out value="selected"/></c:if>>C-6/7</option>
						                     <option value="C-7/T-1"  <c:if test="${radiologicReport.degenerativejointdisease_select1=='C-7/T-1'}"><c:out value="selected"/></c:if>>C-7/T-1</option>
						                     </select>
						                     </td>
						          			 </tr>
						                     <tr class="row1">
						                     		<td valign="top" align="left" class="input_txt">
						                     				<input type="checkbox"  value="Mild" name="mild_1" <c:if test="${radiologicReport.mild_1=='Mild'}"><c:out value="Checked"/></c:if>   />Mild
						                     				<input type="checkbox"  value="Moderate" name="moderate_1" <c:if test="${radiologicReport.moderate_1=='Moderate'}"><c:out value="Checked"/></c:if>   />Moderate
						                     				<input type="checkbox"  value="Severe" name="severe_1" <c:if test="${radiologicReport.severe_1=='Severe'}"><c:out value="Checked"/></c:if>   />Severe
						                     		</td>
						                     		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Narrowed disc space at" name="narrowed_1" <c:if test="${radiologicReport.narrowed_1=='Narrowed disc space at'}"><c:out value="Checked"/></c:if>   />Narrowed disc space at
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.narrowed_text1 }" name="narrowed_text1" /><span class="err"><form:errors path="report.narrowed_text1"></form:errors></span>
						                             </td>   
						                     		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Anterior osteophytes at" name="anterior_1" <c:if test="${radiologicReport.anterior_1=='Anterior osteophytes at'}"><c:out value="Checked"/></c:if>   />Anterior vertebral body osteophytes at
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.anterior_text1 }" name="anterior_text1" /><span class="err"><form:errors path="report.anterior_text1"></form:errors></span>
						                             </td>  
						                     	 </tr>
						                     	 <tr class="row2">
						                     	 		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Subchondral sclerosis of" name="subchondral_1" <c:if test="${radiologicReport.subchondral_1=='Subchondral sclerosis of'}"><c:out value="Checked"/></c:if>   />Subchondral sclerosis of
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.subchondral_text1 }" name="subchondral_text1" /><span class="err"><form:errors path="report.subchondral_text1"></form:errors></span>
						                             </td>   
						                     		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Schmorls nodes at:" name="schmorls_1" <c:if test="${radiologicReport.schmorls_1=='Schmorls nodes at:'}"><c:out value="Checked"/></c:if>   />Schmorl's nodes at:
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.schmorls_text1 }" name="schmorls_text1" /><span class="err"><form:errors path="report.schmorls_text1"></form:errors></span>
						                             </td>  
						                         </tr>
						                     	 <tr class="row1">
						                     	 		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Foraminal enchroachment b/w:" name="foraminal_1" <c:if test="${radiologicReport.foraminal_1=='Foraminal enchroachment b/w:'}"><c:out value="Checked"/></c:if>   />Foraminal enchroachment between:
						                     			<select name="foraminal_select1" class="input_cmbbx1">
						                    <option value="C-2/3" <c:if test="${radiologicReport.foraminal_select1=='C-2/3'}"><c:out value="selected"/></c:if>>C-2/3</option>
						                     <option value="C-3/4" <c:if test="${radiologicReport.foraminal_select1=='C-3/4'}"><c:out value="selected"/></c:if>>C-3/4</option>
						                     <option value="C-4/5"  <c:if test="${radiologicReport.foraminal_select1=='C-4/5'}"><c:out value="selected"/></c:if>>C-4/5</option>
						                     <option value="C-5/6"  <c:if test="${radiologicReport.foraminal_select1=='C-5/6'}"><c:out value="selected"/></c:if>>C-5/6</option>
						                     <option value="C-6/7"  <c:if test="${radiologicReport.foraminal_select1=='C-6/7'}"><c:out value="selected"/></c:if>>C-6/7</option>
						                     <option value="C-7/T-1"  <c:if test="${radiologicReport.foraminal_select1=='C-7/T-1'}"><c:out value="selected"/></c:if>>C-7/T-1</option>
						                     </select>
						                     </td>
						                     
						                     <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Osteoporosis" name="osteoporosis_1" <c:if test="${radiologicReport.osteoporosis_1=='Osteoporosis'}"><c:out value="Checked"/></c:if>   />Osteoporosis
						                     			<select name="osteoporosis_select1" class="input_cmbbx1">
						                    <option value="Mild" <c:if test="${radiologicReport.osteoporosis_select1=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radiologicReport.osteoporosis_select1=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radiologicReport.osteoporosis_select1=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						                     </td>
						                      <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Decreased Flex/Ext:" name="decreasedFlexExt_1" <c:if test="${radiologicReport.decreasedFlexExt_1=='Decreased Flex/Ext:'}"><c:out value="Checked"/></c:if>   /> Decreased Flex/Ext
						                     			<select name="decreasedFlexExt_select1" class="input_cmbbx1">
						                    <option value="Mild" <c:if test="${radiologicReport.decreasedFlexExt_select1=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radiologicReport.decreasedFlexExt_select1=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radiologicReport.decreasedFlexExt_select1=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						                     </td>
						                      </tr>
						                      <tr class="row2">
						                      		<td valign="top" align="left" class="input_txt"><input type="checkbox"  name="decreasedRLFlex_1" value="Decreased R/L Flex:" <c:if test="${radiologicReport.decreasedRLFlex_1=='Decreased R/L Flex:'}"><c:out value="Checked"/></c:if>   /> Decreased R/L Flex
						                     			<select name="decreasedRLFlex_select1" class="input_cmbbx1">
						                    <option value="Mild" <c:if test="${radiologicReport.decreasedRLFlex_select1=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radiologicReport.decreasedRLFlex_select1=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radiologicReport.decreasedRLFlex_select1=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						                     </td>
						                      <td>
						                      		<select name="dextro_Levoscoliosis_towering_select1" class="input_cmbbx1">
						                    <option value="Dextro" <c:if test="${radiologicReport.dextro_Levoscoliosis_towering_select1=='Dextro'}"><c:out value="selected"/></c:if>>Dextro</option>
						                     <option value="Levo scoliosis" <c:if test="${radiologicReport.dextro_Levoscoliosis_towering_select1=='Levo scoliosis'}"><c:out value="selected"/></c:if>>Levo scoliosis</option>
						                     <option value="Towering"  <c:if test="${radiologicReport.dextro_Levoscoliosis_towering_select1=='Towering'}"><c:out value="selected"/></c:if>>Towering</option>
						                     </select>
						                      <input type="checkbox"  value="Mild" name="mild_11" <c:if test="${radiologicReport.mild_11=='Mild'}"><c:out value="Checked"/></c:if>   />Mild
						                     				<input type="checkbox"  value="Moderate" name="moderate_11" <c:if test="${radiologicReport.moderate_11=='Moderate'}"><c:out value="Checked"/></c:if>   />Moderate
						                     				<input type="checkbox"  value="Severe" name="severe_11" <c:if test="${radiologicReport.severe_11=='Severe'}"><c:out value="Checked"/></c:if>   />Severe
						                     	
						                      </td>
						                      </tr>
						                      <tr class="row2">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Apex at:" name="apexat_1" <c:if test="${radiologicReport.apexat_1=='Apex at:'}"><c:out value="Checked"/></c:if>   />Apex at:
						                     			<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.apexat_text1 }" name="apexat_text1" /><span class="err"><form:errors path="report.apexat_text1"></form:errors></span>
						                     			</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Soft tissue edema of" name="softtissueedemaof_1" <c:if test="${radiologicReport.softtissueedemaof_1=='Soft tissue edema of'}"><c:out value="Checked"/></c:if>   />Soft tissue edema of
						                     			<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.softtissueedemaof_text1}" name="softtissueedemaof_text1" /><span class="err"><form:errors path="report.softtissueedemaof_text1"></form:errors></span></td>
														
														<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Other" name="other_1" <c:if test="${radiologicReport.other_1=='Other'}"><c:out value="Checked"/></c:if>   />Other
						                     			<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.other_text1 }" name="other_text1" /><span class="err"><form:errors path="report.other_text1"></form:errors></span></td>
						
						                      			
						                      </tr>
						                      
						                      
						                       <tr class="row1">
                  								<td valign="top" align="center">&nbsp;</td>
                  								<td valign="top" align="left"></td>
                    
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
        	<h2>EDIT THORACIC SPINE</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table border="0">
				               <tr class="row1">
						                    <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Views:
                							<select name="views2" class="input_cmbbx1">
						                    <option value="A-P" <c:if test="${radiologicReport.views2=='A-P'}"><c:out value="selected"/></c:if>>A-P</option>
						                    <option value="lateral"  <c:if test="${radiologicReport.views2=='lateral'}"><c:out value="selected"/></c:if>>L lateral</option>
						          		    <option value="rlf" <c:if test="${radiologicReport.views2=='rlf'}"><c:out value="selected"/></c:if>>RLF</option>       
						                    <option value="llf" <c:if test="${radiologicReport.views2=='llf'}"><c:out value="selected"/></c:if>>LLF</option>
						                     <option value="rpo" <c:if test="${radiologicReport.views2=='rpo'}"><c:out value="selected"/></c:if>>RPO</option>
						                     <option value="lpo" <c:if test="${radiologicReport.views2=='lpo'}"><c:out value="selected"/></c:if>>LPO</option>
						                     <option value="P-A Chest" <c:if test="${radiologicReport.views2=='P-A Chest'}"><c:out value="selected"/></c:if>>Flex</option>
						                     <option value="Lateral Chest" <c:if test="${radiologicReport.views2=='Lateral Chest'}"><c:out value="selected"/></c:if>>Ext</option>
						                     </select>
						                     </td>
						                     
						                     <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Negative for Osteopathology" name="negative_2" <c:if test="${radiologicReport.negative_2=='Negative for Osteopathology'}"><c:out value="Checked"/></c:if>   />Negative for recent fracture, dislocation or gross Osteopathology</td>
						         </tr>
						         <tr class="row2">
						         <td>
						         				 <input type="checkbox"  value="Hyperkyphosis" name="hyperkyphosis_2" <c:if test="${radiologicReport.hyperkyphosis_2=='Hyperkyphosis'}"><c:out value="Checked"/></c:if>   />Hyperkyphosis
						                     				<input type="checkbox"  value="Normal kyphosis" name="normalkyphosis_2" <c:if test="${radiologicReport.normalkyphosis_2=='Normal kyphosis'}"><c:out value="Checked"/></c:if>   />Normal kyphosis
						                     				<input type="checkbox"  value="Hypokyphosis" name="hypokyphosis_2" <c:if test="${radiologicReport.hypokyphosis_2=='Hypokyphosis'}"><c:out value="Checked"/></c:if>   />Hypokyphosis
						                     				
						         </td>
						         
						         <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Degenerative joint disease at:" name="degenerative_2" <c:if test="${radiologicReport.degenerative_2=='Degenerative joint disease at:'}"><c:out value="Checked"/></c:if>   />Degenerative joint disease at:
											<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.degenerative_text2 }" name="degenerative_text2" /><span class="err"><form:errors path="report.degenerative_text2"></form:errors></span>				         			
						         </td>
						         <td valign="top" align="left" class="input_txt">
						                     				<input type="checkbox"  value="Mild" name="mild_2" <c:if test="${radiologicReport.mild_2=='Mild'}"><c:out value="Checked"/></c:if>   />Mild
						                     				<input type="checkbox"  value="Moderate" name="moderate_2" <c:if test="${radiologicReport.moderate_2=='Moderate'}"><c:out value="Checked"/></c:if>   />Moderate
						                     				<input type="checkbox"  value="Severe" name="severe_2" <c:if test="${radiologicReport.severe_2=='Severe'}"><c:out value="Checked"/></c:if>   />Severe
						                     		</td>
						         </tr>
						         <tr class="row1">            		
						          <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Narrowed disc space at:" name="narrowed_2" <c:if test="${radiologicReport.narrowed_2=='Narrowed disc space at:'}"><c:out value="Checked"/></c:if>   />Narrowed disc space at:
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.narrowed_text2 }" name="narrowed_text2" /><span class="err"><form:errors path="report.narrowed_text2"></form:errors></span>
						                             </td>   
						          <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Schmorls nodes at:" name="schmorlsnodesat_2" <c:if test="${radiologicReport.schmorlsnodesat_2=='Schmorls nodes at:'}"><c:out value="Checked"/></c:if>   />Schmorls nodes at:
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.schmorlsnodesat_text2 }" name="schmorlsnodesat_text2" /><span class="err"><form:errors path="report.schmorlsnodesat_text2"></form:errors></span>
						                             </td>   
						                     		                    		           		
						         </tr>
						         <tr class="row2">            		
						          <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Anterior body osteophytes at:" name="anterior_2" <c:if test="${radiologicReport.anterior_2=='Anterior body osteophytes at:'}"><c:out value="Checked"/></c:if>   />Anterior body osteophytes at:
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.anterior_text2 }" name="anterior_text2" /><span class="err"><form:errors path="report.anterior_text2"></form:errors></span>
						                             </td>   
						          <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Subchondral sclerosis of" name="subchondral_2" <c:if test="${radiologicReport.subchondral_2=='Subchondral sclerosis of'}"><c:out value="Checked"/></c:if>   />Subchondral sclerosis of
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.subchondral_text2 }" name="subchondral_text2" /><span class="err"><form:errors path="report.subchondral_text2"></form:errors></span>
						                             </td>   
						          <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Foraminal enchroachment b/w:" name="foraminal_2" <c:if test="${radiologicReport.foraminal_2=='Foraminal enchroachment b/w:'}"><c:out value="Checked"/></c:if>   />Foraminal enchroachment between: 
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.foraminal_text2 }" name="foraminal_text2" /><span class="err"><form:errors path="report.foraminal_text2"></form:errors></span>
						                             </td>               		                    		           		
						         </tr>
						         <tr class="row1">
						         			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Osteoporosis" name="osteoporosis_2" <c:if test="${radiologicReport.osteoporosis_2=='Osteoporosis'}"><c:out value="Checked"/></c:if>   />Osteoporosis
						                     			<select name="osteoporosis_select2" class="input_cmbbx1">
						                    <option value="mild" <c:if test="${radiologicReport.osteoporosis_select2=='mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="moderate" <c:if test="${radiologicReport.osteoporosis_select2=='moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="severe"  <c:if test="${radiologicReport.osteoporosis_select2=='severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						                     </td>
						                     
						                     <td>
						                      		<select name="dextro_Levoscoliosis_towering_select2" class="input_cmbbx1">
						                    <option value="Dextro" <c:if test="${radiologicReport.dextro_Levoscoliosis_towering_select2=='Dextro'}"><c:out value="selected"/></c:if>>Dextro</option>
						                     <option value="Levo scoliosis" <c:if test="${radiologicReport.dextro_Levoscoliosis_towering_select2=='Levo scoliosis'}"><c:out value="selected"/></c:if>>Levo scoliosis</option>
						                     <option value="Towering"  <c:if test="${radiologicReport.dextro_Levoscoliosis_towering_select2=='Towering'}"><c:out value="selected"/></c:if>>Towering</option>
						                     </select>
						                      <input type="checkbox"  value="Mild" name="mild_22" <c:if test="${radiologicReport.mild_22=='Mild'}"><c:out value="Checked"/></c:if>   />Mild
						                     				<input type="checkbox"  value="Moderate" name="moderate_22" <c:if test="${radiologicReport.moderate_22=='Moderate'}"><c:out value="Checked"/></c:if>   />Moderate
						                     				<input type="checkbox"  value="Severe" name="severe_22" <c:if test="${radiologicReport.severe_22=='Severe'}"><c:out value="Checked"/></c:if>   />Severe
						                     	
						                      </td>
						         
						         </tr>
						         <tr class="row2">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Apex at:" name="apexat_2" <c:if test="${radiologicReport.apexat_2=='Apex at:'}"><c:out value="Checked"/></c:if>   />Apex at:
						                     			<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.apexat_text2 }" name="apexat_text2" /><span class="err"><form:errors path="report.apexat_text2"></form:errors></span>
						                     			</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Soft tissue edema of" name="softtissueedemaof_2" <c:if test="${radiologicReport.softtissueedemaof_2=='Soft tissue edema of'}"><c:out value="Checked"/></c:if>   />Soft tissue edema of
						                     			<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.softtissueedemaof_text2}" name="softtissueedemaof_text2" /><span class="err"><form:errors path="report.softtissueedemaof_text2"></form:errors></span></td>
														
														<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Other" name="other_2" <c:if test="${radiologicReport.other_2=='Other'}"><c:out value="Checked"/></c:if>   />Other
						                     			<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.other_text2 }" name="other_text2" /><span class="err"><form:errors path="report.other_text2"></form:errors></span></td>
						
						                      			
						                      </tr>
						         
						         
						         
						           <tr class="row1">
                  								<td valign="top" align="center">&nbsp;</td>
                  								<td valign="top" align="left"></td>
                    
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
        	<h2>EDIT LUMBAR SPINE</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr class="row1">
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table border="0">
				               <tr class="row1">
				              		 <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Views:
                							<select name="views3" class="input_cmbbx1">
						                    <option value="A-P" <c:if test="${radiologicReport.views3=='A-P'}"><c:out value="selected"/></c:if>>A-P</option>
						                    <option value="L lateral"  <c:if test="${radiologicReport.views3=='L lateral'}"><c:out value="selected"/></c:if>>L lateral</option>
						          		      <option value="RPO" <c:if test="${radiologicReport.views3=='RPO'}"><c:out value="selected"/></c:if>>RPO</option>
						                     <option value="LPO" <c:if test="${radiologicReport.views3=='LPO'}"><c:out value="selected"/></c:if>>LPO</option>
						          		    <option value="RLF" <c:if test="${radiologicReport.views3=='RLF'}"><c:out value="selected"/></c:if>>RLF</option>       
						                    <option value="LLF" <c:if test="${radiologicReport.views3=='LLF'}"><c:out value="selected"/></c:if>>LLF</option>
						                  
						                     </select>
						                     </td>
					 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Negative for recent fracture" name="negative_3" <c:if test="${radiologicReport.negative_3=='Negative for recent fracture'}"><c:out value="Checked"/></c:if>   />Negative for recent fracture, dislocation or gross Osteopathology</td>	                     
					</tr>
					<tr class="row2">
							 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Break in Georges" name="break_3" <c:if test="${radiologicReport.break_3=='Break in Georges'}"><c:out value="Checked"/></c:if>   />Break in Georges line at
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.break_text3 }" name="break_text3" /><span class="err"><form:errors path="report.break_text3"></form:errors></span></td>
							 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Osteoporosis" name="osteoporosis_3" <c:if test="${radiologicReport.osteoporosis_3=='Osteoporosis'}"><c:out value="Checked"/></c:if>   />Osteoporosis
						                     			<select name="osteoporosis_select3" class="input_cmbbx1">
						                    <option value="mild" <c:if test="${radiologicReport.osteoporosis_select3=='mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="moderate" <c:if test="${radiologicReport.osteoporosis_select3=='moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="severe"  <c:if test="${radiologicReport.osteoporosis_select3=='severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						    </td>
						     <td>
						         				 <input type="checkbox"  value="Hyperkyphosis" name="hyperkyphosis_3" <c:if test="${radiologicReport.hyperkyphosis_3=='Hyperkyphosis'}"><c:out value="Checked"/></c:if>   />Hyperkyphosis
						                     				<input type="checkbox"  value="Normal kyphosis" name="normalkyphosis_3" <c:if test="${radiologicReport.normalkyphosis_3=='Normal kyphosis'}"><c:out value="Checked"/></c:if>   />Normal kyphosis
						                     				<input type="checkbox"  value="Hypokyphosis" name="hypokyphosis_3" <c:if test="${radiologicReport.hypokyphosis_3=='Hypokyphosis'}"><c:out value="Checked"/></c:if>   />Hypokyphosis
						                     				<select name="hypokyphosos_select_3" class="input_cmbbx1">
						                    <option value="Mild" <c:if test="${radiologicReport.hypokyphosos_select_3=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radiologicReport.hypokyphosos_select_3=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radiologicReport.hypokyphosos_select_3=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
					</tr>	   
					<tr class="row1">
										<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Degenerative joint disease at:" name="degenerative_3" <c:if test="${radiologicReport.degenerative_3=='Degenerative joint disease at:'}"><c:out value="Checked"/></c:if>   />Degenerative joint disease at:
										<select name="degenerative_select3" class="input_cmbbx1">
						                    <option value="L-1/2" <c:if test="${radiologicReport.degenerative_select3=='L-1/2'}"><c:out value="selected"/></c:if>>L-1/2</option>
						                    <option value="L-2/3"  <c:if test="${radiologicReport.degenerative_select3=='L-2/3'}"><c:out value="selected"/></c:if>>L-2/3</option>
						          		    <option value="L-3/4" <c:if test="${radiologicReport.degenerative_select3=='L-3/4'}"><c:out value="selected"/></c:if>>L-3/4</option>       
						                    <option value="L-4/5" <c:if test="${radiologicReport.degenerative_select3=='L-4/5'}"><c:out value="selected"/></c:if>>L-4/5</option>
						                     <option value="L-5/S-1" <c:if test="${radiologicReport.degenerative_select3=='L-5/S-1'}"><c:out value="selected"/></c:if>>L-5/S-1</option>
						                   </select>
						               </td>      
						                    	
										 <td valign="top" align="left" class="input_txt">
						                     				<input type="checkbox"  value="Mild" name="mild_3" <c:if test="${radiologicReport.mild_3=='Mild'}"><c:out value="Checked"/></c:if>   />Mild
						                     				<input type="checkbox"  value="Moderate" name="moderate_3" <c:if test="${radiologicReport.moderate_3=='Moderate'}"><c:out value="Checked"/></c:if>   />Moderate
						                     				<input type="checkbox"  value="Severe" name="severe_3" <c:if test="${radiologicReport.severe_3=='Severe'}"><c:out value="Checked"/></c:if>   />Severe
						                     		</td>
						                 		
						          <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Narrowed disc space at" name="narrowed_3" <c:if test="${radiologicReport.narrowed_3=='Narrowed disc space at'}"><c:out value="Checked"/></c:if>   />Narrowed disc space at:
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.narrowed_text3 }" name="narrowed_text3" /><span class="err"><form:errors path="report.narrowed_text3"></form:errors></span>
						                             </td>

								</tr>
								<tr class="row2">  
										<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Anterior osteophytes at" name="anterior_3" <c:if test="${radiologicReport.anterior_3=='Anterior osteophytes at'}"><c:out value="Checked"/></c:if>   />Anterior vertebral body osteophytes at
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.anterior_text3 }" name="anterior_text3" /><span class="err"><form:errors path="report.anterior_text3"></form:errors></span>
						                             </td>  
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Subchondral sclerosis of" name="subchondral_3" <c:if test="${radiologicReport.subchondral_3=='Subchondral sclerosis of'}"><c:out value="Checked"/></c:if>   />Subchondral sclerosis of
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.subchondral_text3 }" name="subchondral_text3" /><span class="err"><form:errors path="report.subchondral_text3"></form:errors></span>
						                             </td>   
						                     		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Schmorls nodes at:" name="schmorls_3" <c:if test="${radiologicReport.schmorls_3=='Schmorls nodes at:'}"><c:out value="Checked"/></c:if>   />Schmorl's nodes at:
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.schmorls_text3 }" name="schmorls_text3" /><span class="err"><form:errors path="report.schmorls_text3"></form:errors></span>
						                             </td>  
						                         </tr>
						                         <tr class="row1">
						                         		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Spondylolisthesis of" name="spondylolisthesisof_3" <c:if test="${radiologicReport.spondylolisthesisof_3=='Spondylolisthesis of'}"><c:out value="Checked"/></c:if>   />Spondylolisthesis of
										<select name="spondylolisthesisof_select3" class="input_cmbbx1">
						                    <option value="L-4" <c:if test="${radiologicReport.spondylolisthesisof_select3=='L-4'}"><c:out value="selected"/></c:if>>L-4</option>
						                    <option value="L-5"  <c:if test="${radiologicReport.spondylolisthesisof_select3=='L-5'}"><c:out value="selected"/></c:if>>L-5</option>
						          		     </select>
						               </td>   
						                <td>Other:<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.other_text3 }" name="other_text3" /></br><span class="err"><form:errors path="report.other_text3"></form:errors></span></td>
						             <td valign="middle" align="left" class="input_txt">Grade:
                							<select name="grade_3" class="input_cmbbx1">
						                    <option value="I" <c:if test="${radiologicReport.grade_3=='I'}"><c:out value="selected"/></c:if>>I</option>
						                     <option value="II" <c:if test="${radiologicReport.grade_3=='II'}"><c:out value="selected"/></c:if>>II</option>
						                     <option value="III"  <c:if test="${radiologicReport.grade_3=='III'}"><c:out value="selected"/></c:if>>III</option>
						                     <option value="IV" <c:if test="${radiologicReport.grade_3=='IV'}"><c:out value="selected"/></c:if>>IV</option>
						                     </select>
						         </td>
						                             
						                         
						  </tr>
						  <tr class="row1">
						  		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Decreased RLF" name="decreasedRLF_3" <c:if test="${radiologicReport.decreasedRLF_3=='Decreased RLF'}"><c:out value="Checked"/></c:if>   /> Decreased RLF</td>
								<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Decreased LLF" name="decreasedLLF_3" <c:if test="${radiologicReport.decreasedLLF_3=='Decreased LLF'}"><c:out value="Checked"/></c:if>   /> Decreased LLF</td>
								<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Facet tropism" name="facettropism_3" <c:if test="${radiologicReport.facettropism_3=='Facet tropism'}"><c:out value="Checked"/></c:if>   /> Facet tropism</td>
													  
						  </tr>
						  <tr class="row2">
						  		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Sacralization" name="sacralization_3" <c:if test="${radiologicReport.sacralization_3=='Sacralization'}"><c:out value="Checked"/></c:if>   /> Sacralization</td>
								<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Lumbarization" name="lumbarization_3" <c:if test="${radiologicReport.lumbarization_3=='Lumbarization'}"><c:out value="Checked"/></c:if>   /> Lumbarization</td>
						 		<td>
						                      		<select name="dextro_Levoscoliosis_towering_select3" class="input_cmbbx1">
						                    <option value="Dextro" <c:if test="${radiologicReport.dextro_Levoscoliosis_towering_select3=='Dextro'}"><c:out value="selected"/></c:if>>Dextro</option>
						                     <option value="Levo scoliosis" <c:if test="${radiologicReport.dextro_Levoscoliosis_towering_select3=='Levo scoliosis'}"><c:out value="selected"/></c:if>>Levo scoliosis</option>
						                     <option value="Towering"  <c:if test="${radiologicReport.dextro_Levoscoliosis_towering_select3=='Towering'}"><c:out value="selected"/></c:if>>Towering</option>
						                     </select>
						                      <input type="checkbox"  value="Mild" name="mild_33" <c:if test="${radiologicReport.mild_33=='Mild'}"><c:out value="Checked"/></c:if>   />Mild
						                     				<input type="checkbox"  value="Moderate" name="moderate_33" <c:if test="${radiologicReport.moderate_33=='Moderate'}"><c:out value="Checked"/></c:if>   />Moderate
						                     				<input type="checkbox"  value="Severe" name="severe_33" <c:if test="${radiologicReport.severe_33=='Severe'}"><c:out value="Checked"/></c:if>   />Severe
						                     	
						                      </td>
						 
						 
						 
						 </tr>	
						 
						  <tr class="row1">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Apex at:" name="apexat_3" <c:if test="${radiologicReport.apexat_3=='Apex at:'}"><c:out value="Checked"/></c:if>   />Apex at:
						                     			<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.apexat_text3 }" name="apexat_text3" /><span class="err"><form:errors path="report.apexat_text3"></form:errors></span>
						                     			</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Soft tissue edema of" name="softtissueedemaof_3" <c:if test="${radiologicReport.softtissueedemaof_3=='Soft tissue edema of'}"><c:out value="Checked"/></c:if>   />Soft tissue edema of
						                     			<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.softtissueedemaof_text3}" name="softtissueedemaof_text3" /><span class="err"><form:errors path="report.softtissueedemaof_text3"></form:errors></span></td>
														
														<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Other" name="other_3" <c:if test="${radiologicReport.other_3=='Other'}"><c:out value="Checked"/></c:if>   />Other
						                     			<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.other_text33 }" name="other_text33" /><span class="err"><form:errors path="report.other_text33"></form:errors></span></td>
						
						                      			
						                      </tr>	
						      <tr class="row1">
                  								<td valign="top" align="center">&nbsp;</td>
                  								<td valign="top" align="left"></td>
                    
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
						    
						      <div id="tabs-4">
    <div id="right_content">
				                
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>EXTREMITIES</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table border="0">
				               <tr class="row1">
				               		 <td>Views:<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.views4 }" name="views4" /></br><span class="err"><form:errors path="report.views4"></form:errors></span></td>
				              		 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Normal" name="normal_4" <c:if test="${radiologicReport.normal_4=='Normal'}"><c:out value="Checked"/></c:if>   />Normal</td>
				              		 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Positive for" name="positivefor_4" <c:if test="${radiologicReport.positivefor_4=='Positive for'}"><c:out value="Checked"/></c:if>   />Positive for</td>
				               	</tr>
				               	<tr class="row1">
                  								 <td>&nbsp;&nbsp;</td>
                  								<td><input type="submit" class="submit_btn1" value="Update" name="insert"></td>
                  								
				                    
				                    <td><input type="button" class="submit_btn1" value="Cancel" onclick="window.location.href='viewradiologicreport'"></td>
                    
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
	