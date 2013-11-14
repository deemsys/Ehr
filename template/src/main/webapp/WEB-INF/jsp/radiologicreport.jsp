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
						                    <option selected="selected" value="A-P lower" >A-P lower</option>
											<option value="APOM">APOM</option>
											<option value="L lateral">L lateral</option>
											<option value="RLF">RLF</option>
											<option value="LLF">LLF</option>
											<option value="RPO">RPO</option>
											<option value="LPO">LPO</option>
											<option value="Flex">Flex</option>
											<option value="Ext">Ext</option>
				                   		</select>
				                   		</td>
				                   	<td valign="top" align="left" class="input_txt"> <input type="checkbox" value="Negative for Osteopathology" name="negative_1">  Negative for recent fracture, dislocation or gross Osteopathology</td>
				                  </tr> 
				                   	 <tr class="row2">
				             
				                 <td class="input_txt" align="left"> <input type="checkbox" value="positive for" name="positive_for"> Positive for
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="positive_text1" />
				                 </td>
				                 <td class="input_txt"><input type="checkbox" name="break_1" value="Break in Georges"> Break in Georges line at 
				           		        <input type="text" class="input_txtbx1" id="inp_id" name="break_text1" />
				           		 </td>
				           		 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="adi_1" value="ADI more than 3mm"> ADI more than 3mm</td>
				           		
				                 
				                  </tr>
				                   <tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox"name="hypolorodosis_1"value="Hypolordosis"> Hypolordosis</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="normalcurvature_1" value="Normal Curvature"> Normal Curvature</td>    
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hyperlordosis_1" value="Hyperlordosis:"> Hyperlordosis
				                 	 
				                 	 
				                 	 <select name="hyperlordosis_select1" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
									</select>		
									</td> 
											
				                  </tr>
				                                     
				                   <tr class="row2">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="mcGregorslinenormal_1"value="McGregors line normal"> McGregor's line normal</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="mcGregorslineinterupted_1" value="McGregors line interupted"> McGregor's line interupted more than 8-M or 10-F mm</td>    
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="degenerativejointdisease_1" value="Degenerative joint disease at:"> Degenerative joint disease at:
				                 	 
				                 	 
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
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="mild_1" value="Mild"> Mild
				                 	 												  <input type="checkbox" name="moderate_1" value="Moderate"> Moderate
				                 	 												  <input type="checkbox" name="severe_1" value="Severe"> Severe
				                 	 </td> 
				                 	  <td class="input_txt" align="left"> <input type="checkbox" name="narrowed_1" value="Narrowed disc space at"> Narrowed disc space at
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="narrowed_text1" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" name="anterior_1" value="Anterior osteophytes at"> Anterior vertebral body osteophytes at
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="anterior_text1" />
				                 	 </td> 		
				                 </tr>
				                 <tr class="row2">
				             			 <td class="input_txt" align="left"> <input type="checkbox" name="subchondral_1" value="Subchondral sclerosis of"> Subchondral sclerosis of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="subchondral_text1" />
				                	 </td>
				                	 <td class="input_txt" align="left"> <input type="checkbox" name="schmorls_1" value="Schmorls nodes at:"> Schmorl's nodes at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="schmorls_text1" />
				                	 </td>
				                 </tr>
				                 <tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="foraminal_1" value="Foraminal enchroachment b/w:"> Foraminal enchroachment between:
				                 	 
				                 	 
				                 	 <select name="foraminal_select1" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="C-2/3" >C-2/3</option>
											<option value="C-3/4">C-3/4</option>
											<option value="C-4/5">C-4/5</option>
											<option value="C-5/6">C-5/6</option>
											<option value="C-6/7">C-6/7</option>
											<option value="C-7/T-1">C-7/T-1</option>
									 </select>		
									</td>               
				                    <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="osteoporosis_1" value="Osteoporosis"> Osteoporosis
				                 	 
				                 	 
				                 	 <select name="osteoporosis_select1" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
									</select>		
									</td> 
									 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="decreasedFlexExt_1" value="Decreased Flex/Ext:"> Decreased Flex/Ext
				                 	 
				                 	 
				                 	 <select name="decreasedFlexExt_select1" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
									</select>		
									</td>    
				                 </tr>
				                 <tr class="row2">		  
				                     
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="decreasedRLFlex_1" value="Decreased R/L Flex:"> Decreased R/L Flex
				                 	 
				                 	 
				                 	 <select name="decreasedRLFlex_select1" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
									</select>		
									</td> 
									<td valign="top" align="left" class="input_txt">
										<select name="dextro_Levoscoliosis_towering_select1" class="input_cmbbx1">
				                 	             
						                    <option selected="selected" value="Dextro" >Dextro</option>
											<option value="Levo scoliosis">Levo scoliosis</option>
											<option value="Towering">Towering</option>
								    	  </select>
								 	  
								    	 <input type="checkbox" name="mild_11" value="Mild"> Mild
				                    	 <input type="checkbox" name="moderate_11" value="Moderate"> Moderate   
				                 		<input type="checkbox" name="severe_11" value="Severe"> Severe
				                 	    </td>
										
									    
				                 </tr>
				                 <tr class="row1">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" name="apexat_1" value="Apex at:"> Apex at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="apexat_text1" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" name="softtissueedemaof_1" value="Soft tissue edema of"> Soft tissue edema of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="softtissueedemaof_text1" />
				                 	 </td>
				                  	 <td class="input_txt" align="left"> <input type="checkbox" name="other_1" value="Other"> Other
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
											<option selected="selected" value="A-P" >A-P</option>
											<option value="lateral">L lateral</option>
											<option value="rlf">RLF</option>
											<option value="llf">LLF</option>
											<option value="rpo">RPO</option>
											<option value="lpo">LPO</option>
											<option value="P-A Chest">P-A Chest</option>
											<option value="Lateral Chest">Lateral Chest</option>
				                   		 </select>
				                   	</td>
				                   	<td valign="top" align="left" class="input_txt"> <input type="checkbox" name="negative_2" value="Negative for Osteopathology">  Negative for recent fracture, dislocation or gross Osteopathology</td>
				                  </tr>
				                  <tr class="row2">
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hyperkyphosis_2" value="Hyperkyphosis"> Hyperkyphosis 
				                   													<input type="checkbox" name="normalkyphosis_2" value="Normal kyphosis"> Normal kyphosis 
				                   													<input type="checkbox" name="hypokyphosis_2" value="Hypokyphosis"> Hypokyphosis
				                   </td>  	
				                  <td class="input_txt" align="left"> <input type="checkbox" name="degenerative_2" value="Degenerative joint disease at:"> Degenerative joint disease at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="degenerative_text2" />
				                	 </td>
				                	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="mild_2" value="Mild"> Mild
				                    													 <input type="checkbox" name="moderate_2" value="Moderate"> Moderate   
				                 														 <input type="checkbox" name="severe_2" value="Severe"> Severe
				                 	    </td>	
				                   </tr>
				                    <tr class="row1">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" name="narrowed_2" value="Narrowed disc space at:"> Narrowed disc space at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="narrowed_text2" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" name="schmorlsnodesat_2" value="Schmorls nodes at:"> Schmorl's nodes at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="schmorlsnodesat_text2" />
				                 	 </td>
				                    </tr>	 
				                 	 <tr class="row2">
				             			<td class="input_txt" align="left"> <input type="checkbox" name="anterior_2" value="Anterior body osteophytes at:"> Anterior vertebral body osteophytes at:
				                 			<input type="text" class="input_txtbx1" id="inp_id" name="anterior_text2" />
				                		 </td>
				               	    	 <td class="input_txt" align="left"> <input type="checkbox" name="subchondral_2" value="Subchondral sclerosis of"> Subchondral sclerosis of
				                 			<input type="text" class="input_txtbx1" id="inp_id" name="subchondral_text2" />
				                 	 	</td>
				                 	 	<td class="input_txt" align="left"> <input type="checkbox" name="foraminal_2" value="Foraminal enchroachment b/w:"> Foraminal enchroachment between:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="foraminal_text2" />
				                	 </td>
				                 	</tr>
				                 	<tr class="row1">
				             			<td valign="top" align="left" class="input_txt"> <input type="checkbox" name="osteoporosis_2" value="Osteoporosis"> Osteoporosis
				                 	 		<select name="osteoporosis_select2" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
											</select>		
										</td> 
										<td valign="top" align="left" class="input_txt">
										<select name="dextro_Levoscoliosis_towering_select2" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="Dextro" >Dextro</option>
											<option value="Levo scoliosis">Levo scoliosis</option>
											<option value="Towering">Towering</option>
								    	  </select>
								 	  
								    	 <input type="checkbox" name="mild_22" value="Mild"> Mild
				                    	 <input type="checkbox" name="moderate_22" value="Moderate"> Moderate   
				                 		<input type="checkbox" name="severe_22" value="Severe"> Severe
				                 	    </td>
				                </tr>
				                <tr class="row1">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" name="apexat_2" value="Apex at:"> Apex at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="apexat_text2" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" name="softtissueedemaof_2" value="Soft tissue edema of"> Soft tissue edema of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="softtissueedemaof_text2" />
				                 	 </td>
				                  	 <td class="input_txt" align="left"> <input type="checkbox" name="other_2" value="Other"> Other
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
											<option selected="selected" value="A-P" >A-P</option>
											<option value="L lateral">L lateral</option>
											<option value="RPO">RPO</option>
											<option value="LPO">LPO</option>
											<option value="RLF">RLF</option>
											<option value="LLF">LLF</option>
				                   		 </select>
				                   	</td>
				                   	<td valign="top" align="left" class="input_txt"> <input type="checkbox" name="negative_3" value="Negative for recent fracture">  Negative for recent fracture, dislocation or gross Osteopathology</td>
				                  </tr>
				                  <tr class="row2">
				                  	 <td class="input_txt"><input type="checkbox" name="break_3" value="Break Georges at"> Break in Georges line at 
				           		        <input type="text" class="input_txtbx1" id="inp_id" name="break_text3" />
				           		 	 </td>
				           		 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="osteoporosis_3" value="Osteoporosis"> Osteoporosis
				                 	 		<select name="osteoporosis_select3" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
											</select>		
										</td>
										 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hyperkyphosis_3" value="Hyperkyphosis"> Hyperkyphosis 
				                   													<input type="checkbox" name="normalkyphosis_3" value="Normal kyphosis"> Normal kyphosis 
				                   													<input type="checkbox" name="hypokyphosis_3" value="Hypokyphosis"> Hypokyphosis
				                   													<select name="hypokyphosos_select_3" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
											</select>		
				                   		</td>   
				                  </tr>
				                  <tr class="row1">
				                  	 <td class="input_txt" align="left"> <input type="checkbox" name="degenerative_3" value="Degenerative joint disease at:"> Degenerative joint disease at: 
				                	 
				                  		<select name="degenerative_select3" class="input_cmbbx1">
											<option selected="selected" value="L-1/2" >L-1/2</option>
											<option value="L-2/3">L-2/3</option>
											<option value="L-3/4">L-3/4</option>
											<option value="L-4/5">L-4/5</option>
											<option value="L-5/S-1">L-5/ S-1</option>
				                   		 </select>
				                   		  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="mild_3" value="Mild"> Mild
				                 	 												  <input type="checkbox" name="moderate_3" value="Moderate"> Moderate
				                 	 												  <input type="checkbox" name="severe_3" value="Severe"> Severe
				                 	 </td> 
				                 	  <td class="input_txt" align="left"> <input type="checkbox" name="narrowed_3" value="Narrowed disc space at"> Narrowed disc space at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="narrowed_text3" />
				                	 </td>
				                	 </tr>
				                	 <tr class="row2">
				               	     <td class="input_txt" align="left"> <input type="checkbox" name="anterior_3" value="Anterior osteophytes at"> Anterior vertebral body osteophytes at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="anterior_text3" />
				                 	 </td> 	
				                 	  <td class="input_txt" align="left"> <input type="checkbox" name="subchondral_3" value="Subchondral sclerosis of"> Subchondral sclerosis of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="subchondral_text3" />
				                	 </td>
				                 	  <td class="input_txt" align="left"> <input type="checkbox" name="schmorls_3" value="Schmorls nodes at:"> Schmorl's nodes at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="schmorls_text3" />
				                	 </td>
				                 	 </tr>
				                 	  <tr class="row1">
				                  	 <td class="input_txt" align="left"> <input type="checkbox" name="spondylolisthesisof_3" value="Spondylolisthesis of"> Spondylolisthesis of 
				                	 
				                  		<select name="spondylolisthesisof_select3" class="input_cmbbx1">
											<option selected="selected" value="L-4" >L-4</option>
											<option value="L-5">L-5</option>
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
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="decreasedRLF_3" value="Decreased RLF"> Decreased RLF</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="decreasedLLF_3" value="Decreased LLF"> Decreased LLF</td>    
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="facettropism_3" value="Facet tropism"> Facet tropism</td> 		
									</tr>
									<tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="sacralization_3" value="Sacralization"> Sacralization</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lumbarization_3" value="Lumbarization"> Lumbarization</td>    
				                 	 <td valign="top" align="left" class="input_txt">
										<select name="dextro_Levoscoliosis_towering_select3" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="Dextro" >Dextro</option>
											<option value="Levo scoliosis">Levo scoliosis</option>
											<option value="Towering">Towering</option>
								    	  </select>
								 	  
								    	 <input type="checkbox" name="mild_33" value="Mild"> Mild
				                    	 <input type="checkbox" name="moderate_33" value="Moderate"> Moderate   
				                 		<input type="checkbox" name="severe_33" value="Severe"> Severe
				                 	    </td>		
									</tr>
									 <tr class="row2">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" name="apexat_3" value="Apex at:"> Apex at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="apexat_text3" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" name="softtissueedemaof_3" value="Soft tissue edema of"> Soft tissue edema of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="softtissueedemaof_text3" />
				                 	 </td>
				                  	 <td class="input_txt" align="left"> <input type="checkbox" name="other_3" value="Other"> Other
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
				               		 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="normal_4" value="Normal"> Normal</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="positivefor_4" value="Positive for"> Positive for</td>   
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
				         