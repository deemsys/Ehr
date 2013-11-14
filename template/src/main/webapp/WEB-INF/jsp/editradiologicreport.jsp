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
                  <td valign="top" align="left"><input type="submit" class="submit_btn1" value="Update Report" name="insert"></td>
                    
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
						                    <option value="aplower" <c:if test="${radiologicReport.views1=='aplower'}"><c:out value="selected"/></c:if>>A-P lower</option>
						                     <option value="apom" <c:if test="${radiologicReport.views1=='apom'}"><c:out value="selected"/></c:if>>APOM</option>
						                     <option value="lateral"  <c:if test="${radiologicReport.views1=='lateral'}"><c:out value="selected"/></c:if>>L lateral</option>
						                     <option value="rlf" <c:if test="${radiologicReport.views1=='rlf'}"><c:out value="selected"/></c:if>>RLF</option>
						                     <option value="llf" <c:if test="${radiologicReport.views1=='llf'}"><c:out value="selected"/></c:if>>LLF</option>
						                     <option value="rpo" <c:if test="${radiologicReport.views1=='rpo'}"><c:out value="selected"/></c:if>>RPO</option>
						                     <option value="lpo" <c:if test="${radiologicReport.views1=='lpo'}"><c:out value="selected"/></c:if>>LPO</option>
						                     <option value="flex" <c:if test="${radiologicReport.views1=='flex'}"><c:out value="selected"/></c:if>>Flex</option>
						                     <option value="ext" <c:if test="${radiologicReport.views1=='ext'}"><c:out value="selected"/></c:if>>Ext</option>
						                     </select>
						                     </td>
						                     
												<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Negative_for_Osteopathology" name="negative_1" <c:if test="${radiologicReport.negative_1=='Negative_for_Osteopathology'}"><c:out value="Checked"/></c:if>   />Negative for recent fracture, dislocation or gross Osteopathology</td>							                    
						                     			
						                     </tr>
						                     <tr class="row2">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="positive_for" name="positive_for" <c:if test="${radiologicReport.positive_for=='positive_for'}"><c:out value="Checked"/></c:if>   />Positive for
						                     			<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.positive_text1 }" name="positive_text1" /><span class="err"><form:errors path="report.positive_text1"></form:errors></span></td>
						                                
						                                <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Break_in_Georges" name="break_1" <c:if test="${radiologicReport.break_1=='Break_in_Georges'}"><c:out value="Checked"/></c:if>   />Break in Georges line at
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.break_text1 }" name="break_text1" /><span class="err"><form:errors path="report.break_text1"></form:errors></span></td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="ADI_more_than_3mm" name="adi_1" <c:if test="${radiologicReport.adi_1=='ADI_more_than_3mm'}"><c:out value="Checked"/></c:if>   />ADI more than 3mm</td>
						                     			
						                     </tr>
						                     <tr class="row1">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Hypolordosis" name="hypolorodosis_1" <c:if test="${radiologicReport.hypolorodosis_1=='Hypolordosis'}"><c:out value="Checked"/></c:if>   />hypolorodosis</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Normal_Curvature" name="normalcurvature_1" <c:if test="${radiologicReport.normalcurvature_1=='Normal_Curvature'}"><c:out value="Checked"/></c:if>   />Normal_Curvature</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Hyperlordosis" name="hyperlordosis_1" <c:if test="${radiologicReport.hyperlordosis_1=='Hyperlordosis'}"><c:out value="Checked"/></c:if>   />Hyperlordosis
						                     			<select name="hyperlordosis_select1" class="input_cmbbx1">
						                    <option value="mild" <c:if test="${radiologicReport.hyperlordosis_select1=='mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="moderate" <c:if test="${radiologicReport.hyperlordosis_select1=='moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="severe"  <c:if test="${radiologicReport.hyperlordosis_select1=='severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						                     </td>
						          			 </tr>
						          			 
						          			  <tr class="row2">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="McGregors_line_normal" name="mcGregorslinenormal_1" <c:if test="${radiologicReport.mcGregorslinenormal_1=='McGregors_line_normal'}"><c:out value="Checked"/></c:if>   />McGregor's line normal</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="McGregors_line_interupted" name="mcGregorslineinterupted_1" <c:if test="${radiologicReport.mcGregorslineinterupted_1=='McGregors_line_interupted'}"><c:out value="Checked"/></c:if>   />McGregor's line interupted</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Degenerative_joint_disease_at:" name="degenerativejointdisease_1" <c:if test="${radiologicReport.degenerativejointdisease_1=='Degenerative_joint_disease_at:'}"><c:out value="Checked"/></c:if>   />Degenerative joint disease at:
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
						                     		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Narrowed_disc_space_at" name="narrowed_1" <c:if test="${radiologicReport.narrowed_1=='Narrowed_disc_space_at'}"><c:out value="Checked"/></c:if>   />Narrowed disc space at
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.narrowed_text1 }" name="narrowed_text1" /><span class="err"><form:errors path="report.narrowed_text1"></form:errors></span>
						                             </td>   
						                     		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Anterior_osteophytes_at" name="anterior_1" <c:if test="${radiologicReport.anterior_1=='Anterior_osteophytes_at'}"><c:out value="Checked"/></c:if>   />Anterior vertebral body osteophytes at
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.anterior_text1 }" name="anterior_text1" /><span class="err"><form:errors path="report.anterior_text1"></form:errors></span>
						                             </td>  
						                     	 </tr>
						                     	 <tr class="row2">
						                     	 		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Subchondral_sclerosis_of" name="subchondral_1" <c:if test="${radiologicReport.subchondral_1=='Subchondral_sclerosis_of'}"><c:out value="Checked"/></c:if>   />Subchondral sclerosis of
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.subchondral_text1 }" name="subchondral_text1" /><span class="err"><form:errors path="report.subchondral_text1"></form:errors></span>
						                             </td>   
						                     		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Schmorls_nodes_at:" name="schmorls_1" <c:if test="${radiologicReport.schmorls_1=='Schmorls_nodes_at:'}"><c:out value="Checked"/></c:if>   />Schmorl's nodes at:
						                                <input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radiologicReport.schmorls_text1 }" name="schmorls_text1" /><span class="err"><form:errors path="report.schmorls_text1"></form:errors></span>
						                             </td>  
						                     	 
						                     	 
						                     	 </tr>
						                       <tr class="row1">
                  								<td valign="top" align="center">&nbsp;</td>
                  								<td valign="top" align="left"><input type="submit" class="submit_btn1" value="Update Report" name="insert"></td>
                    
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
                
	                            