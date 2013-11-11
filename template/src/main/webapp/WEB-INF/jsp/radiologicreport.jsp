<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<form method="POST" action="radiologicreport">

<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
	              <h2 align="center" >Radiologic Report<br></b></h2>
	       </div></div> 
	        <div class="contentbox">
	        <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td>
    				<table cellpadding="0" cellspacing="0" border="0" width="100%">
	                            <tr class="row1">
				                  <td>Patient Name:</td>
				                  <td><input type="text" class="input_txtbx1" id="inp_id" name="pname" /></td>
				                  <td>Date:</td>
				                  <td><input type="text" class="input_txtbx1" id="inp_id" name="date" /></td>
				                  <td>I.D.#:</td>
				                  <td><input type="text" class="input_txtbx1" id="inp_id" name="id" /></td>
				                  <td>Date Of Birth</td>
				                  <td><input type="text" class="input_txtbx1" id="inp_id" name="dob" /></td>
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
          <li><a href="#tabs-1">Cervical Spine</a></li>
          <li><a href="#tabs-2">Thoracic Spine</a></li>
          <li><a href="#tabs-3">Lumbar Spine</a></li>
          <li><a href="#tabs-4">Extremities</a></li>
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
				               <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Views:
				                  	
				                  		<select name="views1" class="input_cmbbx1">
						                    <option selected="selected" value="aplower" >A-P lower</option>
											<option value="apom">APOM</option>
											<option value="lateral">L lateral</option>
											<option value="rlf">RLF</option>
											<option value="llf">LLF</option>
											<option value="rpo">RPO</option>
											<option value="lpo">LPO</option>
											<option value="flex">Flex</option>
											<option value="ext">Ext</option>
				                   		</select>
				                   		</td>
				                   	<td valign="top" align="left" class="input_txt"> <input type="checkbox" value="negative_1">  Negative for recent fracture, dislocation or gross Osteopathology</td>
				                  </tr> 
				                   	 <tr class="row2">
				             
				                 <td class="input_txt" align="left"> <input type="checkbox" value="positive_1"> Positive for
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="positive_text1" />
				                 </td>
				                 <td class="input_txt"><input type="checkbox" value="break_1"> Break in Georges line at 
				           		        <input type="text" class="input_txtbx1" id="inp_id" name="break_text1" />
				           		 </td>
				           		 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="adi_1"> ADI more than 3mm</td>
				           		
				                 
				                  </tr>
				                   <tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="hypolordosis_1"> Hypolordosis</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="normalcurvature_1"> Normal Curvature</td>    
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="hyperlordosis_1"> Hyperlordosis
				                 	 
				                 	 
				                 	 <select name="hyperlordosis_select1" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
									</select>		
									</td> 
											
				                  </tr>
				                                     
				                   <tr class="row2">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="mcGregorslinenormal_1"> McGregor's line normal</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="mcGregorslineinterupted_1"> McGregor's line interupted more than 8-M or 10-F mm</td>    
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="degenerativejointdisease_1"> Degenerative joint disease at:
				                 	 
				                 	 
				                 	 <select name="degenerativejointdisease_select1" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="C-2/3" >C-2/3</option>
											<option value="C-3/4">C-3/4</option>
											<option value="C-4/5">C-4/5</option>
											<option value="C-5/6">C-5/6</option>
											<option value="C-6/7">C-6/7</option>
											<option value="C-7/T-1">C-7/T-1</option>
									</select>		
									</td>               
								 <tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="mild_1"> Mild
				                 	 												  <input type="checkbox" value="moderate_1"> Moderate
				                 	 												  <input type="checkbox" value="severe_1"> Severe
				                 	 </td> 
				                 	  <td class="input_txt" align="left"> <input type="checkbox" value="narrowed_1"> Narrowed disc space at
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="narrowed_text1" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" value="anterior_1"> Anterior vertebral body osteophytes at
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="anterior_text1" />
				                 	 </td> 		
				                 </tr>
				                 <tr class="row2">
				             			 <td class="input_txt" align="left"> <input type="checkbox" value="subchondral_1"> Subchondral sclerosis of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="subchondral_text1" />
				                	 </td>
				                	 <td class="input_txt" align="left"> <input type="checkbox" value="schmorls_1"> Schmorl's nodes at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="schmorls_text1" />
				                	 </td>
				                 </tr>
				                 <tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="foraminal_1"> Foraminal enchroachment between:
				                 	 
				                 	 
				                 	 <select name="foraminal_select1" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="C-2/3" >C-2/3</option>
											<option value="C-3/4">C-3/4</option>
											<option value="C-4/5">C-4/5</option>
											<option value="C-5/6">C-5/6</option>
											<option value="C-6/7">C-6/7</option>
											<option value="C-7/T-1">C-7/T-1</option>
									 </select>		
									</td>               
				                    <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="osteoporosis_1"> Osteoporosis
				                 	 
				                 	 
				                 	 <select name="osteoporosis_select1" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
									</select>		
									</td> 
									 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="decreasedFlexExt_1"> Decreased Flex/Ext
				                 	 
				                 	 
				                 	 <select name="decreasedFlexExt_select1" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
									</select>		
									</td>    
				                 </tr>
				                 <tr class="row2">		  
				                     
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="decreasedRLFlex_1"> Decreased R/L Flex
				                 	 
				                 	 
				                 	 <select name="decreasedRLFlex_select1" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
									</select>		
									</td> 
									<td valign="top" align="left" class="input_txt">
										<select name="dextro_Levoscoliosis_towering_select1" class="input_cmbbx1">
				                 	             
						                    <option selected="selected" value="dextro" >Dextro</option>
											<option value="levoscoliosis">Levo scoliosis</option>
											<option value="towering">Towering</option>
								    	  </select>
								 	  
								    	 <input type="checkbox" value="mild_11"> Mild
				                    	 <input type="checkbox" value="moderate_11"> Moderate   
				                 		<input type="checkbox" value="severe_11"> Severe
				                 	    </td>
										
									    
				                 </tr>
				                 <tr class="row1">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" value="apexat_1"> Apex at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="apexat_text1" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" value="softtissueedemaof_1"> Soft tissue edema of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="softtissueedemaof_text1" />
				                 	 </td>
				                  	 <td class="input_txt" align="left"> <input type="checkbox" value="other_1"> Other
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="other_text1" />
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
				                   <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Views:
				                  		<select name="views2" class="input_cmbbx1">
											<option selected="selected" value="ap" >A-P</option>
											<option value="lateral">L lateral</option>
											<option value="rlf">RLF</option>
											<option value="llf">LLF</option>
											<option value="rpo">RPO</option>
											<option value="lpo">LPO</option>
											<option value="P-AChest">P-A Chest</option>
											<option value="lateralChest">Lateral Chest</option>
				                   		 </select>
				                   	</td>
				                   	<td valign="top" align="left" class="input_txt"> <input type="checkbox" value="negative_2">  Negative for recent fracture, dislocation or gross Osteopathology</td>
				                  </tr>
				                  <tr class="row2">
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="hyperkyphosis_2"> Hyperkyphosis 
				                   													<input type="checkbox" value="normalkyphosis_2"> Normal kyphosis 
				                   													<input type="checkbox" value="hypokyphosis_2"> Hypokyphosis
				                   </td>  	
				                  <td class="input_txt" align="left"> <input type="checkbox" value="degenerative_2"> Degenerative joint disease at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="degenerative_text2" />
				                	 </td>
				                	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="mild_2"> Mild
				                    													 <input type="checkbox" value="moderate_2"> Moderate   
				                 														 <input type="checkbox" value="severe_2"> Severe
				                 	    </td>	
				                   </tr>
				                    <tr class="row1">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" value="narrowed_2"> Narrowed disc space at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="narrowed_text2" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" value="schmorlsnodesat_2"> Schmorl's nodes at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="schmorlsnodesat_text2" />
				                 	 </td>
				                    </tr>	 
				                 	 <tr class="row2">
				             			<td class="input_txt" align="left"> <input type="checkbox" value="anterior_2"> Anterior vertebral body osteophytes at:
				                 			<input type="text" class="input_txtbx1" id="inp_id" name="anterior_text2" />
				                		 </td>
				               	    	 <td class="input_txt" align="left"> <input type="checkbox" value="subchondral_2"> Subchondral sclerosis of
				                 			<input type="text" class="input_txtbx1" id="inp_id" name="subchondral_text2" />
				                 	 	</td>
				                 	 	<td class="input_txt" align="left"> <input type="checkbox" value="foraminal_2"> Foraminal enchroachment between:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="foraminal_text2" />
				                	 </td>
				                 	</tr>
				                 	<tr class="row1">
				             			<td valign="top" align="left" class="input_txt"> <input type="checkbox" value="osteoporosis_2"> Osteoporosis
				                 	 		<select name="osteoporosis_select2" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
											</select>		
										</td> 
										<td valign="top" align="left" class="input_txt">
										<select name="dextro_Levoscoliosis_towering_select2" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="dextro" >Dextro</option>
											<option value="levoscoliosis">Levo scoliosis</option>
											<option value="towering">Towering</option>
								    	  </select>
								 	  
								    	 <input type="checkbox" value="mild_22"> Mild
				                    	 <input type="checkbox" value="moderate_22"> Moderate   
				                 		<input type="checkbox" value="severe_22"> Severe
				                 	    </td>
				                </tr>
				                <tr class="row1">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" value="apexat_2"> Apex at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="apexat_text2" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" value="softtissueedemaof_2"> Soft tissue edema of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="softtissueedemaof_text2" />
				                 	 </td>
				                  	 <td class="input_txt" align="left"> <input type="checkbox" value="other_2"> Other
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="other_text2" />
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
				</div> 
			</div>
			  					<div id="tabs-3">
				                 
				                 <div id="right_content">
				                
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>LUMBAR SPINE</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table border="0">
				               <tr class="row1">
				              
				                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Views:
				                  		<select name="views3" class="input_cmbbx1">
											<option selected="selected" value="ap" >A-P</option>
											<option value="lateral">L lateral</option>
											<option value="rpo">RPO</option>
											<option value="lpo">LPO</option>
											<option value="rlf">RLF</option>
											<option value="llf">LLF</option>
				                   		 </select>
				                   	</td>
				                   	<td valign="top" align="left" class="input_txt"> <input type="checkbox" value="negative_3">  Negative for recent fracture, dislocation or gross Osteopathology</td>
				                  </tr>
				                  <tr class="row2">
				                  	 <td class="input_txt"><input type="checkbox" value="break_3"> Break in Georges line at 
				           		        <input type="text" class="input_txtbx1" id="inp_id" name="break_text3" />
				           		 	 </td>
				           		 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="osteoporosis_3"> Osteoporosis
				                 	 		<select name="osteoporosis_select3" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
											</select>		
										</td>
										 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="hyperkyphosis_3"> Hyperkyphosis 
				                   													<input type="checkbox" value="normalkyphosis_3"> Normal kyphosis 
				                   													<input type="checkbox" value="hypokyphosis_3"> Hypokyphosis
				                   													<select name="hypokyphosos_select_3" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
											</select>		
				                   		</td>   
				                  </tr>
				                  <tr class="row1">
				                  	 <td class="input_txt" align="left"> <input type="checkbox" value="degenerative_3"> Degenerative joint disease at: 
				                	 
				                  		<select name="degenerative_select3" class="input_cmbbx1">
											<option selected="selected" value="L-1/2" >L-1/2</option>
											<option value="L-2/3">L-2/3</option>
											<option value="L-3/4">L-3/4</option>
											<option value="L-4/5">L-4/5</option>
											<option value="L-5/S-1">L-5/ S-1</option>
				                   		 </select>
				                   		  <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="mild_3"> Mild
				                 	 												  <input type="checkbox" value="moderate_3"> Moderate
				                 	 												  <input type="checkbox" value="severe_3"> Severe
				                 	 </td> 
				                 	  <td class="input_txt" align="left"> <input type="checkbox" value="narrowed_3"> Narrowed disc space at
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="narrowed_text3" />
				                	 </td>
				                	 </tr>
				                	 <tr class="row2">
				               	     <td class="input_txt" align="left"> <input type="checkbox" value="anterior_3"> Anterior vertebral body osteophytes at
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="anterior_text3" />
				                 	 </td> 	
				                 	  <td class="input_txt" align="left"> <input type="checkbox" value="subchondral_3"> Subchondral sclerosis of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="subchondral_text3" />
				                	 </td>
				                 	  <td class="input_txt" align="left"> <input type="checkbox" value="schmorls_3"> Schmorl's nodes at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="schmorls_text3" />
				                	 </td>
				                 	 </tr>
				                 	  <tr class="row1">
				                  	 <td class="input_txt" align="left"> <input type="checkbox" value="spondylolisthesisof_3"> Spondylolisthesis of 
				                	 
				                  		<select name="spondylolisthesisof_select3" class="input_cmbbx1">
											<option selected="selected" value="L-4" >L-4</option>
											<option value="l-5">L-5</option>
										</select>
									</td>
									 <td valign="middle" align="left" class="input_txt">Other:
				           		        <input type="text" class="input_txtbx1" id="inp_id" name="other_text3" />
				           		 	 </td>
				           		 	 <td valign="middle" align="left" class="input_txt">Grade:
				           		 	 	<select name="grade_3" class="input_cmbbx1">
											<option selected="selected" value="I" >I</option>
											<option  value="II" >II</option>
											<option  value="III" >III</option>
											<option  value="IV" >IV</option>
										</select>
									</td>		
									</tr>
	
									 <tr class="row2">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="decreasedRLF_3"> Decreased RLF</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="decreasedLLF_3"> Decreased LLF</td>    
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="facettropism_3"> Facet tropism</td> 		
									</tr>
									<tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="sacralization_3"> Sacralization</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="lumbarization_3"> Lumbarization</td>    
				                 	 <td valign="top" align="left" class="input_txt">
										<select name="dextro_Levoscoliosis_towering_select3" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="dextro" >Dextro</option>
											<option value="levoscoliosis">Levo scoliosis</option>
											<option value="towering">Towering</option>
								    	  </select>
								 	  
								    	 <input type="checkbox" value="mild_33"> Mild
				                    	 <input type="checkbox" value="moderate_33"> Moderate   
				                 		<input type="checkbox" value="severe_33"> Severe
				                 	    </td>		
									</tr>
									 <tr class="row2">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" value="apexat_3"> Apex at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="apexat_text3" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" value="softtissueedemaof_3"> Soft tissue edema of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="softtissueedemaof_text3" />
				                 	 </td>
				                  	 <td class="input_txt" align="left"> <input type="checkbox" value="other_3"> Other
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="other_text33" />
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
				               		 <td>Views:
				               		 <input type="text" class="input_txtbx1" id="inp_id" name="views4" />
				               		 </td>
				               		 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="normal_4"> Normal</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="positivefor_4"> Positive for</td>   
				                 </tr>
				          </table>
				           <table>
				           <tr>
				   <td valign="top" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="center"><br><input type="submit" class="submit_btn" value="Save"></td>
				   <td>&nbsp;&nbsp;</td>
             		 <td valign="top" align="center"><br><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewradiologicreport'"></td>
				  <td>&nbsp;&nbsp;</td>
				    <td valign="top" align="center"><br><input type="reset" class="submit_btn" value="Cancel"></td>
				 
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
				         