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
                  <td> Views :</td>
                     
                   <td>${radiologicReport.views1}</td>
                </tr>
                 <tr class="row1">
                   <td>${radiologicReport.negative_1}</td>
                </tr>
                 <tr class="row2">
                  <td>${radiologicReport.positive_for} ${radiologicReport.positive_text1}</td>
                </tr>
                 <tr class="row1">
                  <td> ${radiologicReport.break_1}  ${radiologicReport.break_text1}</td>
                </tr>
                 <tr class="row2">
                  <td> ${radiologicReport.adi_1}  </td>
                </tr>
                <tr class="row1">
                  <td>${radiologicReport.hypolorodosis_1} </td>
                  <td> ${radiologicReport.normalcurvature_1} </td>
                  <td> ${radiologicReport.hyperlordosis_1} </td>
                  <td>${radiologicReport.hyperlordosis_select1}</td>
                </tr>
                <tr class="row2">
                  <td>${radiologicReport.mcGregorslinenormal_1} </td>
                   <td> ${radiologicReport.mcGregorslineinterupted_1}</td>  
                    <td>${radiologicReport.degenerativejointdisease_1}  </td>
                  <td> ${radiologicReport.degenerativejointdisease_select1} </td>
                </tr>
                 <tr class="row1">
                  <td>${radiologicReport.mild_1} </td>
                  <td> ${radiologicReport.moderate_1}  </td>
                  <td>  ${radiologicReport.severe_1}</td>
                </tr>
                <tr class="row2">
                  <td> ${radiologicReport.narrowed_1}  ${radiologicReport.narrowed_text1}</td>
                    
                  <td>${radiologicReport.anterior_1}  ${radiologicReport.anterior_text1}  </td>
                </tr> <tr class="row1">
                  <td> ${radiologicReport.subchondral_1}  ${radiologicReport.subchondral_text1} </td>
                  <td>${radiologicReport.schmorls_1} ${radiologicReport.schmorls_text1}</td>
                  
                </tr>
                <tr class="row2">
                  <td>  ${radiologicReport.foraminal_1} </td>
                    
                  <td> ${radiologicReport.foraminal_select1} </td>
                </tr> <tr class="row1">
                  <td>${radiologicReport.osteoporosis_1} </td>
                  
                  <td>  ${radiologicReport.osteoporosis_select1}</td>
                </tr>
                <tr class="row2">
                  <td>  ${radiologicReport.decreasedFlexExt_1} </td>
                   <td> ${radiologicReport.decreasedFlexExt_select1} </td>
                  
                  <td>${radiologicReport.decreasedRLFlex_1}</td>
                  <td>${radiologicReport.decreasedRLFlex_select1}</td>
                </tr> <tr class="row1">
                  <td> ${radiologicReport.dextro_Levoscoliosis_towering_select1}</td>
                  
                  <td>  ${radiologicReport.mild_11}  ${radiologicReport.moderate_11}  ${radiologicReport.severe_11}</td>
                </tr>
                <tr class="row2">
                  <td>  ${radiologicReport.apexat_1}  ${radiologicReport.apexat_text1} </td>
                    
                  <td>${radiologicReport.softtissueedemaof_1}  ${radiologicReport.softtissueedemaof_text1}  </td>
                </tr> <tr class="row1">
                  <td> ${radiologicReport.other_1}  ${radiologicReport.other_text1}</td>
                
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
               
              <div id="tabs-2"> 
   		 <div id="right_content">
    <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;"></td>
      </tr>
      <tr>
        <td valign="top" align="left"><div>
            <div class="headings altheading">
              <h2>Thoracic Spine</h2>
            </div>
            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
            
            <c:forEach items="${radiologicReportForm.radiologicReport}" var="radiologicReport" varStatus="status">
                   <tr class="row2">
                 	 <td> Views :</td>
                     <td>${radiologicReport.views2}</td>
               	   </tr>
                   <tr class="row1">
                 	 <td>${radiologicReport.negative_2}</td>
                     <td>${radiologicReport.hyperkyphosis_2}</td>
                     <td>${radiologicReport.normalkyphosis_2}</td>
                     <td>${radiologicReport.hypokyphosis_2}</td>
               	   </tr>
               	   <tr class="row2">
                 	 <td> ${radiologicReport.degenerative_2} ${radiologicReport.degenerative_text2}</td>
               	   </tr>
               	    <tr class="row1">
                   		 <td>${radiologicReport.mild_2}  ${radiologicReport.moderate_2}  ${radiologicReport.severe_2}</td>
                   		 <td> ${radiologicReport.narrowed_2}   ${radiologicReport.narrowed_text2}</td>
                   		 
               	   </tr>
               	   <tr class="row2">
                 	 <td> ${radiologicReport.schmorlsnodesat_2}  ${radiologicReport.schmorlsnodesat_text2}</td>
                     <td>${radiologicReport.anterior_2} ${radiologicReport.anterior_text2}</td>
               	   </tr>
               	    <tr class="row1">
                 	 <td>${radiologicReport.subchondral_2}  ${radiologicReport.subchondral_text2}</td>
                     <td>${radiologicReport.foraminal_2} ${radiologicReport.foraminal_text2}</td>
               	   </tr>
               	   <tr class="row2">
                 	 <td> ${radiologicReport.osteoporosis_2}  </td>
                     <td>${radiologicReport.osteoporosis_select2}</td>
               	   </tr>
               	    <tr class="row1">
                 	 <td>${radiologicReport.dextro_Levoscoliosis_towering_select2}</td>
                     <td>${radiologicReport.mild_22} ${radiologicReport.moderate_22}  ${radiologicReport.severe_22}</td>
               	   </tr>
               	   <tr class="row2">
                 	 <td> ${radiologicReport.apexat_2}  ${radiologicReport.apexat_text2}</td>
                     <td>${radiologicReport.softtissueedemaof_2} ${radiologicReport.softtissueedemaof_text2}</td>
               	   </tr>
               	    <tr class="row1">
                 	 <td>${radiologicReport.other_2} ${radiologicReport.other_text2}</td>
                    
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
             
                
               <div id="tabs-3"> 
   		 <div id="right_content">
    <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;"></td>
      </tr>
      <tr>
        <td valign="top" align="left"><div>
            <div class="headings altheading">
              <h2>Lumbar Spine</h2>
            </div>
            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
            
            <c:forEach items="${radiologicReportForm.radiologicReport}" var="radiologicReport" varStatus="status">
                   <tr class="row2">
                 	 <td> Views :</td>
                     <td>${radiologicReport.views3}</td>
               	   </tr> 
               	   <tr class="row1">
                 	 <td>${radiologicReport.negative_3}</td>
                     <td>${radiologicReport.break_3}  ${radiologicReport.break_text3}</td>
               	   </tr>
               	   <tr class="row2">
                 	 <td>${radiologicReport.osteoporosis_3}</td>
                     <td>${radiologicReport.osteoporosis_select3}</td>
               	   </tr>   
               	   <tr class="row1">
                 	 <td>${radiologicReport.hyperkyphosis_3}  ${radiologicReport.normalkyphosis_3}  ${radiologicReport.hypokyphosis_3}  ${radiologicReport.hypokyphosos_select_3} </td>
                     <td>${radiologicReport.degenerative_3}  ${radiologicReport.degenerative_select3}</td>
               	   </tr>
               	   <tr class="row2">
                 	 <td> ${radiologicReport.mild_3}  ${radiologicReport.moderate_3}  ${radiologicReport.severe_3}</td>
                     <td>${radiologicReport.narrowed_3}  ${radiologicReport.narrowed_text3}</td>
               	   </tr>   
               	   <tr class="row1">
                 	 <td>${radiologicReport.anterior_3}  ${radiologicReport.anterior_text3} </td>
                     <td>${radiologicReport.subchondral_3}  ${radiologicReport.subchondral_text3}</td>
                     <td>${radiologicReport.schmorls_3}  ${radiologicReport.schmorls_text3}</td>
               	   </tr>
               	   <tr class="row2">
                 	 <td>${radiologicReport.spondylolisthesisof_3} </td>
                     <td>${radiologicReport.spondylolisthesisof_select3}</td>
               	   </tr>   
               	   <tr class="row1">
                 	 <td> Other:</td>
                     <td>${radiologicReport.other_text3}</td>
                     <td>Grade:</td>
                     <td>${radiologicReport.grade_3}</td>
                     </tr>
                    <tr class="row1">
                 	 <td>${radiologicReport.decreasedRLF_3}  ${radiologicReport.decreasedLLF_3}  ${radiologicReport.facettropism_3}</td>
                     <td>${radiologicReport.sacralization_3}  ${radiologicReport.lumbarization_3}</td>
                    </tr>
                    <tr class="row2">
                 	 <td>${radiologicReport.dextro_Levoscoliosis_towering_select3}</td>
                     <td>${radiologicReport.mild_33}  ${radiologicReport.moderate_33}  ${radiologicReport.severe_33}</td>
                    </tr>
                    <tr class="row1">
                 	 <td>${radiologicReport.apexat_3}  ${radiologicReport.apexat_text3}</td>
                     <td>${radiologicReport.softtissueedemaof_3}  ${radiologicReport.softtissueedemaof_text3}</td>
                    </tr>
                    <tr class="row2">
                 	 <td>${radiologicReport.other_3}  ${radiologicReport.other_text33}</td>
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
                   
                   
                   
                   
                     <div id="tabs-4"> 
   		 <div id="right_content">
    <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;"></td>
      </tr>
      <tr>
        <td valign="top" align="left"><div>
            <div class="headings altheading">
              <h2>Extremities</h2>
            </div>
            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
            
            <c:forEach items="${radiologicReportForm.radiologicReport}" var="radiologicReport" varStatus="status">
                   <tr class="row2">
                 	 <td> Views :</td>
                     <td>${radiologicReport.views4}</td>
               	   </tr> 
               	    <tr class="row1">
                 	
                     <td>${radiologicReport.normal_4}</td>
               	   </tr> 
               	    <tr class="row2">
                 
                     <td>${radiologicReport.positivefor_4}</td>
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
              	   
                   
                   
                   
                   
                   
                   
                   
                   
                   </div>
                   </td>
                 </tr>
               </table>
               </div>
               </td>
               </tr>
               </table>
               </form>
               </html>