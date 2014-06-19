<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  $(window).load(function(){
$("#flexion").keyup(function() {
	 $("#number").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	var intRegex = /^\d+$/;
	if(intRegex.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#number").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
    oldValue = $(this).val();
})
});
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
          <script>
  function printPage(id)
  {
	
	        document.getElementById('print').style.visibility = 'hidden';
	        document.getElementById('print1').style.visibility = 'hidden';
	        document.getElementById('saveid').style.visibility = 'hidden';
	        document.getElementById('cancelid').style.visibility = 'hidden';
		  
     var html="<html>";
     html+= document.getElementById(id).innerHTML;

     html+="</html>";

     var printWin = window.open('','','left=0,top=0,width=1400,height=1000,toolbar=0,scrollbars=0,status  =0');
     printWin.document.write(html);
     printWin.document.close();
     printWin.focus();
     printWin.print();
     printWin.close();
     document.getElementById('print').style.visibility = 'visible';
     document.getElementById('print1').style.visibility = 'visible';
     document.getElementById('saveid').style.visibility = 'visible';
     document.getElementById('cancelid').style.visibility = 'visible';
	  
  }
  </script>
   <script>

	function checkSubmit()
	{
document.getElementById("pnameerror").innerHTML=" ";
		
		if(document.getElementById("pname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("datepickererror").innerHTML="";
	if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
	document.getElementById("datepickererror").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		if(document.getElementById("datepicker").value.match(datechk)==null)
	    {
	    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
	    	
	        return false;
	    }	
			
	document.getElementById("signerror").innerHTML="";
	if(document.getElementById("sign").value=="")
	{
	document.getElementById("signerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	}
	</script>
	
	<script type="text/javascript">
       function validate(event) {
          
           var regex = new RegExp("^[0-9.]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script>
    
     <script>
	function check(id,e,value){
    //Check Charater
    	
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength(id){
   
    var fieldVal = document.getElementById(id).value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById(id).value;
       
        str = str.substring(0, str.length - 1);
    document.getElementById(id).value = str;
    }
     
    }
	</script>
</head>
 <body>
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li>          
       </ul><form action="lumbopelvicexam" method="POST" name="lumbopelvic">
       <input type="hidden" name="username" value="${username}">
        <c:choose>
    		<c:when test="${empty lumbopelvic}"> 
   <div id="tabs-1"> 
 <div id="right_content">
 <table width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
       <div id="block1">
       <div class="headings altheading">
	          <img src="resources/images/print.png" id="print" width="46px" height="46px" style="float:right ;" onclick="printPage('block1');">
	            <center> <h2>LUMBOPELVIC INITIAL EXAM</h2> </center><br>
	            
	            </div>
	    <div class="contentbox">
	    
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
 <tr class="row1">
<td width="150" style="width: 198px; "><h4><span class="err">*</span>Patient Name:</h4></td><td><input type="text" name="pname" id="pname"><span class="err" id="pnameerror"><form:errors path="Lumbopelvicexam.pname"></form:errors></span></td>
<td width="600" style="width: 444px; ">
</td><td><h4><span class="err">*</span>Date:</h4></td><td><input type="text" id="datepicker" name="date"><span class="err" id="datepickererror"><form:errors path="Lumbopelvicexam.date"></form:errors></span></td>
</tr>
</table>
<br>
<br>
 <table cellpadding="0" cellspacing="0" border="0">
 <tr class="row1">
 <td width="300" style="width: 247px; "><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</b></td>
 <td></td>
 <td style="width: 111px; "></td>
 <td style="width: 110px; "></td>
 <td style="width: 169px; "></td>
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Gait:</td><td><select style="width:180px" name="gait" id="gait" onchange="Checksymptom(this.value);">
					<option selected="selected" value="normal">Normal</option>
					<option value="antalgic">Antalgic</option>
					<option value="shuffling">Shuffling</option>
					<option value="limp">Limp</option>
					<option value="stagger">Stagger</option>
					<option value="caneassited">Cane Assisted</option>
					<option value="wheelchair">Wheel Chair</option>
					</select></td> 
 <td style="width: 144px; "></td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Pelvic Unleveling:</td><td><select style="width:180px" name="pelvicunleveling" id="pelvicunleveling" onchange="Checksymptom(this.value);">
					<option selected="selected" value="none">None</option>
					<option value="superiorilliaccrestright">superior illiac crest right</option>
					<option value="superioriliaccrestleft">superior iliac crest left</option>
					</select></td> 
  <td>A & O:<select name="ao" id="ao" onchange="Checksymptom(this.value);">
					<option selected="selected" value="excellent">Excellent</option>
					<option value="good">Good</option>
					<option value="fair">Fair</option>
					<option value="severe">Severe</option>
					</select> </td>
 <td></td>
 <td style="width: 108px; "></td> 
 <td style="width: 125px; "></td>
 </tr>
 <tr class="row1">
 <td width="200"><b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</b></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable"> All Soft Tissue Unremarkable</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td style="width: 150px; "></td>
 <td></td> 
 <td></td>
 <td></td>
 </tr>
  <tr class="row1">
 <td width="200" style="width: 241px; ">Leg Length Discrepancy:Short Leg-  </td> 
 <td><input type="checkbox" name="leglengthcheckl" value="left" onclick="this.form.break5.style.visibility = this.checked? 'visible' : 'hidden'">Left
 <select name="leglengthl" id="break5" style="visibility:hidden" onchange="Checksymptom(this.value);">
					<option selected="selected" value="1/8">1/8</option>
					<option value="1/4">1/4</option>
					<option value="3/8">3/8</option>
					<option value="1/2">1/2</option>
					<option value="5/8">5/8</option>
					<option value="3/4">3/4</option>
					<option value="7/8">7/8</option>
					<option value="1">1</option>
					<option value="other">other</option>
					<input type="text" name="other1" id="other1" style="display:none">
					</select></td>
					<td style="width: 211px; "><input type="checkbox" name="leglengthcheckr" value="right" onclick="this.form.break6.style.visibility = this.checked? 'visible' : 'hidden'">Right
					<select name="leglengthr" id="break6" style="visibility:hidden" onchange="Checksymptom(this.value);">
					<option selected="selected" value="1/8">1/8</option>
					<option value="1/4">1/4</option>
					<option value="3/8">3/8</option>
					<option value="1/2">1/2</option>
					<option value="5/8">5/8</option>
					<option value="3/4">3/4</option>
					<option value="7/8">7/8</option>
					<option value="1">1</option>
					<option value="other">other</option>
					</select><input type="text" name="other2" id="other2" style="display:none">
					</td>
					<td></td>
					<td></td>
					<td></td> 
					
 </tr>
 <tr class="row1">
 <td>Piriformis:</td><td width="100"><input type="radio" name="piriformis" value="Left">Left <input type="radio" name="piriformis" value="Right">Right</td> 
 
 <td style="width: 170px; ">Quad Lumb:</td><td width="200" style="width: 175px; "><input type="radio" name="quadlumb" value="Left">Left  <input type="radio" name="quadlumb" value="Right">Right</td> 
 
 <td>Paraspinals:</td><td width="100"><input type="radio" name="paraspinals" value="Left">Left <input type="radio" name="paraspinals" value="Right">Right</td>
 </tr>
 <tr class="row1">
 <td>Gluteus Maximus:</td><td><input type="radio" name="gluteus" value="Left">Left  <input type="radio" name="gluteus" value="Right">Right</td> 
 <td>Gluteus Medius:</td><td width="200"><input type="radio" name="gluteusmedius" value="Left">Left  <input type="radio" name="gluteusmedius" value="Right">Right</td> 
 <td>Hamstrings:</td><td><input type="radio" name="hamstrings" value="Left">Left <input type="radio" name="hamstrings" value="Right">Right</td>
 </tr>
 <tr class="row1">
 <td>Iliopsoas:</td><td><input type="radio" name="iliopsoas" value="Left">Left  <input type="radio" name="iliopsoas" value="Right">Right</td> 
 <td>Rectus Abdominis:	</td><td><input type="radio" name="rectus" value="Left">Left <input type="radio" name="rectus" value="Right">Right</td> 
 <td>Obliques:</td><td><input type="radio" name="obliques" value="Left">Left <input type="radio" name="obliques" value="Right">Right</td>
 </tr>
 </table>
 <table cellpadding="0" cellspacing="0" border="0">
 <tr class="row1">
 <td>Other/Notes:<input type="text" name="othernotes"></td> 
 <td width="150">
 </td><td></td><td></td>
 <td width="150">
 </td><td></td><td></td>
 </tr>
 </table>
 

 <table>
 <tr class="row1">
 <td width="350" style="width: 265px; "><b style="font-size:14px">FUNCTIONAL RANGE OF MOTION</b> </td><td width="200" style="width: 157px; "><input type="radio" name="functionalrangeofmotion" value="Unremarkable">Unremarkable</td> 
 <td width="350" style="width: 237px; "><b style="font-size:14px">SUBLUXATION /DYSFUNCTION  </b></td><td width="150" style="width: 186px; "><input type="radio" name="subluxation" value="Unremarkable">Unremarkable</td> 
 <td width="250"><b style="font-size:14px">ORTHOTPEDIC TESTING </b></td><td><input type="radio" name="orthopedic" value="Unremarkable">Unremarkable</td>
 </tr>
  <tr class="row1">
 <td style="width: 219px; ">  </td><td> <b>Normal</b> &nbsp;&nbsp;&nbsp;<b> Actual</b></td> 
 <td></td><td width="250"> </td> 
 <td>  </td><td>   <b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
<span class="err"><div id="number"></div></span> <td style="width: 135px; "><b> Flexion:</b> </td><td> (60)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="flexion" id="flexion" size="7" onkeypress="return validate(event)"><div></div></td> 
 <td width="100">T8-9:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t89" size="7" onkeypress="return validate(event)"></td><td width="250">T9-10:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t910" size="7" onkeypress="return validate(event)"> </td> 
 <td><b>Trendelenburg:</b> </td><td><input type="text" name="trendelburgl" size="5" onkeypress="return validate(event)"> <input type="text" name="trendelburgr" size="5" onkeypress="return validate(event)"></td>
 </tr>
 
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (25)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="extension" size="7" onkeypress="return validate(event)"></td> 
 <td width="100">T10-11:&nbsp;<input type="text" name="t1011" size="7" onkeypress="return validate(event)"></td><td width="50">T11-12:&nbsp;&nbsp;&nbsp;<input type="text" name="t1112" size="7" onkeypress="return validate(event)"> </td> 
 <td><b>Kemps:	</b> </td><td><input type="text" name="kempsl" size="5" onkeypress="return validate(event)"> <input type="text" name="kempsr" size="5" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td><b>Lateral Flexion:</b> </td><td> (25)&nbsp;&nbsp;&nbsp;L <input type="text" name="lflexion" size="7" onkeypress="return validate(event)"><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rflexion" size="7" onkeypress="return validate(event)"></td> 
 <td width="100">T12-L1:&nbsp;<input type="text" name="t12l1" size="7" onkeypress="return validate(event)"></td> 
 <td><b>Slump:</b> </td><td><input type="text" name="slumpl" size="5" onkeypress="return validate(event)"> <input type="text" name="slumpr" size="5" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
  <td><b>Rotation:</b> </td><td> (45)&nbsp;&nbsp;&nbsp;L <input type="text" name="lrotation" size="7" onkeypress="return validate(event)"><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rrotation" size="7" onkeypress="return validate(event)"></td> 
 <td width="100">L2-3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="l23" size="7" onkeypress="return validate(event)"></td><td width="50">L3-4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td width="50">	L1-2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="l12" size="7" onkeypress="return validate(event)"> </td><input type="text" name="l34" size="7" onkeypress="return validate(event)"> <td></td> 
 <td><b>Straight Leg Raise:</b> </td><td><input type="text" name="straightlegl" size="5" onkeypress="return validate(event)"> <input type="text" name="straightlegr" size="5" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td width="100">L4-5:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="l45" size="7" onkeypress="return validate(event)"></td><td width="50">L5-S1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="l5s1" size="7" onkeypress="return validate(event)"> </td> 
 <td><b>Well Leg Raise:	</b> </td><td><input type="text" name="welllegl" size="5" onkeypress="return validate(event)"> <input type="text" name="welllegr" size="5" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td> </td><td> </td> 
 <td width="100">L SI: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="lsi" size="7" onkeypress="return validate(event)"></td><td width="50">	R SI:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="rsi" size="7" onkeypress="return validate(event)"> </td> 
 <td><b>Nachlas / Yeoman's</b> </td><td><input type="text" name="nachlasl" size="5" onkeypress="return validate(event)"> <input type="text" name="nachlasr" size="5" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Positive Minor's:	</b> </td><td><input type="text" name="positiveminor" size="15" onkeypress="return validate(event)"> </td>
 </tr>
 <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Positive Adam's:	</b> </td><td><input type="text" name="positiveadam" size="15" onkeypress="return validate(event)"> </td>
 </tr>
 </table>
 </div></div>
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
<div id="block2">
	            <div class="headings altheading">
	          <img src="resources/images/print.png" id="print1" width="46px" height="46px" style="float:right ;" onclick="printPage('block2');">
	            <center> <h2>LUMBOPELVIC INITIAL EXAM</h2> </center><br>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 </tr><tr class="row1">
 <td><b style="font-size:14px">NEUROLOGICAL</b></td><td style="width: 352px; "><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td><td><!-- <input type="checkbox" name="exceptn" value="Except">Except --></td>
 <td style="width: 246px; "></td><td style="width: 55px; "></td><td style="width: 258px; "></td>
 </tr>
 <tr class="row1">
 <td><b>Level</b> </td>
 <td><b> Sensory</b></td>
 <td width="110"><b>Level</b></td>
 <td> <b>Motor / Strength</b></td>
 <td width="110"><b>Level</b> </td>
 <td> <b>Reflexes(Muscle Spindles)</b></td> 
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
 <td><input type="text" name="l1l" size="5" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="l1r" size="5" onkeypress="return validate(event)">&nbsp;(Inguinal area)</td>
 <td>L1 </td>
 <td> <input type="text" name="l15l" id="l15l" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l15r" id="l15r" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td>  </td>
 </tr>
 <tr class="row1">
 <td>L2</td>
 <td><input type="text" name="l2l" size="5" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="l2r" size="5" onkeypress="return validate(event)">&nbsp;(Ant/med thigh)</td>
 <td>L2 </td>
 <td> <input type="text" name="l25l" id="l25l" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l25r" id="l25r" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L3</td>
 <td><input type="text" name="l3l" size="5" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="l3r" size="5" onkeypress="return validate(event)">&nbsp;(Medial knee)	</td>
 <td>L3 </td>
 <td> <input type="text" name="l35l" id="l35l" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l35r" id="l35r" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L4</td>
 <td><input type="text" name="l4l" size="5" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="l4r" size="5" onkeypress="return validate(event)">&nbsp;(Medial leg)	</td>
 <td>L4 </td>
 <td> <input type="text" name="l45l" id="l45l" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l45r" id="l45r" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;(Rectus fem.)</td>
 <td> L4</td>
 <td> <input type="text" name="l4l3" id="l4l3" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l4r3" id="l4r3" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;(Patellar)</td>
 </tr>
 <tr class="row1">
 <td>L5</td>
 <td><input type="text" name="l5l" size="5" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="l5r" size="5" onkeypress="return validate(event)">&nbsp;(Ant/lat leg)	</td>
 <td>L5 </td>
 <td> <input type="text" name="l55l" id="l55l" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l55r" id="l55r" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;  (Glut Med)</td>
 <td>L5 </td>
 <td><input type="text" name="l5l3" id="l5l3" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l5r3" id="l5r3" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;(Med HS) </td>
 </tr>
 <tr class="row1">
 <td>SI</td>
 <td><input type="text" name="sl" size="5" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="sr" size="5" onkeypress="return validate(event)">&nbsp;(Big toe/plantar)		</td>
 <td>SI </td>
 <td> <input type="text" name="s5l" id="s5l" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="s5r" id="s5r" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; (Glut Max)</td>
 <td>SI </td>
 <td> <input type="text" name="sil" id="sil" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="sir" id="sir"  size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">&nbsp;/5&nbsp;(Achilles)</td>
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
<table cellpadding="0" cellspacing="0" border="0">         
 <tr class="row1">
 <td style="width: 358px; height: 43px"><b style="font-size:14px">FUNCTIONAL DEFICIT:</b></td><td style="height: 72px; "><input type="checkbox" name="sitting" value="Sitting to Standing">Sitting to Standing &nbsp; <input type="checkbox" name="lifting" value="Lifting">Lifting	
&nbsp; <input type="checkbox" name="walking" value="Walking">Walking&nbsp;<input type="checkbox" name="stairs" value="Stairs">Stairs
 &nbsp;<input type="checkbox" name="otherfunctional" value="Other" onclick="this.form.break3.style.visibility = this.checked? 'visible' : 'hidden'">Other&nbsp;</td><td> <input type="text" class="input_txtbx1" id="break3" name="break_text3" style="visibility:hidden"></td>
 </tr>         
 <tr class="row1">
 <td width="450"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</b></td><td style="height: 111px; "><textarea name="assessment" rows="5" cols="40" style="height: 66px; "></textarea></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td><select name="patientstatus" id="patientstatus" onchange="Checksymptom(this.value);">
					<option selected="selected" value="Excellent">Excellent</option>
					<option value="Good">Good</option>
					<option value="Fair">Fair</option>
					<option value="Poor">Poor</option>
					</select></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table cellpadding="0" cellspacing="0" border="0">
 <tr class="row1">
 <td width="360"><b style="font-size:14px">DIAGNOSIS:</b></td>
 <td width="250">1)<input type="text" name="diagnosis1"></td>
 <td width="250">2)<input type="text" name="diagnosis2"></td>
 <td width="250">3)<input type="text" name="diagnosis3"></td>
 <td width="250">4)<input type="text" name="diagnosis4"></td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)<input type="text" name="diagnosis5"></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table cellpadding="0" cellspacing="0" border="0">
 <tr class="row1">
 <td width="120"><b style="font-size:14px">PLAN:</b></td>
 <td><input type="text" name="times">Times/week for </td>
 <td><input type="text" name="week">weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table cellpadding="0" cellspacing="0" border="0">
 <tr class="row1">
 <td width="120">
 </td><td width="250"><input type="checkbox" name="spinal" value="Spinal Decompression">Spinal Decompression	</td>
 <td width="250"><input type="checkbox" name="chiropractic" value="Chiropractic">Chiropractic</td>
 <td width="250"><input type="checkbox" name="physical" value="Physical Therapy">Physical Therapy</td>
 <td width="250"><input type="checkbox" name="orthotics" value="Orthotics/Bracing">Orthotics/Bracing</td>
 <td width="250"><input type="checkbox" name="modalities" value="Modalities">Modalities	</td>
 </tr>
 <tr class="row1">
 <td width="120">
 </td><td width="250"><input type="checkbox" name="supplementation" value="Supplementation">Supplementation</td>
 <td width="250"><input type="checkbox" name="hep" value="HEP">HEP</td>
 <td width="250"><input type="checkbox" name="radiographic" value="Radiographic X-Ray"> Radiographic X-Ray</td>
 <td width="250"><input type="checkbox" name="mri" value="MRI">MRI</td>
 <td width="250"><input type="checkbox" name="ctscan" value="CT Scan">CT Scan</td>
 </tr>
 <tr class="row1">
 <td width="120">
 </td><td width="250"><input type="checkbox" name="nerve" value="Nerve Conduction">Nerve Conduction</td>
 <td width="250"><input type="checkbox" name="emg" value="EMG">EMG</td>
 <td width="250"><input type="checkbox" name="outside" value="Outside Referral">Outside Referral </td>
 <td width="250"><input type="checkbox" name="dc" value="D/C">D/C</td>
 <td width="250"><input type="checkbox" name="otheraddress" value="Other" onclick="this.form.break4.style.visibility = this.checked? 'visible' : 'hidden'">Other<input type="text" class="input_txtbx1" id="break4" name="break_text4" style="visibility:hidden"></td>
 </tr>
 <tr></tr>
 <br><div></div>
 <table cellpadding="0" cellspacing="0" border="0"><tr><td><b style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign" id="sign"><span class="err" id="signerror"><form:errors path="Lumbopelvicexam.sign"></form:errors></span></b></td></tr></table>
 </table>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');"></td>
<td><input type="reset" class="submit_btn" value="Cancel" id="cancelid" onclick="myclose()"></td>
<script>
 function myclose()
 {
	 window.close();
 }
 </script>
</tr>
</table>
 </div>
 </div></td>
 </tr>
 </table>
 </div>
 </div>
 </c:when>
 <c:otherwise>
 <div id="tabs-1"> 
 <div id="right_content">
 <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
   <tr>
     <td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>LUMBOPELVIC REEXAM</h2> </center><br>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">   
 <tr class="row1">
<td width="150"><h2><span class="err">*</span>Patient Name:</h2></td><td width="380"><input type="text" name="pname" value="${lumbopelvic.pname}"><span class="err"><form:errors path="Lumbopelvicexam.pname"></form:errors></span></td>
<td width="300">
</td><td><h2><span class="err">*</span>Date:</h2></td><td width="380"><input type="text" id="datepicker" name="date" value="${lumbopelvic.date}"><span class="err"><form:errors path="Lumbopelvicexam.date"></form:errors></span></td>
</tr>
</table>
<br>
<br>
 <table>
 <tr class="row1">
 <td><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</b></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Gait:</td><td><select style="width:180px" name="gait" id="gait" onchange="Checksymptom(this.value);">
					<option selected="selected" value="normal" <c:if test="${lumbopelvic.gait=='normal'}"><c:out value="selected"/></c:if>="">Normal</option>
					<option value="antalgic" <c:if test="${lumbopelvic.gait=='antalgic'}"><c:out value="selected"/></c:if>="">Antalgic</option>
					<option value="shuffling" <c:if test="${lumbopelvic.gait=='shuffling'}"><c:out value="selected"/></c:if>="">Shuffling</option>
					<option value="limp" <c:if test="${lumbopelvic.gait=='limp'}"><c:out value="selected"/></c:if>="">Limp</option>
					<option value="stagger" <c:if test="${lumbopelvic.gait=='stagger'}"><c:out value="selected"/></c:if>="">Stagger</option>
					<option value="caneassited" <c:if test="${lumbopelvic.gait=='caneassited'}"><c:out value="selected"/></c:if>="">Cane Assisted</option>
					<option value="wheelchair" <c:if test="${lumbopelvic.gait=='wheelchair'}"><c:out value="selected"/></c:if>="">Wheel Chair</option>
					</select></td> 
 <td></td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Pelvic Unleveling:</td><td><select style="width:180px" name="pelvicunleveling" id="pelvicunleveling" onchange="Checksymptom(this.value);">
					<option selected="selected" value="none" <c:if test="${lumbopelvic.pelvicunleveling=='none'}"><c:out value="selected"/></c:if>="">None</option>
					<option value="superiorilliaccrestright" <c:if test="${lumbopelvic.pelvicunleveling=='superiorilliaccrestright'}"><c:out value="selected"/></c:if>="">superior illiac crest right</option>
					<option value="superioriliaccrestleft" <c:if test="${lumbopelvic.pelvicunleveling=='superiorilliaccrestleft'}"><c:out value="selected"/></c:if>="">superior iliac crest left</option>
					</select></td> 
  <td>A & O:<select name="ao" id="ao" onchange="Checksymptom(this.value);">
					<option selected="selected" value="excellent" <c:if test="${lumbopelvic.ao=='excellent'}"><c:out value="selected"/></c:if>="">Excellent</option>
					<option value="good" <c:if test="${lumbopelvic.ao=='good'}"><c:out value="selected"/></c:if>="">Good</option>
					<option value="fair" <c:if test="${lumbopelvic.ao=='fair'}"><c:out value="selected"/></c:if>="">Fair</option>
					<option value="severe" <c:if test="${lumbopelvic.ao=='severe'}"><c:out value="selected"/></c:if>="">Severe</option>
					</select> </td>
 <td></td>
 <td></td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200"><b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</b></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable" <c:if test="${lumbopelvic.allsoft=='All Soft Tissue Unremarkable'}"><c:out value="Checked"/></c:if>=""> All Soft Tissue Unremarkable</td> 
 <td> <%-- <input type="checkbox" name="except" value="Except" <c:if test="${lumbopelvic.except=='Except'}"><c:out value="Checked"/></c:if>> Except --%> </td>
 <td></td>
 <td></td> 
 <td></td>
 </tr>
  <tr class="row1">
 <td width="200">Leg Length Discrepancy:Short Leg-  </td> 
 <td><input type="checkbox" id="leglengthcheckl" name="leglengthcheckl" value="left" onclick="visible(this.value)" <c:if test="${lumbopelvic.leglengthcheckl=='left'}"><c:out value="Checked"/></c:if>="">Left</td>
 <td><select name="leglengthl" id="break5" style="display:none" onchange="Checksymptom(this.value);">
					<option selected="selected" value="1/8" <c:if test="${lumbopelvic.leglengthl=='1/8'}"><c:out value="Selected"/></c:if>="">1/8</option>
					<option value="1/4" <c:if test="${lumbopelvic.leglengthl=='1/4'}"><c:out value="Selected"/></c:if>="">1/4</option>
					<option value="3/8" <c:if test="${lumbopelvic.leglengthl=='3/8'}"><c:out value="Selected"/></c:if>="">3/8</option>
					<option value="1/2" <c:if test="${lumbopelvic.leglengthl=='1/2'}"><c:out value="Selected"/></c:if>="">1/2</option>
					<option value="5/8" <c:if test="${lumbopelvic.leglengthl=='5/8'}"><c:out value="Selected"/></c:if>="">5/8</option>
					<option value="3/4" <c:if test="${lumbopelvic.leglengthl=='3/4'}"><c:out value="Selected"/></c:if>="">3/4</option>
					<option value="7/8" <c:if test="${lumbopelvic.leglengthl=='7/8'}"><c:out value="Selected"/></c:if>="">7/8</option>
					<option value="1" <c:if test="${lumbopelvic.leglengthl=='1'}"><c:out value="Selected"/></c:if>="">1</option>
					<option value="other" <c:if test="${lumbopelvic.leglengthl=='other'}"><c:out value="Selected"/></c:if>="">other</option>
					</select></td>
					<td>
					<input type="text" name="other1" id="other1" style="display:none" value="${lumbopelvic.other1 }">
					<select></select></td>
					<td><input type="checkbox" id="leglengthcheckr" name="leglengthcheckr" value="right" onclick="visible(this.value)" <c:if test="${lumbopelvic.leglengthcheckr=='right'}"><c:out value="Checked"/></c:if>="" onclick="this.form.break6.style.visibility = this.checked? 'visible' : 'hidden'">Right</td>
					 <td><select name="leglengthr" id="break6" style="display:none" onchange="Checksymptom(this.value);">
					<option selected="selected" value="1/8" <c:if test="${lumbopelvic.leglengthr=='1/8'}"><c:out value="Selected"/></c:if>="">1/8</option>
					<option value="1/4" <c:if test="${lumbopelvic.leglengthr=='1/4'}"><c:out value="Selected"/></c:if>="">1/4</option>
					<option value="3/8" <c:if test="${lumbopelvic.leglengthr=='3/8'}"><c:out value="Selected"/></c:if>="">3/8</option>
					<option value="1/2" <c:if test="${lumbopelvic.leglengthr=='1/2'}"><c:out value="Selected"/></c:if>="">1/2</option>
					<option value="5/8" <c:if test="${lumbopelvic.leglengthr=='5/8'}"><c:out value="Selected"/></c:if>="">5/8</option>
					<option value="3/4" <c:if test="${lumbopelvic.leglengthr=='3/4'}"><c:out value="Selected"/></c:if>="">3/4</option>
					<option value="7/8" <c:if test="${lumbopelvic.leglengthr=='7/8'}"><c:out value="Selected"/></c:if>="">7/8</option>
					<option value="1" <c:if test="${lumbopelvic.leglengthr=='1'}"><c:out value="Selected"/></c:if>="">1</option>
					<option value="other" <c:if test="${lumbopelvic.leglengthr=='other'}"><c:out value="Selected"/></c:if>="">other</option></select></td>
					<td><input type="text" name="other2" id="other2" style="display:none" value="${lumbopelvic.other2 }">
					<select></select></td>
					<td></td>
					<td></td>
					<td></td> 
					
 </tr>
 <tr class="row1">
 <td>Piriformis:</td><td width="100"><input type="radio" name="piriformis" value="Left" <c:if test="${lumbopelvic.piriformis=='Left'}"><c:out value="checked=checked"/></c:if>="">Left <input type="radio" name="piriformis" value="Right" <c:if test="${lumbopelvic.piriformis=='Right'}"><c:out value="checked=checked"/></c:if>="">Right</td> 
 
 <td>Quad Lumb:</td><td width="200"><input type="radio" name="quadlumb" value="Left" <c:if test="${lumbopelvic.quadlumb=='Left'}"><c:out value="checked=checked"/></c:if>="">Left  <input type="radio" name="quadlumb" value="Right" <c:if test="${lumbopelvic.quadlumb=='Right'}"><c:out value="checked=checked"/></c:if>="">Right</td> 
 
 <td>Paraspinals:</td><td width="100"><input type="radio" name="paraspinals" value="Left" <c:if test="${lumbopelvic.paraspinals=='Left'}"><c:out value="checked=checked"/></c:if>="">Left <input type="radio" name="paraspinals" value="Right" <c:if test="${lumbopelvic.paraspinals=='Right'}"><c:out value="checked=checked"/></c:if>="">Right</td>
 </tr>
 <tr class="row1">
 <td>Gluteus Maximus:</td><td><input type="radio" name="gluteus" value="Left" <c:if test="${lumbopelvic.gluteus=='Left'}"><c:out value="checked=checked"/></c:if>="">Left  <input type="radio" name="gluteus" value="Right" <c:if test="${lumbopelvic.gluteus=='Right'}"><c:out value="checked=checked"/></c:if>="">Right</td> 
 <td>Gluteus Medius:</td><td width="200"><input type="radio" name="gluteusmedius" value="Left" <c:if test="${lumbopelvic.gluteusmedius=='Left'}"><c:out value="checked=checked"/></c:if>="">Left  <input type="radio" name="gluteusmedius" value="Right" <c:if test="${lumbopelvic.gluteusmedius=='Right'}"><c:out value="checked=checked"/></c:if>="">Right</td> 
 <td>Hamstrings:</td><td><input type="radio" name="hamstrings" value="Left" <c:if test="${lumbopelvic.hamstrings=='Left'}"><c:out value="checked=checked"/></c:if>="">Left <input type="radio" name="hamstrings" value="Right" <c:if test="${lumbopelvic.hamstrings=='Right'}"><c:out value="checked=checked"/></c:if>="">Right</td>
 </tr>
 <tr class="row1">
 <td>Iliopsoas:</td><td><input type="radio" name="iliopsoas" value="Left" <c:if test="${lumbopelvic.iliopsoas=='Left'}"><c:out value="checked=checked"/></c:if>="">Left  <input type="radio" name="iliopsoas" value="Right" <c:if test="${lumbopelvic.iliopsoas=='Right'}"><c:out value="checked=checked"/></c:if>="">Right</td> 
 <td>Rectus Abdominis:	</td><td><input type="radio" name="rectus" value="Left" <c:if test="${lumbopelvic.rectus=='Left'}"><c:out value="checked=checked"/></c:if>="">Left <input type="radio" name="rectus" value="Right" <c:if test="${lumbopelvic.rectus=='Right'}"><c:out value="checked=checked"/></c:if>="">Right</td> 
 <td>Obliques:</td><td><input type="radio" name="obliques" value="Left" <c:if test="${lumbopelvic.obliques=='Left'}"><c:out value="checked=checked"/></c:if>="">Left <input type="radio" name="obliques" value="Right" <c:if test="${lumbopelvic.obliques=='Right'}"><c:out value="checked=checked"/></c:if>="">Right</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Other/Notes:<input type="text" name="othernotes" vlaue="${lumbopelvic.othernotes }"></td> 
 <td width="150">
 </td><td></td><td></td>
 <td width="150">
 </td><td></td><td></td>
 </tr>
 <tr class="row1">
 <td width="350"><b style="font-size:14px">FUNCTIONAL RANGE OF MOTION</b> </td><td width="200"><input type="radio" name="functionalrangeofmotion" value="Unremarkable" <c:if test="${lumbopelvic.functionalrangeofmotion=='Unremarkable'}"><c:out value="checked=checked"/></c:if>="">Unremarkable </td> 
 <td width="350"><b style="font-size:14px">SUBLUXATION /DYSFUNCTION  </b></td><td width="150"><input type="radio" name="subluxation" value="Unremarkable" <c:if test="${lumbopelvic.subluxation=='Unremarkable'}"><c:out value="checked=checked"/></c:if>="">Unremarkable</td> 
 <td width="300"><b style="font-size:14px">ORTHOTPEDIC TESTING </b></td><td><input type="radio" name="orthopedic" value="Unremarkable" <c:if test="${lumbopelvic.orthopedic=='Unremarkable'}"><c:out value="checked=checked"/></c:if>="">Unremarkable</td>
 </tr>
  <tr class="row1">
 <td>  </td><td> <b>Normal</b> &nbsp;&nbsp;&nbsp;<b> Actual</b></td> 
 <td></td><td width="250"> </td> 
 <td>  </td><td>   <b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (60)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="flexion" size="7" value="${lumbopelvic.flexion}"></td> 
 <td width="100">T8-9:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t89" size="7" value="${lumbopelvic.t89}"> </td><td width="250">T9-10:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t910" size="7" value="${lumbopelvic.t910}"> </td> 
 <td><b>Trendelenburg:</b> </td><td><input type="text" name="trendelburgl" size="5" value="${lumbopelvic.trendelburgl}"> <input type="text" name="trendelburgr" size="5" value="${lumbopelvic.trendelburgr}"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (25)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="extension" size="7" value="${lumbopelvic.extension}"></td> 
 <td width="100">T10-11:&nbsp;<input type="text" name="t1011" size="7" value="${lumbopelvic.t1011}"></td><td width="50">T11-12:&nbsp;&nbsp;&nbsp;<input type="text" name="t1112" size="7" value="${lumbopelvic.t1112}"> </td> 
 <td><b>Kemps:	</b> </td><td><input type="text" name="kempsl" size="5" value="${lumbopelvic.kempsl}"> <input type="text" name="kempsr" size="5" value="${lumbopelvic.kempsr}"></td>
 </tr>
  <tr class="row1">
 <td><b>Lateral Flexion:</b> </td><td> (25)&nbsp;&nbsp;&nbsp;L <input type="text" name="lflexion" size="7" value="${lumbopelvic.lflexion}"><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rflexion" size="7" value="${lumbopelvic.rflexion}"></td> 
 <td width="100">T12-L1:&nbsp;<input type="text" name="t12l1" size="7" value="${lumbopelvic.t12l1}"></td><td width="50">	L1-2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="l12" size="7" value="${lumbopelvic.l12}"> </td> 
 <td><b>Slump:</b> </td><td><input type="text" name="slumpl" size="5" value="${lumbopelvic.slumpl}"> <input type="text" name="slumpr" size="5" value="${lumbopelvic.slumpr}"></td>
 </tr>
  <tr class="row1">
  <td><b>Rotation:</b> </td><td> (45)&nbsp;&nbsp;&nbsp;L <input type="text" name="lrotation" size="7" value="${lumbopelvic.lrotation}"><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rrotation" size="7" value="${lumbopelvic.rrotation}"></td> 
 <td width="100">L2-3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="l23" size="7" value="${lumbopelvic.l23}"></td><td width="50">L3-4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="l34" size="7" value="${lumbopelvic.l34}"> </td> 
 <td><b>Straight Leg Raise:</b> </td><td><input type="text" name="straightlegl" size="5" value="${lumbopelvic.straightlegl}"> <input type="text" name="straightlegr" size="5" value="${lumbopelvic.straightlegr}"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td width="100">L4-5:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="l45" size="7" value="${lumbopelvic.l45}"></td><td width="50">L5-S1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="l5s1" size="7" value="${lumbopelvic.l5s1}"> </td> 
 <td><b>Well Leg Raise:	</b> </td><td><input type="text" name="welllegl" size="5" value="${lumbopelvic.welllegl}"> <input type="text" name="welllegr" size="5" value="${lumbopelvic.welllegr}"></td>
 </tr>
  <tr class="row1">
 <td> </td><td> </td> 
 <td width="100">L SI: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="lsi" size="7" value="${lumbopelvic.lsi}"></td><td width="50">	R SI:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="rsi" size="7" value="${lumbopelvic.rsi}"> </td> 
 <td><b>Nachlas / Yeoman's</b> </td><td><input type="text" name="nachlasl" size="5" value="${lumbopelvic.nachlasl}"> <input type="text" name="nachlasr" size="5" value="${lumbopelvic.nachlasr}"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Positive Minor's:	</b> </td><td><input type="text" name="positiveminor" size="15" value="${lumbopelvic.positiveminor}"> </td>
 </tr>
 <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Positive Adam's:	</b> </td><td><input type="text" name="positiveadam" size="15" value="${lumbopelvic.positiveadam}"> </td>
 </tr>
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
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>LUMBOPELVIC REEXAM</h2> </center><br>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 </tr><tr class="row1">
 <td><b style="font-size:14px">NEUROLOGICAL</b></td><td><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable" <c:if test="${lumbopelvic.neurologicaltest=='Neurological Testing Unremarkable'}"><c:out value="Checked"/></c:if>="">Neurological Testing Unremarkable</td><td><%-- <input type="checkbox" name="exceptn" value="Except" <c:if test="${lumbopelvic.exceptn=='Except'}"><c:out value="Checked"/></c:if>>Except --%></td>
 <td></td><td></td><td></td>
 </tr>
 <tr class="row1">
 <td><b>Level</b> </td>
 <td><b> Sensory</b></td>
 <td width="110"><b>Level</b></td>
 <td> <b>Motor / Strength</b></td>
 <td width="110"><b>Level</b> </td>
 <td> <b>Reflexes(Muscle Spindles)</b></td> 
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
 <td><input type="text" name="l1l" size="5" value="${lumbopelvic.l1l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l1r" size="5" value="${lumbopelvic.l1r}">&nbsp;(Inguinal area)</td>
 <td>L1 </td>
 <td> <input type="text" name="l15l" size="5" value="${lumbopelvic.l15l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l15r" size="5" value="${lumbopelvic.l15r}">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td>  </td>
 </tr>
 <tr class="row1">
 <td>L2</td>
 <td><input type="text" name="l2l" size="5" value="${lumbopelvic.l2l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l2r" size="5" value="${lumbopelvic.l2r }">&nbsp;(Ant/med thigh)</td>
 <td>L2 </td>
 <td> <input type="text" name="l25l" size="5" value="${lumbopelvic.l25l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l25r" size="5" value="${lumbopelvic.l25r}">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L3</td>
 <td><input type="text" name="l3l" size="5" value="${lumbopelvic.l3l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l3r" size="5" value="${lumbopelvic.l3r}">&nbsp;(Medial knee)	</td>
 <td>L3 </td>
 <td> <input type="text" name="l35l" size="5" value="${lumbopelvic.l35l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l35r" size="5" value="${lumbopelvic.l35r}">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L4</td>
 <td><input type="text" name="l4l" size="5" value="${lumbopelvic.l4l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l4r" size="5" value="${lumbopelvic.l4r}">&nbsp;(Medial leg)	</td>
 <td>L4 </td>
 <td> <input type="text" name="l45l" size="5" value="${lumbopelvic.l45l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l45r" size="5" value="${lumbopelvic.l45r}">&nbsp;/5&nbsp;(Rectus fem.)</td>
 <td> L4</td>
 <td> <input type="text" name="l4l3" size="5" value="${lumbopelvic.l4l3}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l4r3" size="5" value="${lumbopelvic.l4r3}">&nbsp;/5&nbsp;(Patellar)</td>
 </tr>
 <tr class="row1">
 <td>L5</td>
 <td><input type="text" name="l5l" size="5" value="${lumbopelvic.l5l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l5r" size="5" value="${lumbopelvic.l5r}">&nbsp;(Ant/lat leg)	</td>
 <td>L5 </td>
 <td> <input type="text" name="l55l" size="5" value="${lumbopelvic.l55l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l55r" size="5" value="${lumbopelvic.l55r}">&nbsp;/5&nbsp;  (Glut Med)</td>
 <td>L5 </td>
 <td><input type="text" name="l5l3" size="5" value="${lumbopelvic.l5l3}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l5r3" size="5" value="${lumbopelvic.l5r3}">&nbsp;/5&nbsp;(Med HS) </td>
 </tr>
 <tr class="row1">
 <td>SI</td>
 <td><input type="text" name="sl" size="5" value="${lumbopelvic.sl}">&nbsp; &nbsp; &nbsp;<input type="text" name="sr" size="5" value="${lumbopelvic.sr}">&nbsp;(Big toe/plantar)		</td>
 <td>SI </td>
 <td> <input type="text" name="s5l" size="5" value="${lumbopelvic.s5l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="s5r" size="5" value="${lumbopelvic.s5r}">&nbsp;/5&nbsp; (Glut Max)</td>
 <td>SI </td>
 <td> <input type="text" name="sil" size="5" value="${lumbopelvic.sil}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="sir" size="5" value="${lumbopelvic.sir}">&nbsp;/5&nbsp;(Achilles)</td>
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
 <td><b style="font-size:14px">FUNCTIONAL DEFICIT:</b></td><td><input type="checkbox" name="sitting" value="Sitting to Standing" <c:if test="${lumbopelvic.sitting=='Sitting to Standing'}"><c:out value="Checked"/></c:if>="">Sitting to Standing	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="lifting" value="Lifting" <c:if test="${lumbopelvic.lifting=='Lifting'}"><c:out value="Checked"/></c:if>="">Lifting	</td>
 <td width="150"><input type="checkbox" name="walking" value="Walking" <c:if test="${lumbopelvic.walking=='Walking'}"><c:out value="Checked"/></c:if>="">Walking</td><td width="150"><input type="checkbox" name="stairs" value="Stairs" <c:if test="${lumbopelvic.stairs=='Stairs'}"><c:out value="Checked"/></c:if>="">Stairs</td>
 <td width="150"><input type="checkbox" id="otherfunctional" name="otherfunctional" value="Other" onclick="visible(this.value)" <c:if test="${lumbopelvic.otherfunctional=='Other'}"><c:out value="Checked"/></c:if>="">Other&nbsp;</td><td> <input type="text" class="input_txtbx1" id="break3" name="break_text3" style="display:none" value="${lumbopelvic.break_text3 }"></td>
 </tr>         
 <tr class="row1">
 <td><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</b></td><td><textarea name="assessment" rows="5" cols="40"> ${lumbopelvic.assessment }</textarea></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td><select name="patientstatus" id="patientstatus" onchange="Checksymptom(this.value);">
					<option selected="selected" value="Excellent" <c:if test="${lumbopelvic.patientstatus=='Excellent'}"><c:out value="Selected"/></c:if>="">Excellent</option>
					<option value="Good" <c:if test="${lumbopelvic.patientstatus=='Good'}"><c:out value="Selected"/></c:if>="">Good</option>
					<option value="Fair" <c:if test="${lumbopelvic.patientstatus=='Fair'}"><c:out value="Selected"/></c:if>="">Fair</option>
					<option value="Poor" <c:if test="${lumbopelvic.patientstatus=='Poor'}"><c:out value="Selected"/></c:if>="">Poor</option>
					</select></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="360"><b style="font-size:14px">DIAGNOSIS:</b></td>
 <td width="250">1)<input type="text" name="diagnosis1" value="${lumbopelvic.diagnosis1}"></td>
 <td width="250">2)<input type="text" name="diagnosis2" value="${lumbopelvic.diagnosis2 }"></td>
 <td width="250">3)<input type="text" name="diagnosis3" value="${lumbopelvic.diagnosis3 }"></td>
 <td width="250">4)<input type="text" name="diagnosis4" value="${lumbopelvic.diagnosis4 }"></td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)<input type="text" name="diagnosis5" value="${lumbopelvic.diagnosis5}"></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><b style="font-size:14px">PLAN:</b></td>
 <td><input type="text" name="times" value="${lumbopelvic.times}">Times/week for </td>
 <td><input type="text" name="week" value="${lumbopelvic.week}">weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 </td><td width="250"><input type="checkbox" name="spinal" value="Spinal Decompression" <c:if test="${lumbopelvic.spinal=='Spinal Decompression'}"><c:out value="Checked"/></c:if>="">Spinal Decompression	</td>
 <td width="250"><input type="checkbox" name="chiropractic" value="Chiropractic" <c:if test="${lumbopelvic.chiropractic=='Chiropractic'}"><c:out value="Checked"/></c:if>="">Chiropractic</td>
 <td width="250"><input type="checkbox" name="physical" value="Physical Therapy" <c:if test="${lumbopelvic.physical=='Physical Therapy'}"><c:out value="Checked"/></c:if>="">Physical Therapy</td>
 <td width="250"><input type="checkbox" name="orthotics" value="Orthotics/Bracing" <c:if test="${lumbopelvic.orthotics=='Orthotics/Bracing'}"><c:out value="Checked"/></c:if>="">Orthotics/Bracing</td>
 <td width="250"><input type="checkbox" name="modalities" value="Modalities" <c:if test="${lumbopelvic.modalities=='Modalities'}"><c:out value="Checked"/></c:if>="">Modalities	</td>
 </tr>
 <tr class="row1">
 <td width="120">
 </td><td width="250"><input type="checkbox" name="supplementation" value="Supplementation" <c:if test="${lumbopelvic.supplementation=='Supplementation'}"><c:out value="Checked"/></c:if>="">Supplementation</td>
 <td width="250"><input type="checkbox" name="hep" value="HEP" <c:if test="${lumbopelvic.hep=='HEP'}"><c:out value="Checked"/></c:if>="">HEP</td>
 <td width="250"><input type="checkbox" name="radiographic" value="Radiographic X-Ray" <c:if test="${lumbopelvic.radiographic=='Radiographic X-Ray'}"><c:out value="Checked"/></c:if>=""> Radiographic X-Ray</td>
 <td width="250"><input type="checkbox" name="mri" value="MRI" <c:if test="${lumbopelvic.mri=='MRI'}"><c:out value="Checked"/></c:if>="">MRI</td>
 <td width="250"><input type="checkbox" name="ctscan" value="CT Scan" <c:if test="${lumbopelvic.ctscan=='CT Scan'}"><c:out value="Checked"/></c:if>="">CT Scan</td>
 </tr>
 <tr class="row1">
 <td width="120">
 </td><td width="250"><input type="checkbox" name="nerve" value="Nerve Conduction" <c:if test="${lumbopelvic.nerve=='Nerve Conduction'}"><c:out value="Checked"/></c:if>="">Nerve Conduction</td>
 <td width="250"><input type="checkbox" name="emg" value="EMG" <c:if test="${lumbopelvic.emg=='EMG'}"><c:out value="Checked"/></c:if>="">EMG</td>
 <td width="250"><input type="checkbox" name="outside" value="Outside Referral" <c:if test="${lumbopelvic.outside=='Outside Referral'}"><c:out value="Checked"/></c:if>="">Outside Referral </td>
 <td width="250"><input type="checkbox" name="dc" value="D/C" <c:if test="${lumbopelvic.dc=='D/C'}"><c:out value="Checked"/></c:if>="">D/C</td>
 <td width="250"><input type="checkbox" id="otheraddress" name="otheraddress" value="Other" onclick="visible(this.value)" <c:if test="${lumbopelvic.otheraddress=='Other'}"><c:out value="Checked"/></c:if>="">Other<input type="text" class="input_txtbx1" id="break4" name="break_text4" style="display:none" value="${lumbopelvic.break_text4}"></td>
 </tr>
 <tr></tr>
 <br>
 <table><tr><td><b style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign" value="${lumbopelvic.sign}"><span class="err"><form:errors path="Lumbopelvicexam.sign"></form:errors></span></b></td></tr></table>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save" id="saveid"></td>
<td><input type="reset" class="submit_btn" value="Cancel" id="cancelid" onclick="myclose()"></td>
</tr>
<script>
 function myclose()
 {
	 window.close();
 }
 </script>
</table>
 </table>
 </div>
 </div>
 </td>
 </tr>
 </table>
 </div>
 </div>
 </c:otherwise>
 </c:choose>
 </form>
       
 </div>
 </body>
 </html>
 