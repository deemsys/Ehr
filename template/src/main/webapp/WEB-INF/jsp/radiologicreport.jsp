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
				                  <td><input type="text" class="input_txtbx1" id="inp_id" name="name" /></td>
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
				    </form>
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
				                  	
				                  		<select name="views" class="input_cmbbx1">
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
				                   	<td valign="top" align="left" class="input_txt"> <input type="checkbox" value="negative">  Negative for recent fracture, dislocation or gross Osteopathology</td>
				                  </tr> 
				                   	 <tr class="row2">
				             
				                 <td class="input_txt" align="left"> <input type="checkbox" value="positive"> Positive for
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="positive" />
				                 </td>
				                 <td class="input_txt"><input type="checkbox" value="break"> Break in Georges line at 
				           		        <input type="text" class="input_txtbx1" id="inp_id" name="break" />
				           		 </td>
				           		 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="adi"> ADI more than 3mm</td>
				           		
				                 
				                  </tr>
				                   <tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="hypolordosis"> Hypolordosis</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="normalcurvature"> Normal Curvature</td>    
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="hyperlordosis"> Hyperlordosis
				                 	 
				                 	 
				                 	 <select name="hyperlordosis" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
									</select>		
									</td> 
											
				                  </tr>
				                                     
				                   <tr class="row2">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="McGregor’slinenormal"> McGregor's line normal</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="McGregor’slineinterupted"> McGregor's line interupted more than 8-M or 10-F mm</td>    
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="Degenerativejointdisease"> Degenerative joint disease at:
				                 	 
				                 	 
				                 	 <select name="Degenerativejointdisease" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="C-2/3" >C-2/3</option>
											<option value="C-3/4">C-3/4</option>
											<option value="C-4/5">C-4/5</option>
											<option value="C-5/6">C-5/6</option>
											<option value="C-6/7">C-6/7</option>
											<option value="C-7/T-1">C-7/T-1</option>
									</select>		
									</td>               
								 <tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="mild"> Mild
				                 	 												  <input type="checkbox" value="moderate"> Moderate
				                 	 												  <input type="checkbox" value="severe"> Severe
				                 	 </td> 
				                 	  <td class="input_txt" align="left"> <input type="checkbox" value="narrowed"> Narrowed disc space at
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="narrowed" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" value="anterior"> Anterior vertebral body osteophytes at
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="anterior" />
				                 	 </td> 		
				                 </tr>
				                 <tr class="row2">
				             			 <td class="input_txt" align="left"> <input type="checkbox" value="subchondral"> Subchondral sclerosis of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="subchondral" />
				                	 </td>
				                	 <td class="input_txt" align="left"> <input type="checkbox" value="schmorl's"> Schmorl's nodes at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="schmorl's" />
				                	 </td>
				                 </tr>
				                 <tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="foraminal"> Foraminal enchroachment between:
				                 	 
				                 	 
				                 	 <select name="foraminal" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="C-2/3" >C-2/3</option>
											<option value="C-3/4">C-3/4</option>
											<option value="C-4/5">C-4/5</option>
											<option value="C-5/6">C-5/6</option>
											<option value="C-6/7">C-6/7</option>
											<option value="C-7/T-1">C-7/T-1</option>
									 </select>		
									</td>               
				                    <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="osteoporosis"> Osteoporosis
				                 	 
				                 	 
				                 	 <select name="osteoporosis" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
									</select>		
									</td> 
									 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="decreasedFlex/Ext"> Decreased Flex/Ext
				                 	 
				                 	 
				                 	 <select name="decreasedFlex/Ext" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
									</select>		
									</td>    
				                 </tr>
				                 <tr class="row2">		  
				                     
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" value=" decreasedR/LFlex"> Decreased R/L Flex
				                 	 
				                 	 
				                 	 <select name="decreasedR/LFlex" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
									</select>		
									</td> 
									<td valign="top" align="left" class="input_txt">
										<select name="Dextro/Levoscoliosis/towering" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="dextro" >Dextro</option>
											<option value="levoscoliosis">Levo scoliosis</option>
											<option value="towering">Towering</option>
								    	  </select>
								 	  
								    	 <input type="checkbox" value="mild"> Mild
				                    	 <input type="checkbox" value="moderate"> Moderate   
				                 		<input type="checkbox" value="severe"> Severe
				                 	    </td>
										
									    
				                 </tr>
				                 <tr class="row1">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" value="apexat"> Apex at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="apexat" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" value="softtissueedemaof"> Soft tissue edema of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="softtissueedemaof" />
				                 	 </td>
				                  	 <td class="input_txt" align="left"> <input type="checkbox" value="other"> Other
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="other" />
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
				                  		<select name="views" class="input_cmbbx1">
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
				                   	<td valign="top" align="left" class="input_txt"> <input type="checkbox" value="negative">  Negative for recent fracture, dislocation or gross Osteopathology</td>
				                  </tr>
				                  <tr class="row2">
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="hyperkyphosis"> Hyperkyphosis 
				                   													<input type="checkbox" value="normalkyphosis"> Normal kyphosis 
				                   													<input type="checkbox" value="hypokyphosis"> Hypokyphosis
				                   </td>  	
				                  <td class="input_txt" align="left"> <input type="checkbox" value="degenerative"> Degenerative joint disease at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="degenerative" />
				                	 </td>
				                	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="mild"> Mild
				                    													 <input type="checkbox" value="moderate"> Moderate   
				                 														 <input type="checkbox" value="severe"> Severe
				                 	    </td>	
				                   </tr>
				                    <tr class="row1">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" value="narrowed"> Narrowed disc space at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="narrowed" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" value="schmorl'snodesat"> Schmorl's nodes at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="schmorl'snodesat" />
				                 	 </td>
				                    </tr>	 
				                 	 <tr class="row2">
				             			<td class="input_txt" align="left"> <input type="checkbox" value="anterior"> Anterior vertebral body osteophytes at:
				                 			<input type="text" class="input_txtbx1" id="inp_id" name="anterior" />
				                		 </td>
				               	    	 <td class="input_txt" align="left"> <input type="checkbox" value="subchondral"> Subchondral sclerosis of
				                 			<input type="text" class="input_txtbx1" id="inp_id" name="subchondral" />
				                 	 	</td>
				                 	 	<td class="input_txt" align="left"> <input type="checkbox" value="foraminal"> Foraminal enchroachment between:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="foraminal" />
				                	 </td>
				                 	</tr>
				                 	<tr class="row1">
				             			<td valign="top" align="left" class="input_txt"> <input type="checkbox" value="osteoporosis"> Osteoporosis
				                 	 		<select name="osteoporosis" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
											</select>		
										</td> 
										<td valign="top" align="left" class="input_txt">
										<select name="Dextro/Levoscoliosis/towering" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="dextro" >Dextro</option>
											<option value="levoscoliosis">Levo scoliosis</option>
											<option value="towering">Towering</option>
								    	  </select>
								 	  
								    	 <input type="checkbox" value="mild"> Mild
				                    	 <input type="checkbox" value="moderate"> Moderate   
				                 		<input type="checkbox" value="severe"> Severe
				                 	    </td>
				                </tr>
				                <tr class="row1">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" value="apexat"> Apex at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="apexat" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" value="softtissueedemaof"> Soft tissue edema of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="softtissueedemaof" />
				                 	 </td>
				                  	 <td class="input_txt" align="left"> <input type="checkbox" value="other"> Other
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="other" />
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
				                  		<select name="views" class="input_cmbbx1">
											<option selected="selected" value="ap" >A-P</option>
											<option value="lateral">L lateral</option>
											<option value="rpo">RPO</option>
											<option value="lpo">LPO</option>
											<option value="rlf">RLF</option>
											<option value="llf">LLF</option>
				                   		 </select>
				                   	</td>
				                   	<td valign="top" align="left" class="input_txt"> <input type="checkbox" value="negative">  Negative for recent fracture, dislocation or gross Osteopathology</td>
				                  </tr>
				                  <tr class="row2">
				                  	 <td class="input_txt"><input type="checkbox" value="break"> Break in Georges line at 
				           		        <input type="text" class="input_txtbx1" id="inp_id" name="break" />
				           		 	 </td>
				           		 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="osteoporosis"> Osteoporosis
				                 	 		<select name="osteoporosis" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
											</select>		
										</td>
										 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="hyperkyphosis"> Hyperkyphosis 
				                   													<input type="checkbox" value="normalkyphosis"> Normal kyphosis 
				                   													<input type="checkbox" value="hypokyphosis"> Hypokyphosis
				                   													<select name="osteoporosis" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
											</select>		
				                   		</td>   
				                  </tr>
				                  <tr class="row1">
				                  	 <td class="input_txt" align="left"> <input type="checkbox" value="degenerative"> Degenerative joint disease at: 
				                	 
				                  		<select name="degenerative" class="input_cmbbx1">
											<option selected="selected" value="L-1/2" >L-1/2</option>
											<option value="L-2/3">L-2/3</option>
											<option value="L-3/4">L-3/4</option>
											<option value="L-4/5">L-4/5</option>
											<option value="L-5/S-1">L-5/ S-1</option>
				                   		 </select>
				                   		  <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="mild"> Mild
				                 	 												  <input type="checkbox" value="moderate"> Moderate
				                 	 												  <input type="checkbox" value="severe"> Severe
				                 	 </td> 
				                 	  <td class="input_txt" align="left"> <input type="checkbox" value="narrowed"> Narrowed disc space at
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="narrowed" />
				                	 </td>
				                	 </tr>
				                	 <tr class="row2">
				               	     <td class="input_txt" align="left"> <input type="checkbox" value="anterior"> Anterior vertebral body osteophytes at
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="anterior" />
				                 	 </td> 	
				                 	  <td class="input_txt" align="left"> <input type="checkbox" value="subchondral"> Subchondral sclerosis of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="subchondral" />
				                	 </td>
				                 	  <td class="input_txt" align="left"> <input type="checkbox" value="schmorl's"> Schmorl's nodes at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="schmorl's" />
				                	 </td>
				                 	 </tr>
				                 	  <tr class="row1">
				                  	 <td class="input_txt" align="left"> <input type="checkbox" value="spondylolisthesisof"> Spondylolisthesis of 
				                	 
				                  		<select name="spondylolisthesisof" class="input_cmbbx1">
											<option selected="selected" value="L-4" >L-4</option>
											<option value="l-5">L-5</option>
										</select>
									</td>
									 <td valign="middle" align="left" class="input_txt">Other:
				           		        <input type="text" class="input_txtbx1" id="inp_id" name="other" />
				           		 	 </td>
				           		 	 <td valign="middle" align="left" class="input_txt">Grade:
				           		 	 	<select name="grade" class="input_cmbbx1">
											<option selected="selected" value="I" >I</option>
											<option  value="II" >II</option>
											<option  value="III" >III</option>
											<option  value="IV" >IV</option>
										</select>
									</td>		
									</tr>
	
									 <tr class="row2">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="decreasedRLF"> Decreased RLF</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="decreased LLF"> Decreased LLF</td>    
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="facettropism"> Facet tropism</td> 		
									</tr>
									<tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="sacralization"> Sacralization</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="lumbarization"> Lumbarization</td>    
				                 	 <td valign="top" align="left" class="input_txt">
										<select name="Dextro/Levoscoliosis/towering" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="dextro" >Dextro</option>
											<option value="levoscoliosis">Levo scoliosis</option>
											<option value="towering">Towering</option>
								    	  </select>
								 	  
								    	 <input type="checkbox" value="mild"> Mild
				                    	 <input type="checkbox" value="moderate"> Moderate   
				                 		<input type="checkbox" value="severe"> Severe
				                 	    </td>		
									</tr>
									 <tr class="row2">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" value="apexat"> Apex at:
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="apexat" />
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" value="softtissueedemaof"> Soft tissue edema of
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="softtissueedemaof" />
				                 	 </td>
				                  	 <td class="input_txt" align="left"> <input type="checkbox" value="other"> Other
				                 		<input type="text" class="input_txtbx1" id="inp_id" name="other" />
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
				               		 <input type="text" class="input_txtbx1" id="inp_id" name="name" />
				               		 </td>
				               		 <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="normal"> Normal</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" value="positivefor"> Positive for</td>   
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
			</body>
		</html>
				 
		