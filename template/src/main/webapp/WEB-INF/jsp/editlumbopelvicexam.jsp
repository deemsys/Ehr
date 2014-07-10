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
		$("#pname").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});	
   $(function() {
		$("#othernotes").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});  
   $(function() {
		$("#assessment").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		}); 
   $(function() {
		$("#diagnosis1").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#diagnosis2").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#diagnosis3").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#diagnosis4").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#diagnosis5").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#times").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#week").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#sign").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#break4").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   $(function() {
		$("#break3").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
   </script>
    <script>
  var currentTab=0;
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
  
  
  </script>
   <script>
   function validatename(id){
	    var textInput = document.getElementById(id).value;
	    textInput = textInput.replace(/[^A-Za-z ]/g, "");
	    document.getElementById(id).value = textInput;
	}
     
   
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
$(function() {
   //$( "#draggable" ).draggable({ revert: "not valid" });
   
   $(window).load(function(){	
	   
   var leftvalue=$('#break5').val();
 var rightvalue=$('#break6').val(); 
      
   if(leftvalue=="other")
   {
   document.getElementById("other1").style.display="block";
   }
   else
   {
    document.getElementById("other1").style.display="none";
   }
   if(rightvalue=="other")

   {
   document.getElementById("other2").style.display="block";
   }
   else
   {
    document.getElementById("other2").style.display="none";
   }
   
   });
   $('input:checkbox[name=leglengthcheckl]').each(function() 
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
   $('input:checkbox[name=leglengthcheckr]').each(function() 
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

if(document.getElementById('leglengthcheckl').checked)
{
var element=document.getElementById('break5');
element.style.display='block';
}
else
{
var element=document.getElementById('break5');
element.style.display='none';
}


if(document.getElementById('leglengthcheckr').checked)
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
    if(fieldVal<=5){
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
  function checkValid(e)
  {
	  document.getElementById("pnameerror").innerHTML=" ";
		
		if(document.getElementById("pname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required Field Should not be Empty";
		document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		}
		
		else if(document.getElementById("pname").value.length<4 && document.getElementById("pname").value.length<=32)
		{
		document.getElementById("pnameerror").innerHTML="Name should be length of 4 to 32";
		document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		}
		 else if(document.getElementById("pname").value!="")
		 {
		  document.getElementById("pnameerror").innerHTML="";
		  document.getElementById("btnvisible1").style.visibility="hidden";
		 //document.getElementById("btnNext").style.display="block";
		  document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";		 
		 //document.getElementById("btnNext").style.visibility="visible";
		 }
		
		document.getElementById("datepickererror").innerHTML="";
	if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		}
  	else if(document.getElementById("datepicker").value!="")
		 {
		  document.getElementById("datepickererror").innerHTML="";
		  document.getElementById("btnvisible1").style.visibility="hidden";
		 //document.getElementById("btnNext").style.display="block";
		  document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";		 
		 //document.getElementById("btnNext").style.visibility="visible";
		 }
	
  	
  }

  
  
  </script>        
  <!-- <script>

	function checkSubmit()
	{
document.getElementById("pnameerror").innerHTML=" ";
		
		if(document.getElementById("pname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("pnameerror").innerHTML="";
	    if(document.getElementById("pname").value.length<4 || document.getElementById("pname").value.length>=32)
	    {
	    	
	    	document.getElementById("pnameerror").innerHTML="Name should be min 4 and max 32";
	    	
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
		
		
	
	}
	</script> -->
	<script>
	function checkSubmit1(){
		
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
	document.getElementById("signerror").innerHTML="";
	    if(document.getElementById("sign").value.length<4 || document.getElementById("sign").value.length>=32)
	    {
	    	
	    	document.getElementById("signerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	
	
	
	}
	
	</script>        

</head>
 <body>
 <br><br>
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2" onclick="return checkSubmit('this');">2</a></li>          
       </ul>
         
   <div id="tabs-1"> 
 <div id="right_content">
<form action="updatelumbopelvicexam" method="post" name="update" id="update">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>LUMBOPELVIC REEXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
        <c:set value="${lumbopelvicexamForm.lumbopelvicexam[0]}" var="lumbopelvicexam"/>   
 <tr class="row1">
 <input type="hidden" name="lumbopelvicexamid" id="inp_id" value="${lumbopelvicexam.lumbopelvicexamid}">
<td><h2><span class="err">*</span>&nbsp;&nbsp;Patient Name:</h2></td><td><input type="text"  name="pname" id="pname" value="${lumbopelvicexam.pname}" onInput="return validatename(id)";/><br><span class="err" id="pnameerror"><form:errors path="Lumbopelvicexam.pname"></form:errors></span></td>
<td width="600">
<td><h2><span class="err">*</span>&nbsp;&nbsp;Date:</h2></td><td><input type="text"  id="datepicker" name="date" id="datepicker" value="${lumbopelvicexam.date}"/><br><span class="err" id="datepickererror"><form:errors path="Lumbopelvicexam.date"></form:errors></span></td>
</tr>
</table>
<br/>
<br/>
 <table>
 <tr class="row1">
 <td><B style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</B></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Gait:</td><td><select style="width:180px" name="gait" id="gait"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="normal" <c:if test="${lumbopelvicexam.gait=='normal'}"><c:out value="selected"/></c:if> >Normal</option>
					<option value="antalgic" <c:if test="${lumbopelvicexam.gait=='antalgic'}"><c:out value="selected"/></c:if>>Antalgic</option>
					<option value="shuffling" <c:if test="${lumbopelvicexam.gait=='shuffling'}"><c:out value="selected"/></c:if>>Shuffling</option>
					<option value="limp" <c:if test="${lumbopelvicexam.gait=='limp'}"><c:out value="selected"/></c:if>>Limp</option>
					<option value="stagger" <c:if test="${lumbopelvicexam.gait=='stagger'}"><c:out value="selected"/></c:if>>Stagger</option>
					<option value="caneassited" <c:if test="${lumbopelvicexam.gait=='caneassited'}"><c:out value="selected"/></c:if>>Cane Assisted</option>
					<option value="wheelchair" <c:if test="${lumbopelvicexam.gait=='wheelchair'}"><c:out value="selected"/></c:if>>Wheel Chair</option>
					</select></td> 
 <td></td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Pelvic Unleveling:</td><td><select style="width:180px" name="pelvicunleveling" id="pelvicunleveling"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="none" <c:if test="${lumbopelvicexam.pelvicunleveling=='none'}"><c:out value="selected"/></c:if>>None</option>
					<option value="superiorilliaccrestright" <c:if test="${lumbopelvicexam.pelvicunleveling=='superiorilliaccrestright'}"><c:out value="selected"/></c:if>>superior illiac crest right</option>
					<option value="superioriliaccrestleft" <c:if test="${lumbopelvicexam.pelvicunleveling=='superiorilliaccrestleft'}"><c:out value="selected"/></c:if>>superior iliac crest left</option>
					</select></td> 
  <td>A & O:<select name="ao" id="ao"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="excellent" <c:if test="${lumbopelvicexam.ao=='excellent'}"><c:out value="selected"/></c:if>>Excellent</option>
					<option value="good" <c:if test="${lumbopelvicexam.ao=='good'}"><c:out value="selected"/></c:if>>Good</option>
					<option value="fair" <c:if test="${lumbopelvicexam.ao=='fair'}"><c:out value="selected"/></c:if>>Fair</option>
					<option value="severe" <c:if test="${lumbopelvicexam.ao=='severe'}"><c:out value="selected"/></c:if>>Severe</option>
					</select> </td>
 <td></td>
 <td></td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable" <c:if test="${lumbopelvicexam.allsoft=='All Soft Tissue Unremarkable'}"><c:out value="Checked"/></c:if>> All Soft Tissue Unremarkable</td> 
 <td> <%-- <input type="checkbox" name="except" value="Except" <c:if test="${lumbopelvicexam.except=='Except'}"><c:out value="Checked"/></c:if>> Except --%> </td>
 <td></td>
 <td></td> 
 <td></td>
 </tr>
  <tr class="row1">
 <td width="200">Leg Length Discrepancy:Short Leg-  </td> 
 <td><input type="checkbox" id="leglengthcheckl" name="leglengthcheckl" value="left" onclick="visible(this.value)" <c:if test="${lumbopelvicexam.leglengthcheckl=='left'}"><c:out value="Checked"/></c:if> >Left</td>
 <td><select name="leglengthl" id="break5" style="display:none" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="1/8" <c:if test="${lumbopelvicexam.leglengthl=='1/8'}"><c:out value="Selected"/></c:if>>1/8</option>
					<option value="1/4" <c:if test="${lumbopelvicexam.leglengthl=='1/4'}"><c:out value="Selected"/></c:if>>1/4</option>
					<option value="3/8" <c:if test="${lumbopelvicexam.leglengthl=='3/8'}"><c:out value="Selected"/></c:if>>3/8</option>
					<option value="1/2" <c:if test="${lumbopelvicexam.leglengthl=='1/2'}"><c:out value="Selected"/></c:if>>1/2</option>
					<option value="5/8" <c:if test="${lumbopelvicexam.leglengthl=='5/8'}"><c:out value="Selected"/></c:if>>5/8</option>
					<option value="3/4" <c:if test="${lumbopelvicexam.leglengthl=='3/4'}"><c:out value="Selected"/></c:if>>3/4</option>
					<option value="7/8" <c:if test="${lumbopelvicexam.leglengthl=='7/8'}"><c:out value="Selected"/></c:if>>7/8</option>
					<option value="1" <c:if test="${lumbopelvicexam.leglengthl=='1'}"><c:out value="Selected"/></c:if>>1</option>
					<option value="other" <c:if test="${lumbopelvicexam.leglengthl=='other'}"><c:out value="Selected"/></c:if>>other</option>
					</td>
					<td>
					<input type="text" name="other1" id="other1" style='display:none' value="${lumbopelvicexam.other1 }" >
					</select></td>
					<td><input type="checkbox" id="leglengthcheckr" name="leglengthcheckr" value="right" onclick="visible(this.value)" <c:if test="${lumbopelvicexam.leglengthcheckr=='right'}"><c:out value="Checked"/></c:if>onclick="this.form.break6.style.visibility = this.checked? 'visible' : 'hidden'">Right</td>
					 <td><select name="leglengthr" id="break6" style="display:none" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="1/8" <c:if test="${lumbopelvicexam.leglengthr=='1/8'}"><c:out value="Selected"/></c:if>>1/8</option>
					<option value="1/4" <c:if test="${lumbopelvicexam.leglengthr=='1/4'}"><c:out value="Selected"/></c:if>>1/4</option>
					<option value="3/8" <c:if test="${lumbopelvicexam.leglengthr=='3/8'}"><c:out value="Selected"/></c:if>>3/8</option>
					<option value="1/2" <c:if test="${lumbopelvicexam.leglengthr=='1/2'}"><c:out value="Selected"/></c:if>>1/2</option>
					<option value="5/8" <c:if test="${lumbopelvicexam.leglengthr=='5/8'}"><c:out value="Selected"/></c:if>>5/8</option>
					<option value="3/4" <c:if test="${lumbopelvicexam.leglengthr=='3/4'}"><c:out value="Selected"/></c:if>>3/4</option>
					<option value="7/8" <c:if test="${lumbopelvicexam.leglengthr=='7/8'}"><c:out value="Selected"/></c:if>>7/8</option>
					<option value="1" <c:if test="${lumbopelvicexam.leglengthr=='1'}"><c:out value="Selected"/></c:if>>1</option>
					<option value="other" <c:if test="${lumbopelvicexam.leglengthr=='other'}"><c:out value="Selected"/></c:if>>other</option></td>
					<td><input type="text" name="other2" id="other2"  style='display:none' value=${lumbopelvicexam.other2 }>
					</select></td>
					<td></td>
					<td></td>
					<td></td> 
					
 </tr>
 <tr class="row1">
 <td>Piriformis:</td><td width="100"><input type="radio" name="piriformis" value="Left" <c:if test="${lumbopelvicexam.piriformis=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="piriformis" value="Right" <c:if test="${lumbopelvicexam.piriformis=='Right'}"><c:out value="checked=checked"/></c:if> >Right</td> 
 
 <td>Quad Lumb:</td><td width="200"><input type="radio" name="quadlumb" value="Left" <c:if test="${lumbopelvicexam.quadlumb=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="quadlumb" value="Right" <c:if test="${lumbopelvicexam.quadlumb=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 
 <td>Paraspinals:</td><td width="100"><input type="radio" name="paraspinals" value="Left" <c:if test="${lumbopelvicexam.paraspinals=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="paraspinals" value="Right" <c:if test="${lumbopelvicexam.paraspinals=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Gluteus Maximus:</td><td><input type="radio" name="gluteus" value="Left" <c:if test="${lumbopelvicexam.gluteus=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="gluteus" value="Right" <c:if test="${lumbopelvicexam.gluteus=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Gluteus Medius:</td><td width="200"><input type="radio" name="gluteusmedius" value="Left" <c:if test="${lumbopelvicexam.gluteusmedius=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="gluteusmedius" value="Right" <c:if test="${lumbopelvicexam.gluteusmedius=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Hamstrings:</td><td><input type="radio" name="hamstrings" value="Left" <c:if test="${lumbopelvicexam.hamstrings=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="hamstrings" value="Right" <c:if test="${lumbopelvicexam.hamstrings=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Iliopsoas:</td><td><input type="radio" name="iliopsoas" value="Left" <c:if test="${lumbopelvicexam.iliopsoas=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="iliopsoas" value="Right"<c:if test="${lumbopelvicexam.iliopsoas=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Rectus Abdominis:	</td><td><input type="radio" name="rectus" value="Left" <c:if test="${lumbopelvicexam.rectus=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="rectus" value="Right" <c:if test="${lumbopelvicexam.rectus=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Obliques:</td><td><input type="radio" name="obliques" value="Left" <c:if test="${lumbopelvicexam.obliques=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="obliques" value="Right" <c:if test="${lumbopelvicexam.obliques=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Other/Notes:<input type="text" name="othernotes" id="othernotes" value="${lumbopelvic.othernotes }" onInput="return validatename(id)";></td> 
 <td width="150">
 <td></td><td></td>
 <td width="150">
 <td></td><td></td>
 </tr>
 <tr class="row1">
 <td width="350"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="200"><input type="radio" name="functionalrangeofmotion" value="Unremarkable" <c:if test="${lumbopelvicexam.functionalrangeofmotion=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable </td> 
 <td width="350"><B style="font-size:14px">SUBLUXATION /DYSFUNCTION  </B></td><td width="150"><input type="radio" name="subluxation" value="Unremarkable" <c:if test="${lumbopelvicexam.subluxation=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable</td> 
 <td width="300"><B style="font-size:14px">ORTHOTPEDIC TESTING </B></td><td><input type="radio" name="orthopedic" value="Unremarkable" <c:if test="${lumbopelvicexam.orthopedic=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable</td>
 </tr>
  <tr class="row1">
 <td>  </td><td> <b>Normal</b> &nbsp;&nbsp;&nbsp;<b> Actual</b></td> 
 <td></td><td width="250"> </td> 
 <td>  </td><td>   <b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (60)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="flexion" size="7" value="${lumbopelvicexam.flexion}" onkeypress="return validate(event)"></td> 
 <td width="100">T8-9:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t89" size="7" value="${lumbopelvicexam.t89}" onkeypress="return validate(event)"> </td><td width="250">T9-10:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t910" size="7" value="${lumbopelvicexam.t910}" onkeypress="return validate(event)"> </td> 
 <td><b>Trendelenburg:</b> </td><td><input type="text" name="trendelburgl" size="5" value="${lumbopelvicexam.trendelburgl}" onkeypress="return validate(event)"> <input type="text" name="trendelburgr" size="5" onkeypress="return validate(event)" value="${lumbopelvicexam.trendelburgr}"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (25)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="extension" size="7" value="${lumbopelvicexam.extension}" onkeypress="return validate(event)"></td> 
 <td width="100">T10-11:&nbsp;<input type="text" name="t1011" size="7" value="${lumbopelvicexam.t1011}" onkeypress="return validate(event)"></td><td width="50">T11-12:&nbsp;&nbsp;&nbsp;<input type="text" name="t1112" size="7" value="${lumbopelvicexam.t1112}" onkeypress="return validate(event)"> </td> 
 <td><b>Kemps:	</b> </td><td><input type="text" name="kempsl" size="5" onkeypress="return validate(event)" value="${lumbopelvicexam.kempsl}"> <input type="text" name="kempsr" size="5" onkeypress="return validate(event)" value="${lumbopelvicexam.kempsr}"></td>
 </tr>
  <tr class="row1">
 <td><b>Lateral Flexion:</b> </td><td> (25)&nbsp;&nbsp;&nbsp;L <input type="text" name="lflexion" size="7" value="${lumbopelvicexam.lflexion}" onkeypress="return validate(event)"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rflexion" size="7" value="${lumbopelvicexam.rflexion}" onkeypress="return validate(event)"></td> 
 <td width="100">T12-L1:&nbsp;<input type="text" name="t12l1" id="t12l1" size="7" value="${lumbopelvicexam.t12l1}" onkeypress="return validate(event)"></td><td width="50">	L1-2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="l12" size="7" value="${lumbopelvicexam.l12}" onkeypress="return validate(event)"> </td> 
 <td><b>Slump:</b> </td><td><input type="text" name="slumpl" size="5" onkeypress="return validate(event)" value="${lumbopelvic.slumpl}"> <input type="text" name="slumpr" size="5" onkeypress="return validate(event)" value="${lumbopelvic.slumpr}"></td>
 </tr>
  <tr class="row1">
  <td><b>Rotation:</b> </td><td> (45)&nbsp;&nbsp;&nbsp;L <input type="text" name="lrotation" size="7" value="${lumbopelvic.lrotation}" onkeypress="return validate(event)"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rrotation" size="7" value="${lumbopelvicexam.rrotation}" onkeypress="return validate(event)"></td> 
 <td width="100">L2-3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="l23" size="7" value="${lumbopelvic.l23}" onkeypress="return validate(event)"></td><td width="50">L3-4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="l34" size="7" value="${lumbopelvicexam.l34}" onkeypress="return validate(event)"> </td> 
 <td><b>Straight Leg Raise:</b> </td><td><input type="text" name="straightlegl" size="5" onkeypress="return validate(event)" value="${lumbopelvicexam.straightlegl}"> <input type="text" name="straightlegr" onkeypress="return validate(event)" size="5" value="${lumbopelvicexam.straightlegr}"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td width="100">L4-5:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="l45" size="7" value="${lumbopelvicexam.l45}" onkeypress="return validate(event)"></td><td width="50">L5-S1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="l5s1" size="7" value="${lumbopelvicexam.l5s1}" onkeypress="return validate(event)"> </td> 
 <td><b>Well Leg Raise:	</b> </td><td><input type="text" name="welllegl" size="5" onkeypress="return validate(event)" value="${lumbopelvicexam.welllegl}"> <input type="text" name="welllegr" size="5" onkeypress="return validate(event)"value="${lumbopelvicexam.welllegr}"></td>
 </tr>
  <tr class="row1">
 <td> </td><td> </td> 
 <td width="100">L SI: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="lsi" size="7" value="${lumbopelvicexam.lsi}" onkeypress="return validate(event)"></td><td width="50">	R SI:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="rsi" size="7" value="${lumbopelvicexam.rsi}" onkeypress="return validate(event)"> </td> 
 <td><b>Nachlas / Yeoman's</b> </td><td><input type="text" name="nachlasl" size="5" onkeypress="return validate(event)" value="${lumbopelvicexam.nachlasl}"> <input type="text" name="nachlasr" size="5" onkeypress="return validate(event)" value="${lumbopelvicexam.nachlasr}"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Positive Minor's:	</b> </td><td><input type="text" name="positiveminor" onkeypress="return validate(event)" size="15" value="${lumbopelvicexam.positiveminor}"> </td>
 </tr>
 <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Positive Adam's:	</b> </td><td><input type="text" name="positiveadam" onkeypress="return validate(event)" size="15" value="${lumbopelvicexam.positiveadam}"> </td>
 </tr>
 <tr><td></td><td></td><td></td><td></td><td></td><td id="tblbtn"><input type="button" id="btnNext" class="submit_btn" value="Next" onmouseover="checkValid(event);"/></td></tr>
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
	            <center> <h2>LUMBOPELVIC REEXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row1">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable" <c:if test="${lumbopelvicexam.neurologicaltest=='Neurological Testing Unremarkable'}"><c:out value="Checked"/></c:if> >Neurological Testing Unremarkable</td><td><%-- <input type="checkbox" name="exceptn" value="Except" <c:if test="${lumbopelvicexam.exceptn=='Except'}"><c:out value="Checked"/></c:if>>Except --%></td>
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
 <td><input type="text" name="l1l" size="5" onkeypress="return validate(event)" value="${lumbopelvicexam.l1l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l1r" onkeypress="return validate(event)" size="5" value="${lumbopelvicexam.l1r}">&nbsp;(Inguinal area)</td>
 <td>L1 </td>
 <td> <input type="text" name="l15l" id="l15l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.l15l}" onkeypress="return validate(event)" style="width: 50px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l15r" id="l15r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvic.l15r}" onkeypress="return validate(event)" style="width: 48px; ">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td>  </td>
 </tr>
 <tr class="row1">
 <td>L2</td>
 <td><input type="text" name="l2l" size="5" onkeypress="return validate(event)" value="${lumbopelvicexam.l2l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l2r" onkeypress="return validate(event)" size="5" value="${lumbopelvicexam.l2r }">&nbsp;(Ant/med thigh)</td>
 <td>L2 </td>
 <td> <input type="text" name="l25l" maxlength="1" id="l25l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)"value="${lumbopelvicexam.l25l}" onkeypress="return validate(event)" style="width: 52px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l25r" id="l25r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.l25r}" onkeypress="return validate(event)" style="width: 47px; ">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L3</td>
 <td><input type="text" name="l3l" onkeypress="return validate(event)" size="5" value="${lumbopelvicexam.l3l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l3r" onkeypress="return validate(event)" size="5" value="${lumbopelvicexam.l3r}">&nbsp;(Medial knee)	</td>
 <td>L3 </td>
 <td> <input type="text" name="l35l" id="l35l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.l35l}" onkeypress="return validate(event)" style="width: 51px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l35r" id="l35r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.l35r}" onkeypress="return validate(event)" style="width: 50px; ">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L4</td>
 <td><input type="text" name="l4l" size="5" onkeypress="return validate(event)" value="${lumbopelvicexam.l4l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l4r" onkeypress="return validate(event)" size="5" value="${lumbopelvicexam.l4r}">&nbsp;(Medial leg)	</td>
 <td>L4 </td>
 <td> <input type="text" name="l45l" id="l45l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.l45l}" onkeypress="return validate(event)" style="width: 48px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l45r" id="l45r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.l45r}" onkeypress="return validate(event)" style="width: 49px; ">&nbsp;/5&nbsp;(Rectus fem.)</td>
 <td> L4</td>
 <td> <input type="text" name="l4l3" id="l4l3" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.l4l3}" onkeypress="return validate(event)" style="width: 47px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l4r3" id="l4r3" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.l4r3}" onkeypress="return validate(event)" style="width: 51px; ">&nbsp;/5&nbsp;(Patellar)</td>
 </tr>
 <tr class="row1">
 <td>L5</td>
 <td><input type="text" name="l5l" size="5" onkeypress="return validate(event)" value="${lumbopelvicexam.l5l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l5r" onkeypress="return validate(event)" size="5" value="${lumbopelvicexam.l5r}">&nbsp;(Ant/lat leg)	</td>
 <td>L5 </td>
 <td> <input type="text" name="l55l" id="l55l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.l55l}" onkeypress="return validate(event)" style="width: 48px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l55r" id="l55r"onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.l55r}" onkeypress="return validate(event)" style="width: 48px; ">&nbsp;/5&nbsp;  (Glut Med)</td>
 <td>L5 </td>
 <td><input type="text" name="l5l3" id="l5l3" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.l5l3}" onkeypress="return validate(event)" style="width: 49px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l5r3" id="l5r3" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.l5r3}" onkeypress="return validate(event)" style="width: 50px; ">&nbsp;/5&nbsp;(Med HS) </td>
 </tr>
 <tr class="row1">
 <td>SI</td>
 <td><input type="text" name="sl" size="5" onkeypress="return validate(event)" value="${lumbopelvicexam.sl}">&nbsp; &nbsp; &nbsp;<input type="text" name="sr" onkeypress="return validate(event)" size="5" value="${lumbopelvicexam.sr}">&nbsp;(Big toe/plantar)		</td>
 <td>SI </td>
 <td> <input type="text" name="s5l" id="s5l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.s5l}" onkeypress="return validate(event)" style="width: 50px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="s5r" id="s5r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.s5r}" onkeypress="return validate(event)" style="width: 47px; ">&nbsp;/5&nbsp; (Glut Max)</td>
 <td>SI </td>
 <td> <input type="text" name="sil" id="sil" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.sil}" onkeypress="return validate(event)" style="width: 49px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="sir" id="sir" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${lumbopelvicexam.sir}" onkeypress="return validate(event)" style="width: 51px; ">&nbsp;/5&nbsp;(Achilles)</td>
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
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td><td><input type="checkbox" name="sitting" value="Sitting to Standing" <c:if test="${lumbopelvicexam.sitting=='Sitting to Standing'}"><c:out value="Checked"/></c:if>>Sitting to Standing	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="lifting" value="Lifting" <c:if test="${lumbopelvicexam.lifting=='Lifting'}"><c:out value="Checked"/></c:if>>Lifting	</td>
 <td width="150"><input type="checkbox" name="walking" value="Walking" <c:if test="${lumbopelvicexam.walking=='Walking'}"><c:out value="Checked"/></c:if>>Walking</td><td width="150"><input type="checkbox" name="stairs" value="Stairs" <c:if test="${lumbopelvicexam.stairs=='Stairs'}"><c:out value="Checked"/></c:if>>Stairs</td>
 <td width="150"><input type="checkbox" id="otherfunctional" name="otherfunctional" value="Other" onclick="visible(this.value)" <c:if test="${lumbopelvicexam.otherfunctional=='Other'}"><c:out value="Checked"/></c:if> >Other&nbsp;</td><td> <input type="text" class="input_txtbx1" id="break3" name="break_text3"  style="display:none"  value="${lumbopelvicexam.break_text3 }" onInput="return validatename(id)";/></td>
 </tr>         
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td><textarea name="assessment" id="assessment" rows='5' cols='40' onInput="return validatename(id)";> ${lumbopelvicexam.assessment }</textarea></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td><select name="patientstatus" id="patientstatus"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Excellent" <c:if test="${lumbopelvicexam.patientstatus=='Excellent'}"><c:out value="Selected"/></c:if> >Excellent</option>
					<option value="Good" <c:if test="${lumbopelvicexam.patientstatus=='Good'}"><c:out value="Selected"/></c:if>>Good</option>
					<option value="Fair" <c:if test="${lumbopelvicexam.patientstatus=='Fair'}"><c:out value="Selected"/></c:if>>Fair</option>
					<option value="Poor" <c:if test="${lumbopelvicexam.patientstatus=='Poor'}"><c:out value="Selected"/></c:if>>Poor</option>
					</select></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)<input type="text" name="diagnosis1" id="diagnosis1" value="${lumbopelvicexam.diagnosis1}" onInput="return validatename(id)";></td>
 <td width="250">2)<input type="text" name="diagnosis2" id="diagnosis2" value="${lumbopelvicexam.diagnosis2 }" onInput="return validatename(id)";></td>
 <td width="250">3)<input type="text" name="diagnosis3" id="diagnosis3" value="${lumbopelvicexam.diagnosis3 }" onInput="return validatename(id)";></td>
 <td width="250">4)<input type="text" name="diagnosis4" id="diagnosis4" value="${lumbopelvicexam.diagnosis4 }" onInput="return validatename(id)";></td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)<input type="text" name="diagnosis5" id="diagnosis5" value="${lumbopelvicexam.diagnosis5}" onInput="return validatename(id)";></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td><input type="text" name="times" id="times" value="${lumbopelvicexam.times}" onInput="return validatename(id)";>Times/week for </td>
 <td><input type="text" name="week" id="week" value="${lumbopelvicexam.week}" onInput="return validatename(id)";>weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="spinal" value="Spinal Decompression"  <c:if test="${lumbopelvicexam.spinal=='Spinal Decompression'}"><c:out value="Checked"/></c:if>>Spinal Decompression	</td>
 <td width="250"><input type="checkbox" name="chiropractic" value="Chiropractic"  <c:if test="${lumbopelvicexam.chiropractic=='Chiropractic'}"><c:out value="Checked"/></c:if>>Chiropractic</td>
 <td width="250"><input type="checkbox" name="physical" value="Physical Therapy"  <c:if test="${lumbopelvicexam.physical=='Physical Therapy'}"><c:out value="Checked"/></c:if>>Physical Therapy</td>
 <td width="250"><input type="checkbox" name="orthotics" value="Orthotics/Bracing"  <c:if test="${lumbopelvicexam.orthotics=='Orthotics/Bracing'}"><c:out value="Checked"/></c:if>>Orthotics/Bracing</td>
 <td width="250"><input type="checkbox" name="modalities" value="Modalities"  <c:if test="${lumbopelvicexam.modalities=='Modalities'}"><c:out value="Checked"/></c:if>>Modalities	</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="supplementation" value="Supplementation"  <c:if test="${lumbopelvicexam.supplementation=='Supplementation'}"><c:out value="Checked"/></c:if>>Supplementation</td>
 <td width="250"><input type="checkbox" name="hep" value="HEP"  <c:if test="${lumbopelvicexam.hep=='HEP'}"><c:out value="Checked"/></c:if>>HEP</td>
 <td width="250"><input type="checkbox" name="radiographic" value="Radiographic X-Ray"  <c:if test="${lumbopelvicexam.radiographic=='Radiographic X-Ray'}"><c:out value="Checked"/></c:if>> Radiographic X-Ray</td>
 <td width="250"><input type="checkbox" name="mri" value="MRI"  <c:if test="${lumbopelvicexam.mri=='MRI'}"><c:out value="Checked"/></c:if>>MRI</td>
 <td width="250"><input type="checkbox" name="ctscan" value="CT Scan"  <c:if test="${lumbopelvicexam.ctscan=='CT Scan'}"><c:out value="Checked"/></c:if>>CT Scan</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="nerve" value="Nerve Conduction"  <c:if test="${lumbopelvicexam.nerve=='Nerve Conduction'}"><c:out value="Checked"/></c:if>>Nerve Conduction</td>
 <td width="250"><input type="checkbox" name="emg" value="EMG"  <c:if test="${lumbopelvicexam.emg=='EMG'}"><c:out value="Checked"/></c:if>>EMG</td>
 <td width="250"><input type="checkbox" name="outside" value="Outside Referral"  <c:if test="${lumbopelvicexam.outside=='Outside Referral'}"><c:out value="Checked"/></c:if>>Outside Referral </td>
 <td width="250"><input type="checkbox" name="dc" value="D/C"  <c:if test="${lumbopelvicexam.dc=='D/C'}"><c:out value="Checked"/></c:if>>D/C</td>
 <td width="250"><input type="checkbox" id="otheraddress" name="otheraddress" value="Other" onclick="visible(this.value)" <c:if test="${lumbopelvicexam.otheraddress=='Other'}"><c:out value="Checked"/></c:if>>Other<input type="text" class="input_txtbx1" id="break4" name="break_text4"  style="display:none"  value="${lumbopelvicexam.break_text4}" onInput="return validatename(id)";/></td>
 </tr>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px"><span class="err">*</span>&nbsp;&nbsp;PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign" id="sign" value="${lumbopelvicexam.sign}" onInput="return validatename(id)";></B><br><span class="err" id="signerror"><form:errors path="Lumbopelvicexam.sign"></form:errors></span></td></tr></table>
<table align="right">
<tr>
<!-- <td><input type="submit" class="submit_btn" value="previous" id="btnPrevious"></td> -->
<td><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit1('this');"></td>
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
</body>