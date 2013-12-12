<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<script type="text/javascript">
function Checksymptom(val){
 var element=document.getElementById('legother');
 
 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
} 
function Checksymptom1(val){
 var element=document.getElementById('legother1');

 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
} 

</script >

<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <link rel="stylesheet" href="/resources/css/style.css" />
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
<script type="text/javascript">
$(function() {
    $( "#tabs" ).tabs();
 
    // fix the classes
    $( ".tabs-bottom .ui-tabs-nav, .tabs-bottom .ui-tabs-nav > *" )
      .removeClass( "ui-corner-all ui-corner-top" )
      .addClass( "ui-corner-bottom" );
 
    // move the nav to the bottom
    $( ".tabs-bottom .ui-tabs-nav" ).appendTo( ".tabs-bottom" );
  });
</script>
<script type="text/javascript">
    var currentTab = 0;
    $(function () {
        $("#tabs").tabs({
            select: function (e, i) {
                currentTab = i.index;
            }
        });
    });
    $("#btnNext").live("click", function () {
        var tabs = $('#tabs').tabs();
        var c = $('#tabs').tabs("length");
        currentTab = currentTab == (c - 1) ? currentTab : (currentTab + 1);
        tabs.tabs('select', currentTab);
        $("#btnPrevious").show();
        if (currentTab == (c - 1)) {
            $("#btnNext").hide();
        } else {
            $("#btnNext").show();
        }
    });
    $("#btnPrevious").live("click", function () {
        var tabs = $('#tabs').tabs();
        var c = $('#tabs').tabs("length");
        currentTab = currentTab == 0 ? currentTab : (currentTab - 1);
        tabs.tabs('select', currentTab);
        if (currentTab == 0) {
            $("#btnNext").show();
            $("#btnPrevious").hide();
        }
        if (currentTab < (c - 1)) {
            $("#btnNext").show();
        }
    });
</script>

 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
   </STYLE>
    <script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 
</script>
   
  

</head>
<body>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">2</a></li>    
  </ul>  
	     <div id="tabs-1">
	     
<form action="soapnotes" method="POST" name="soapnotes">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            HIP	EXAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           <tr><td>Patient Name:</td>
           <td><input type="text" name="pname"></td><td width="520"></td>
           <td >Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker"></td>
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION </b></div>
           </br>
           <table >
           <tr><td>Gait:&nbsp;</td><td width="30"></td>  <td><select style="width:178" name="gait"><option>normal</option><option>antalogic</option><option>shuffling</option><option>limp</option><option>stagger</option><option>cane assisted</option><option>wheelchair</option></select></td>
          <td width="150"></td>
           <td>Assistive Device:&nbsp; </td><td><input type="text" name="assistive"></td><td><input type="checkbox" name="none" value="None">None</td>
            <td width="150"></td>
           <td>Distance&nbsp;</td><td><input type="text" name="Distance"></td><td><input type="checkbox" name="unlimited" value="Unlimited">Unlimited</td>
           </tr>
<tr height="10"></tr>
           <tr>
           <td>Pelvic Unleveling:</td><td></td>
           <td><select name="pelvic"><option>none</option><option>superior illiac crest right</option><option>superior iliac crest left</option></select></td>
             <td width="160"></td>
           <td>Other</td><td><input type="textbox" name="other"></td><td></td>
           <td width="150"></td>
           <td>A & O x    1    2    3    4</td><td><select><option>excellent</option><option> good</option><option> fair</option><option> severe</option></select></td>
           </tr>  
           </table> 
           </br>           
         
          <table  style="border:10">      
         <tr><td> <b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION </b></td>
         <td width="100"></td>
         <td align="left"><input type="checkbox" name="tissue">All Soft Tissue Unremarkable</td>
         <td width="260"></td>
          <td align="left"> <input type="checkbox" name="dysfunctionexcept">Except</td></tr>  </table>       
