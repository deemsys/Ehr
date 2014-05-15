<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>

 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
   </STYLE>
  <script>
$(function() {
   //$( "#draggable" ).draggable({ revert: "not valid" });
   
   $(window).load(function(){	
	    
   
   }); 
   $('input:checkbox[name=leglengthl]').each(function() 
			{    
			   if($(this).is(':checked'))
			   var other=$(this).val();
			      if(other=="left")
			   {
			   document.getElementById("break5").style.display="block";
			   }
			   else
			   {
				   document.getElementById("break5").style.display="none";
			   }  
			});
   $('input:checkbox[name=leglengthr]').each(function() 
			{    
			   if($(this).is(':checked'))
			   var other=$(this).val();
			      if(other=="right")
			   {
			   document.getElementById("break6").style.display="block";
			   }
			   else
			   {
				   document.getElementById("break6").style.display="none";
			   }  
			});

    $('input:checkbox[name=otherfunctional]').each(function() 
		{    
		   if($(this).is(':checked'))
		   var other=$(this).val();
		      if(other=="Other")
		   {
		   document.getElementById("break3").style.display="block";
		   }
		   else
		   {
			   document.getElementById("break3").style.display="none";
		   }  
		});
    
    $('input:checkbox[name=otheraddress]').each(function() 
    		{    
    		   if($(this).is(':checked'))
    		   var other=$(this).val();   
    		      if(other=="Other")
    		   {
    		   document.getElementById("break4").style.display="block";
    		   }
    		   else
    		   {
    			   document.getElementById("break4").style.display="none";
    		   }  
    		});
});
</script>
   
   <script type="text/javascript">
function Checksymptom(val){
 var element=document.getElementById('other1');
 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
}
function Checksymptom(val){
 var element=document.getElementById('other2');
 if(val=='other')
  element.style.display='block';
 else  
  element.style.display='none';
	}
</script >
<script type="text/javascript">
$(function() {
    $( "#datepicker" ).datepicker();
  });

</script>
  <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
  <script>
function visible(val)
{

if(document.getElementById('otherfunctional').checked)
{
var element=document.getElementById('break3');
element.style.display='block';
}
else
{
var element=document.getElementById('break3');
element.style.display='none';
}

if(document.getElementById('otheraddress').checked)
{
var element=document.getElementById('break4');
element.style.display='block';
}
else
{
var element=document.getElementById('break4');
element.style.display='none';
}

if(document.getElementById('leglengthl').checked)
{
var element=document.getElementById('break5');
element.style.display='block';
}
else
{
var element=document.getElementById('break5');
element.style.display='none';
}


if(document.getElementById('leglengthr').checked)
{
var element=document.getElementById('break6');
element.style.display='block';
}
else
{
var element=document.getElementById('break6');
element.style.display='none';
}
}
</script>
  <script>
          function isNumberKey(evt)
          {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

             return true;
          }  
          
          </script>
</head>
 <body>
 <br><br>
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li>          
       </ul>
         
   <div id="tabs-1"> 
 <div id="right_content">
<form action="updatekneeexam" method="post" name="update" id="update">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>KNEE REEXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
        <c:set value="${kneeexamForm.kneeexam[0]}" var="kneeexam"/>   
 <tr class="row1">
 <input type="hidden" name="kneeexamid" id="inp_id" value="${kneeexam.kneeexamid}">