<br>
<table>	
	<tr><td  width="300">Leg Length Discrepancy:  Short Leg-  </td>

	<td><input type="checkbox" name="shortlegleft" value="left">&nbsp;&nbsp;Left<select id="shortleg" name="shortleg" onchange='Checksymptom(this.value)'>	
	<option>1/8	</option>
	<option>1/4	</option>
	<option>3/8	</option>
	<option>1/2</option>
	<option>5/8	</option>
	<option>	3/4</option>
	<option>7/8</option>
	<option>1</option>
	<option >other</option>
	</select><input type="text" size="9" name="legother" id="legother" style="display: none" ></td><td>
	<input type="checkbox" name="shortlegright" value="right">&nbsp;&nbsp;Right &nbsp;&nbsp; <select name="shortleg2" onchange='Checksymptom1(this.value)'>	
	<option>1/8	</option>
	<option>1/4	</option>
	<option>3/8	</option>
	<option>1/2</option>
	<option>5/8	</option>
	<option>	3/4</option>
	<option>7/8</option>
	<option>1</option>
	<option>other</option>
	</select>&nbsp;</br><input type="text" id="legother1" name="legother1" style="display: none" >
	
	
	
	
	
	</td></tr></table><table>
	<tr height="10"></tr>
	<tr ><td width="300">Piriformis:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio">Left&nbsp;&nbsp;<input type="radio">Right</td>
	
	<td width="210">Gluteus Medius:&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="medius">Left&nbsp;&nbsp;<input type="radio" name="medius">Right</td>
	<td></td>
	<td width="230">Iliopsoas:&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="iliopsoas">Left&nbsp;&nbsp;<input type="radio" name="iliopsoas">Right</td>
	
	<td>Hamstrings:&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="hamstrings">Left&nbsp;&nbsp;<input type="radio" name="hamstrings">Right</td>
	
	</tr>
	<tr height="10"></tr>
	<tr><td>Other / Note:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="note"></td></tr>
	
	</table>	
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="70"></td>
         <td><input type="checkbox" name="motion">Unremarkable
         <input type="checkbox" name="motionexcept">Except
         </td>
         <td width="60"></td>
         <td> <b>ORTHOTPEDIC TESTING    </b></td><td width="100"></td>
         <td><input type="checkbox" name="testing">Unremarkable
         <input type="checkbox" name="testingexcept">Except
         </td>  </tr></table>
         </br>
         <table>
         <tr>
         <td width="140" valign="top">
         (*  Pain Elicited)	
         </td>   
         <td width="160" valign="top">Normal </td><td align="center">Actual</br></br>
          Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right
         </td>
         <td></td> <td></td><td></td> <td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
               
         
         </tr>
         <tr height="10"></tr>
         <tr><td>Flexion:		</td><td>100</td><td><input type="text" size="5" name="flexionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="flexionright"></td><td width="90"></td><td>Patrick Fabere:	</td><td width="150"></td><td><input size="5" type="text"  name="fabereleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="fabereright"></td></tr>
         <tr><td>Extension:			</td><td>30</td><td><input size="5" type="text" name="extensionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="extensionright"></td><td width="90"></td><td>Nachlas:</td><td width="150"></td><td><input type="text"  size="5" name="nachlasleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  name="fabereright"></td></tr>
         <tr><td>Abduction:				</td><td>45</td><td><input size="5" type="text" name="abductionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5" type="text" name="abductionright"></td><td width="90"></td><td>Ely's:</td><td width="150"></td><td><input type="text" size="5"  name="elysleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="elysright"></td></tr>
         <tr><td>Adduction:				</td><td>30</td><td><input size="5" type="text" name="adductionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="adductionright"></td><td width="90"></td><td>Yeoman's:</td><td width="150"></td><td><input type="text" size="5"  name="yeomansleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="yeomansright"></td></tr></tr>
         <tr><td>Internal Rotation:</td><td>40</td><td><input type="text" size="5" name="internalrotationleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="internalrotationright"><td width="90"></td><td>Ober's:	</td><td width="150"></td><td><input type="text" size="5"  name="yeomansleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="yeomansright"></td></td></tr>
         <tr><td>External Rotation:</td><td>45</td><td><input type="text" size="5" name="externalrotationleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="externalrotationright"></td><td width="90"></td><td>	Hibbs:</td><td width="150"></td><td><input type="text" size="5" name="hibbsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="hibbsright"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Thomas:</td><td width="150"></td><td><input type="text" size="5"  name="hibbsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="hibbsright"></td></tr>
         </table>
         </td></tr></table></div></div>
        <div id="tabs-2">     

	    <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            HIP	EXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr>
         <td width="130"><b style="font-size:14px">NEUROLOGICAL</b></td>
         <td width="246"><input type="checkbox" name="neurological">Neurological Testing Unremarkable</td>
         <td><input type="checkbox" name="neurologicalexcept">Except</td>
           </tr></table>
           </br><table><tr><td width="120"><b>Level</b></td>  <td width="250">  <b> Sensory	</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Motor / Strength		</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Reflexes</b> (Muscle Spindles)	</td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td> </tr>
          <tr height="10"></tr>
           <tr><td>L1</td><td><input type="text"  size="5" name="inguinalarealeft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="inguinalarearight">&nbsp;&nbsp; Inguinal area</td><td>L1</td><td><input size="5" type="text" name="iliopsoasleft">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  size="5" name="iliopsoasright">/5&nbsp;&nbsp; Iliopsoas</td><td></td><td></td></tr>
           <tr><td>L2</td><td><input size="5" type="text" name="antleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="antright">&nbsp;&nbsp;Ant/med thigh</td><td>L2</td><td><input type="text" name="iliopsoas1left" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="iliopsoas1right">/5&nbsp;&nbsp;Iliopsoas</td><td></td><td>&nbsp;(2+/5 is Normal)</td></tr>
           <tr><td>L3</td><td><input type="text" name="kneeleft" size="5">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="kneeright">&nbsp;&nbsp;Medial knee</td><td>L3</td><td><input type="text" name="iliopsoas2left" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="iliopsoas2right">/5&nbsp;&nbsp;Iliopsoas</td><td></td><td>&nbsp; </td></tr>
           <tr><td>L4</td><td><input type="text" size="5" name="medicalleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="medicalright">&nbsp;&nbsp;Medial leg</td><td>L4</td><td><input type="text" name="femleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="femright">/5&nbsp;&nbsp;Rectus Fem</td><td>L4</td><td><input type="text" name="patellarleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="patellarright" size="5">/5&nbsp;&nbsp;Patellar</td></tr>
            <tr><td>L5</td><td><input type="text" size="5" name="latleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="latright">&nbsp;&nbsp;Ant/lat leg</td><td>L5</td><td><input type="text" name="medleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"  type="text" name="medright">/5&nbsp;&nbsp;Glut Med</td><td>L5</td><td><input type="text" name="hsleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="hsright"  size="5">/5&nbsp;&nbsp;Med HS</td></tr>
            <tr><td>S1</td><td><input size="5" type="text" name="plantarleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="plantarright">&nbsp;&nbsp;Big toe/plantar</td><td>S1</td><td><input type="text" name="maxleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="maxright">/5&nbsp;&nbsp;Glut Max</td><td>S1</td><td><input type="text" name="achillesleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="achillesright">/5&nbsp;&nbsp;Achilles</td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><input type="checkbox" name="walking">Walking</td><td width="110"><input type="checkbox" name="standing"> Standing</td><td width="70"><input type="checkbox" name="stairs">Stairs</td><td><input type="checkbox" id="otherdefict" >Other<input type="text" name="otherdefict"></td></tr>
           
           </table>
           <table>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><textarea rows="5" cols="50" name="comments"></textarea>   </td></tr>
           <tr height="10"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td><select>
               <option>Excellent</option>   <option> Good</option>   <option> Fair</option>   <option>Poor</option>               
               </select></td></tr>      
                </table>
                </br>
                <table width="100%">
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis1"></td><td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis2"></td><td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis3"></td><td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis4"></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis5"></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" name="times">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text" name="times">&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><input type="checkbox" name="spinaldecompression" value="Spinal Decompression">Spinal Decompression</td><td width="100"><input type="checkbox" name="chiropractic" value="Chiropractic">Chiropractic</td>
           <td width="150"><input type="checkbox" name="physicaltherapy" value="Physical Therapy">Physical Therapy</td><td width="150"><input type="checkbox" name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
           <td width="150"><input type="checkbox" name="modalities" value="Modalities	">Modalities</td> <td width="150"><input type="checkbox" name="supplementation" value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep" value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic" value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri" value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan" value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction" value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg" value="EMG		">EMG	</td> <td width="150"><input type="checkbox" name="outsidereferral " value="Outside Referral ">Outside Referral 	</td><td><input type="checkbox" name="d/c" value="D/C">D/C</td>
           </tr>         
                      
           </table>
           </br>
           <div><B style="font-size:14px">PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="signature"></div>
           
         </div>
         
         </div></td></tr></table></div></div></div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            