<td><h2><span class="err">*</span>Patient Name:</h2></td><td><input type="text"  name="pname" value="${kneeexam.pname}"/><span class="err"><form:errors path="Kneeexam.pname"></form:errors></span></td>
<td width="600">
<td><h2><span class="err">*</span>Date:</h2></td><td><input type="text"  id="datepicker" name="date" value="${kneeexam.date}"/><span class="err"><form:errors path="Kneeexam.date"></form:errors></span></td>
</tr>
</table>
<br/>
<br/>
 <table>
 <tr class="row1">
 <td width="500"><B style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</B></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="200">Gait:</td><td>  <select style="width:180px" name="gait" id="gait"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="normal" <c:if test="${kneeexam.gait=='normal'}"><c:out value="selected"/></c:if> >Normal</option>
					<option value="antalgic" <c:if test="${kneeexam.gait=='antalgic'}"><c:out value="selected"/></c:if>>Antalgic</option>
					<option value="shuffling" <c:if test="${kneeexam.gait=='shuffling'}"><c:out value="selected"/></c:if>>Shuffling</option>
					<option value="limp" <c:if test="${kneeexam.gait=='limp'}"><c:out value="selected"/></c:if>>Limp</option>
					<option value="stagger" <c:if test="${kneeexam.gait=='stagger'}"><c:out value="selected"/></c:if>>Stagger</option>
					<option value="caneassited" <c:if test="${kneeexam.gait=='caneassited'}"><c:out value="selected"/></c:if>>Cane Assisted</option>
					<option value="wheelchair" <c:if test="${kneeexam.gait=='wheelchair'}"><c:out value="selected"/></c:if>>Wheel Chair</option>
					</select></td> 
 <td></td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Pelvic Unleveling:</td><td><select style="width:180px" name="pelvicunleveling" id="pelvicunleveling"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="none" <c:if test="${kneeexam.pelvicunleveling=='none'}"><c:out value="selected"/></c:if>>None</option>
					<option value="superiorilliaccrestright" <c:if test="${kneeexam.pelvicunleveling=='superiorilliaccrestright'}"><c:out value="selected"/></c:if>>superior illiac crest right</option>
					<option value="superioriliaccrestleft" <c:if test="${kneeexam.pelvicunleveling=='superiorilliaccrestleft'}"><c:out value="selected"/></c:if>>superior iliac crest left</option>
					</select></td> 
  <td>A & O:<select name="ao" id="ao"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="excellent" <c:if test="${kneeexam.ao=='excellent'}"><c:out value="selected"/></c:if>>Excellent</option>
					<option value="good" <c:if test="${kneeexam.ao=='good'}"><c:out value="selected"/></c:if>>Good</option>
					<option value="fair" <c:if test="${kneeexam.ao=='fair'}"><c:out value="selected"/></c:if>>Fair</option>
					<option value="severe" <c:if test="${kneeexam.ao=='severe'}"><c:out value="selected"/></c:if>>Severe</option>
					</select> </td>
 <td></td>
 <td></td> 
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="300"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable" <c:if test="${kneeexam.allsoft=='All Soft Tissue Unremarkable'}"><c:out value="Checked"/></c:if>> All Soft Tissue Unremarkable</td> 
 <td> <%-- <input type="checkbox" name="except" value="Except" <c:if test="${kneeexam.except=='Except'}"><c:out value="Checked"/></c:if>> Except --%> </td>
 <td></td>
 <td></td> 
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
  <tr class="row1">
 <td width="200">Leg Length Discrepancy:Short Leg-  </td> 
 <td><input type="checkbox" id="leglengthl" name="leglengthl" value="left" onclick="visible(this.value)" <c:if test="${kneeexam.leglengthl=='left'}"><c:out value="Checked"/></c:if>>Left</td>
 <td><input type="text" name="leglengthtextl" id="break5" style="display:none" value="${kneeexam.leglengthtextl}"></td>
 <td><input type="checkbox" id="leglengthr" name="leglengthr" value="right" onclick="visible(this.value)" <c:if test="${kneeexam.leglengthr=='right'}"><c:out value="Checked"/></c:if>>Right</td>
 <td><input type="text" name="leglengthtextr" id="break6" style="display:none" value="${kneeexam.leglengthtextr}"></td>
					<td></td>
					<td></td>
					<td></td> 
					
 </tr>
 <tr class="row1">
 <td>VMO:</td><td width="100"><input type="radio" name="vmo" value="Left" <c:if test="${kneeexam.vmo=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="vmo" value="Right" <c:if test="${kneeexam.vmo=='Right'}"><c:out value="checked=checked"/></c:if> >Right</td> 
 
 <td>Quads (-VMO):</td><td width="200"><input type="radio" name="quads" value="Left" <c:if test="${kneeexam.quads=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="quads" value="Right" <c:if test="${kneeexam.quads=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 
 <td>Semimemb:</td><td width="100"><input type="radio" name="semimemb" value="Left" <c:if test="${kneeexam.semimemb=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="semimemb" value="Right" <c:if test="${kneeexam.semimemb=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
<td>Semitend:</td><td width="100"><input type="radio" name="semitend" value="Left" <c:if test="${kneeexam.semitend=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="semitend" value="Right" <c:if test="${kneeexam.semitend=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Gastroc::</td><td><input type="radio" name="gastroc" value="Left" <c:if test="${kneeexam.gastroc=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="gastroc" value="Right" <c:if test="${kneeexam.gastroc=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Soleus:</td><td width="200"><input type="radio" name="soleus" value="Left" <c:if test="${kneeexam.soleus=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="soleus" value="Right" <c:if test="${kneeexam.soleus=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Iliotib Band:</td><td><input type="radio" name="iliotibband" value="Left" <c:if test="${kneeexam.iliotibband=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="iliotibband" value="Right" <c:if test="${kneeexam.iliotibband=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 <td>Biceps Fem:</td><td><input type="radio" name="bicepsfem" value="Left" <c:if test="${kneeexam.bicepsfem=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="bicepsfem" value="Right" <c:if test="${kneeexam.bicepsfem=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="150"><input type="radio" name="functionalrangeofmotion" value="Unremarkable" <c:if test="${kneeexam.functionalrangeofmotion=='Unremarkable'}"><c:out value="checked=checked"/></c:if> >Unremarkable </td> 
 <td width="250"></td>
 <td width="300"><B style="font-size:14px">ORTHOPEDIC TESTING </B></td><td width="300"><input type="radio" name="orthopedic" value="Unremarkable" <c:if test="${kneeexam.orthopedic=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable</td>
 </tr>
  <tr class="row1">
 <td></td><td width="50"> <b>Normal</b> </td><td><b> Actual</b></td>  
 <td></td><td><b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (60)</td><td>&nbsp;&nbsp;&nbsp; <input type="text" name="flexion" size="7" value="${kneeexam.flexion}"  onkeypress="return isNumberKey(event)"></td>  
 <td><b>Ant. Drawer (ACL):</b> </td><td><input type="text" name="acll" size="5" value="${kneeexam.acll}"> <input type="text" name="aclr" size="5" value="${kneeexam.aclr}"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (25) </td><td> &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="extension" size="7" value="${kneeexam.extension}"  onkeypress="return isNumberKey(event)"></td>  
 <td><b>Post. Drawer (PCL):	</b> </td><td><input type="text" name="pcll" size="5" value="${kneeexam.pcll}"> <input type="text" name="pclr" size="5" value="${kneeexam.pclr}"></td>
 </tr>
  <tr class="row1">
 <td><b>Internal Rotation:</b> </td><td> (25)</td><td>L &nbsp;<input type="text" name="internalrotationl" size="7" value="${kneeexam.internalrotationl}"  onkeypress="return isNumberKey(event)"><br/><br/>R <input type="text" name="internalrotationr" size="7" value="${kneeexam.internalrotationr}"  onkeypress="return isNumberKey(event)"></td>  
 <td><b>Lateral (Varus) Stability (LCL):</b> </td><td><input type="text" name="lcll" size="5" value="${kneeexam.lcll}"> <input type="text" name="lclr" size="5" value="${kneeexam.lclr}"></td>
 </tr>
  <tr class="row1">
  <td><b> External Rotation:</b> </td><td> (45)</td><td>L &nbsp;<input type="text" name="externalrotationl" size="7" value="${kneeexam.externalrotationl}"  onkeypress="return isNumberKey(event)"><br/><br/>R <input type="text" name="externalrotationr" size="7" value="${kneeexam.externalrotationr}"  onkeypress="return isNumberKey(event)"></td>  
 <td><b>Medial (Valgus) Stability (MCL):</b> </td><td><input type="text" name="mcll" size="5" value="${kneeexam.mcll}"> <input type="text" name="mclr" size="5" value="${kneeexam.mclr}"> </td>
 </tr>
  <tr class="row1">
 <td><b>GIRTH</b>&nbsp;&nbsp;&nbsp; <input type="checkbox" name="circumferential" value="Circumferential Measures are Unremarkable" <c:if test="${kneeexam.circumferential=='Circumferential Measures are Unremarkable'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Circumferential Measures are 	</td><td>Unremarkable </td>  
 <td></td>
 <td><b>McMurray's (Med Meniscus):	</b> </td><td><input type="text" name="meniscusl" size="5" value="${kneeexam.meniscusl}"> <input type="text" name="meniscusr" size="5" value="${kneeexam.meniscusr}"></td>
 </tr>
  <tr class="row1">
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>5 cm Above</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Suprapatellar</b></td><td><b>Infrapatellar</b> </td>  
 <td><b>5 cm Below</b>	</td>
 <td><b>Apley's Compress (Meniscus):	</b> </td><td><input type="text" name="apleysl" size="5" value="${kneeexam.apleysl}"> <input type="text" name="apleysr" size="5" value="${kneeexam.apleysr}"></td>
 </tr>
  <tr class="row1">
 <td>Left &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cmabovel" size="8" value="${kneeexam.cmabovel}"  onkeypress="return isNumberKey(event)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="suprapatellarl" size="8" value="${kneeexam.suprapatellarl}"  onkeypress="return isNumberKey(event)"></td><td><input type="text" name="infrapatellarl" size="8" value="${kneeexam.infrapatellarl }"  onkeypress="return isNumberKey(event)"> </td>  
 <td><input type="text" name="belowl" size="8" value="${kneeexam.belowl}"  onkeypress="return isNumberKey(event)"></td>
 <td><b>Apley's Distraction (Cor ligs):		</b> </td><td><input type="text" name="distractionl" size="5" value="${kneeexam.distractionl}"> <input type="text" name="distractionr" size="5" value="${kneeexam.distractionr}"> </td>
 </tr>
 <tr class="row1">
 <td>Right &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cmabover" size="8" value="${kneeexam.cmabover}"  onkeypress="return isNumberKey(event)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="suprapatellarr" size="8" value="${kneeexam.suprapatellarr}"  onkeypress="return isNumberKey(event)"></td><td><input type="text" name="infrapatellarr" size="8" value="${kneeexam.infrapatellarr}"  onkeypress="return isNumberKey(event)"> </td>  
 <td><input type="text" name="belowr" size="8" value="${kneeexam.belowr}"  onkeypress="return isNumberKey(event)"></td>
 <td><b>Patellar Grind (CMP):		</b> </td><td><input type="text" name="cmpl" size="5" value="${kneeexam.cmpl}"> <input type="text" name="cmpr" size="5" value="${kneeexam.cmpr}"> </td>
 </tr>
 <tr class="row1">
 <td></td><td> </td> 
 <td></td> 
 <td><b>Patellar Apprehension (Pat D/L):		</b> </td><td><input type="text" name="patdll" size="5" value="${kneeexam.patdll}"> <input type="text" name="patdlr" size="5" value="${kneeexam.patdlr}"> </td>
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
	            <center> <h2>KNEE REEXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row1">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable" <c:if test="${kneeexam.neurologicaltest=='Neurological Testing Unremarkable'}"><c:out value="Checked"/></c:if> >Neurological Testing Unremarkable</td><td><%-- <input type="checkbox" name="exceptn" value="Except" <c:if test="${kneeexam.exceptn=='Except'}"><c:out value="Checked"/></c:if>>Except --%></td>
 <td></td><td></td><td></td>
 </tr>
 <tr class="row1">
 <td><b>Level</b> </td>
 <td><b> Sensory</b></td>
 <td width="110"><b>Level</b></td>
 <td> <b>Motor / Strength</b></td>
 <td width="110"><b>Level</b> </td>
 <td> <b>Reflexes(Muscle Spindles)</td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td>Left &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Right</td>
 <td> </td>
 <td> Left &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; Right</td>
 <td> </td>
 <td> Left &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; Right</td>
 </tr>
 <tr class="row1">
 <td>L1</td>
 <td><input type="text" name="l1l" size="5" value="${kneeexam.l1l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l1r" size="5" value="${kneeexam.l1r}">&nbsp;(Inguinal area)</td>
 <td>L1 </td>
 <td> <input type="text" name="l15l" size="5" value="${kneeexam.l15l}"  onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l15r" size="5" value="${lumbopelvic.l15r}">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td>  </td>
 </tr>
 <tr class="row1">
 <td>L2</td>
 <td><input type="text" name="l2l" size="5" value="${kneeexam.l2l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l2r" size="5" value="${kneeexam.l2r }">&nbsp;(Ant/med thigh)</td>
 <td>L2 </td>
 <td> <input type="text" name="l25l" size="5" value="${kneeexam.l25l}"  onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l25r" size="5" value="${kneeexam.l25r}">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L3</td>
 <td><input type="text" name="l3l" size="5" value="${kneeexam.l3l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l3r" size="5" value="${kneeexam.l3r}">&nbsp;(Medial knee)	</td>
 <td>L3 </td>
 <td> <input type="text" name="l35l" size="5" value="${kneeexam.l35l}"  onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l35r" size="5" value="${kneeexam.l35r}" onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L4</td>
 <td><input type="text" name="l4l" size="5" value="${kneeexam.l4l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l4r" size="5" value="${kneeexam.l4r}">&nbsp;(Medial leg)	</td>
 <td>L4 </td>
 <td> <input type="text" name="l45l" size="5" value="${kneeexam.l45l}" onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l45r" size="5" value="${kneeexam.l45r}" onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp;(Rectus fem.)</td>
 <td> L4</td>
 <td> <input type="text" name="l4l3" size="5" value="${kneeexam.l4l3}" onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l4r3" size="5" value="${kneeexam.l4r3}" onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp;(Patellar)</td>
 </tr>
 <tr class="row1">
 <td>L5</td>
 <td><input type="text" name="l5l" size="5" value="${kneeexam.l5l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l5r" size="5" value="${kneeexam.l5r}">&nbsp;(Ant/lat leg)	</td>
 <td>L5 </td>
 <td> <input type="text" name="l55l" size="5" value="${kneeexam.l55l}" onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l55r" size="5" value="${kneeexam.l55r}" onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp;  (Glut Med)</td>
 <td>L5 </td>
 <td><input type="text" name="l5l3" size="5" value="${kneeexam.l5l3}" onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l5r3" size="5" value="${kneeexam.l5r3}" onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp;(Med HS) </td>
 </tr>
 <tr class="row1">
 <td>SI</td>
 <td><input type="text" name="sl" size="5" value="${kneeexam.sl}">&nbsp; &nbsp; &nbsp;<input type="text" name="sr" size="5" value="${kneeexam.sr}">&nbsp;(Big toe/plantar)		</td>
 <td>SI </td>
 <td> <input type="text" name="s5l" size="5" value="${kneeexam.s5l}" onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="s5r" size="5" value="${kneeexam.s5r}" onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp; (Glut Max)</td>
 <td>SI </td>
 <td> <input type="text" name="sil" size="5" value="${kneeexam.sil}" onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="sir" size="5" value="${kneeexam.sir}" onkeypress="return isNumberKey(event)">&nbsp;/5&nbsp;(Achilles)</td>
 </tr>
 <tr class="row1">
 <td></td>
 <td>("-" is Normal)</td>
 <td> </td>
 <td> (5/5 is Normal)</td>
 <td> </td>
 <td> (2+/5 is Normal)</td>
 </tr>
 </table>
<table>         
 <tr class="row1">
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td>
 <td width="150"><input type="checkbox" name="walking" value="Walking" <c:if test="${kneeexam.walking=='Walking'}"><c:out value="Checked"/></c:if>>Walking &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="standing" value="Standing" <c:if test="${kneeexam.standing=='Standing'}"><c:out value="Checked"/></c:if>>Standing</td>
 <td width="150"><input type="checkbox" name="stairs" value="Stairs" <c:if test="${kneeexam.stairs=='Stairs'}"><c:out value="Checked"/></c:if>>Stairs</td>
 <td width="150"><input type="checkbox" id="otherfunctional" name="otherfunctional" value="Other"  onclick="visible(this.value)" <c:if test="${kneeexam.otherfunctional=='Other'}"><c:out value="Checked"/></c:if> >Other&nbsp;</td>
 <td> <input type="text" id="break3" name="break_text3" style="display:none" value="break_text3"/></td>
 </tr>         
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td><textarea name="assessment" rows='5' cols='40'> ${kneeexam.assessment }</textarea></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td><select name="patientstatus" id="patientstatus"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Excellent" <c:if test="${kneeexam.patientstatus=='Excellent'}"><c:out value="Selected"/></c:if> >Excellent</option>
					<option value="Good" <c:if test="${kneeexam.patientstatus=='Good'}"><c:out value="Selected"/></c:if>>Good</option>
					<option value="Fair" <c:if test="${kneeexam.patientstatus=='Fair'}"><c:out value="Selected"/></c:if>>Fair</option>
					<option value="Poor" <c:if test="${kneeexam.patientstatus=='Poor'}"><c:out value="Selected"/></c:if>>Poor</option>
					</select></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)<input type="text" name="diagnosis1" value="${kneeexam.diagnosis1}"></td>
 <td width="250">2)<input type="text" name="diagnosis2" value="${kneeexam.diagnosis2 }"></td>
 <td width="250">3)<input type="text" name="diagnosis3" value="${kneeexam.diagnosis3 }"></td>
 <td width="250">4)<input type="text" name="diagnosis4" value="${kneeexam.diagnosis4 }"></td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)<input type="text" name="diagnosis5" value="${kneeexam.diagnosis5}"></td>
 <td width="250">6)<input type="text" name="diagnosis6" value="${kneeexam.diagnosis6}"></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td><input type="text" name="times" value="${kneeexam.times}">Times/week for </td>
 <td><input type="text" name="week" value="${kneeexam.week}">weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="spinal" value="Spinal Decompression"  <c:if test="${kneeexam.spinal=='Spinal Decompression'}"><c:out value="Checked"/></c:if>>Spinal Decompression	</td>
 <td width="250"><input type="checkbox" name="chiropractic" value="Chiropractic"  <c:if test="${kneeexam.chiropractic=='Chiropractic'}"><c:out value="Checked"/></c:if>>Chiropractic</td>
 <td width="250"><input type="checkbox" name="physical" value="Physical Therapy"  <c:if test="${kneeexam.physical=='Physical Therapy'}"><c:out value="Checked"/></c:if>>Physical Therapy</td>
 <td width="250"><input type="checkbox" name="orthotics" value="Orthotics/Bracing"  <c:if test="${kneeexam.orthotics=='Orthotics/Bracing'}"><c:out value="Checked"/></c:if>>Orthotics/Bracing</td>
 <td width="250"><input type="checkbox" name="modalities" value="Modalities"  <c:if test="${kneeexam.modalities=='Modalities'}"><c:out value="Checked"/></c:if>>Modalities	</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="supplementation" value="Supplementation"  <c:if test="${kneeexam.supplementation=='Supplementation'}"><c:out value="Checked"/></c:if>>Supplementation</td>
 <td width="250"><input type="checkbox" name="hep" value="HEP"  <c:if test="${kneeexam.hep=='HEP'}"><c:out value="Checked"/></c:if>>HEP</td>
 <td width="250"><input type="checkbox" name="radiographic" value="Radiographic X-Ray"  <c:if test="${kneeexam.radiographic=='Radiographic X-Ray'}"><c:out value="Checked"/></c:if>> Radiographic X-Ray</td>
 <td width="250"><input type="checkbox" name="mri" value="MRI"  <c:if test="${kneeexam.mri=='MRI'}"><c:out value="Checked"/></c:if>>MRI</td>
 <td width="250"><input type="checkbox" name="ctscan" value="CT Scan"  <c:if test="${kneeexam.ctscan=='CT Scan'}"><c:out value="Checked"/></c:if>>CT Scan</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="nerve" value="Nerve Conduction"  <c:if test="${kneeexam.nerve=='Nerve Conduction'}"><c:out value="Checked"/></c:if>>Nerve Conduction</td>
 <td width="250"><input type="checkbox" name="emg" value="EMG"  <c:if test="${kneeexam.emg=='EMG'}"><c:out value="Checked"/></c:if>>EMG</td>
 <td width="250"><input type="checkbox" name="outside" value="Outside Referral"  <c:if test="${kneeexam.outside=='Outside Referral'}"><c:out value="Checked"/></c:if>>Outside Referral </td>
 <td width="250"><input type="checkbox" name="dc" value="D/C"  <c:if test="${kneeexam.dc=='D/C'}"><c:out value="Checked"/></c:if>>D/C</td>
 <td width="250"><input type="checkbox" id="otheraddress" name="otheraddress" value="Other" onclick="visible(this.value)" <c:if test="${kneeexam.otheraddress=='Other'}"><c:out value="Checked"/></c:if>>Other<input type="text" class="input_txtbx1" id="break4" name="break_text4"  style="display:none"  value="${kneeexam.break_text4}" /></td>
 </tr>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign" value="${kneeexam.sign}"><span class="err"><form:errors path="Kneeexam.sign"></form:errors></span></B></td></tr></table>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save"></td>
<td><input type="reset" class="submit_btn" value="Cancel" onclick="myclose()"></td>
<script>
 function myclose()
 {
	 window.close();
 }
 </script>
</tr>
</table>
 </table>
  </div>
</div>
</form>
</body>   ;'
