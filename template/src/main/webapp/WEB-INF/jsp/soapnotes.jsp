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
 var element=document.getElementById('offwork1');
 if(val=='offwork'|| val=='reeval')
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script >
<script type="text/javascript">
$(function() {
    $( "#datepicker" ).datepicker();
  });
$(function() {
    $( "#datepicker1" ).datepicker();
  });
$(function() {
    $( "#datepicker2" ).datepicker();
  });
$(function() {
    $( "#datepicker3" ).datepicker();
  });
$(function() {
    $( "#datepicker4" ).datepicker();
  });
$(function() {
    $( "#datepicker5" ).datepicker();
  });
$(function() {
    $( "#datepicker6" ).datepicker();
  });
$(function() {
    $( "#datepicker7" ).datepicker();
  });
$(function() {
    $( "#datepicker8" ).datepicker();
  });
</script>
<script>
$(function() {
    $( "#slider" ).slider({
      value:1,
      min: 0,
      max: 10,
      step: 1,
      slide: function( event, ui ) {
        $( "#amount" ).val(+ ui.value );
        document.getElementById("amounterr").innerHTML="";
        if(document.getElementById("amount").value==0)
        {
        document.getElementById("amounterr").innerHTML="No Pain";
        return false;
        }
        if(document.getElementById("amount").value==10)
        {
        document.getElementById("amounterr").innerHTML="Severe Pain";
        return false;
        }
      }
    });
    $( "#amount" ).val(+ $( "#slider" ).slider( "value" ) );
  });

$(function() {
    $( "#slider1" ).slider({
      value:0,
      min: 0,
       max: 10,
        step: 1,
      slide: function( event, ui ) {
        $( "#amount1" ).val(+ ui.value );
       
       
    document.getElementById("amount1err").innerHTML="";
     if(document.getElementById("amount1").value==0)
    {
 
   document.getElementById("amount1err").innerHTML="No pain";
   return false;
    }
    document.getElementById("amount1err").innerHTML="";
     if(document.getElementById("amount1").value==10)
    {
    
    document.getElementById("amount1err").innerHTML="Severe pain";
    return false;
    }
        
      }
    });
    $( "#amount1" ).val(+ $( "#slider1" ).slider( "value" ) );

    
    
  });


$(function() {
    $( "#slider2" ).slider({
      value:1,
      min: 0,
      max: 10,
      step: 1,
      slide: function( event, ui ) {
        $( "#amount2" ).val(+ ui.value );
         document.getElementById("amount2err").innerHTML="";
         if(document.getElementById("amount2").value==10)
    {
   // alert("Severe pain");
   document.getElementById("amount2err").innerHTML="Severe pain";
    }
    
     if(document.getElementById("amount2").value==0)
    {
    //alert("No pain");
     document.getElementById("amount2err").innerHTML="No pain";
    }
      }
    });
    $( "#amount2" ).val(+ $( "#slider2" ).slider( "value" ) );
  });

</script>
<!-- <script type="text/javascript">
       function Validate(event) {
           var regex = new RegExp("^[0-9.]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script> -->
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
   
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength(id){
   
    var fieldVal = document.getElementById(id).value;
    
    if(fieldVal <=100){
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
  function printPage(id)
  {
	
	        document.getElementById('print').style.visibility = 'hidden';
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
     document.getElementById('saveid').style.visibility = 'visible';
     document.getElementById('cancelid').style.visibility = 'visible';
	  
  }
  </script>
    
</head>
 <body>
<br>
<br>
 <div id="right_content">

  
<form action="soapnotes" method="POST" name="soap">
<c:choose>
            <c:when test="${empty soap}">
        

<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div id="block1">
	            <div class="headings altheading">
	           <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	          
	            <center> <h2>SOAP NOTES</h2> </center><br/>
	            
	            </div>
	            
	            <input type="hidden" value="${username}" name="username" />
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
          
          <tr class="row1">
<td></td><td></td>
<td></td><td></td><td></td><td></td>
<td><h2><span class="err">*</span> Patient</h2></td><td><input type="text" name="pname" id="pname" value="${name}" onInput="return validatename(id)";  class="input_txtbx1"><span style="color:red" id="pnameerr"><form:errors path="SoapNotes.pname"></form:errors></span></td>
</tr>
<tr class="row1">
<td height="20">Chief Complaint:</td>
<td valign="top"><input type="checkbox" name="headache" value="Headache" >Headache</td>
<td valign="top"><input type="checkbox" name="neckpain" value="Neck pain" >Neck Pain</td>
<td valign="top" style="width: 152px; "><input type="checkbox" name="rightshoulderpain" value="Right Shoulder pain" >Right Shoulder pain</td>
<td valign="top" style="width: 142px; "><input type="checkbox" name="leftshoulderpain" value="Left Shoulder Pain" >Left Shoulder Pain</td>
<td valign="top" style="width: 98px; "><input type="checkbox" name="chestpain" value="Chest Pain" >Chest Pain</td>
<td valign="top"><input type="checkbox" name="rightarmpain" value="Right Arm Pain" onclick="rightcheck()" id="rightarmpain" >Right Arm Pain<br>
<script>
$(function() {
	$("#pname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
	

$(function() {
	$("#diagonosis").on("keypress", function(e) {
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
	$("#xray").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
	
	</script>
<script type="text/javascript">
function validatename(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}  

function validatename1(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z0-9 ]/g, "");
    document.getElementById(id).value = textInput;
}  
       function validate1(event,id) {
        
        
        
           var regex = new RegExp("^[A-Za-z ]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
         
           if(document.getElementById(id).value.substring(0,1)==" ")
        	{
        	
        	   if(id == "pname"){
        		document.getElementById("pnameerr").innerHTML="Initial space not allowed";
        	   }
        	   if(id=="diagonosis")
        		   {
        		   document.getElementById("diagnosiserr").innerHTML="Initial space not allowed";
        		   
        		   }
        	   if(id=="sign")
        		   {
        		   document.getElementById("signerror").innerHTML="Initial space not allowed";
        		   }
        	
        	   
        		document.getElementById(id).value == "";
        		return false;
        	}
           else{
        	   if(id == "pname"){
        		   document.getElementById("pnameerr").innerHTML="";
           	   }
           	   if(id="diagonosis")
           		   {
           		document.getElementById("diagnosiserr").innerHTML="";
           		   
           		   }
           	 if(id="sign")
  		   {
  		   document.getElementById("signerror").innerHTML="";
  		   }
           	
        	   
           }
           
       } 
       function validate2()
       {
    	   var regex = /^[A-Za-z0-9 ]*$/;
    	   
    	   if(document.getElementById("e1e2").value == "ExtremitiesX-Rays")
    		   {
    		  
    	   if(document.getElementById("xray").value == "")
      	   {
    		  
      	   document.getElementById("xrayerror").innerHTML="Required Field should not be blank";
      	   return false;
      	   }
    	   else if(document.getElementById("xray").value.charAt(0) == " ")
      	   {
      	  
      	   document.getElementById("xrayerror").innerHTML="Initial space not allowed";
      	   return false;
      	   }
    	   else if(document.getElementById("xray").value.match(regex))
    		   {
    		   document.getElementById("xrayerror").innerHTML="";
    		   }
    	   else
    		   {
    		   document.getElementById("xrayerror").innerHTML="Required Field should be Alpha-Numeric";
          	   return false;
    		   }
    	   
    		   }
    	   else{
    		   document.getElementById("xrayerror").innerHTML="";
    	   }
       }
       
    </script>

<script>
function rightcheck()
{
if(document.getElementById("rightarmpain").checked)
	{
	document.getElementById("rightproxi").style.display="table-row";
	}
else
	{
	document.getElementById("rightproxi").style.display="none";
	}
if(document.getElementById("rightrib").checked)
{
document.getElementById("amount1").style.display="table-row";
document.getElementById("slider1").style.display="block";
document.getElementById("label").style.display="table-row";

}
else
{
	document.getElementById("amount1").style.display="none";
	document.getElementById("slider1").style.display="none";
	document.getElementById("label").style.display="none";
}
if(document.getElementById("leftrib").checked)
{
document.getElementById("amount2").style.display="table-row";
document.getElementById("slider2").style.display="block";
document.getElementById("label1").style.display="table-row";

}
else
{
	document.getElementById("amount2").style.display="none";
	document.getElementById("slider2").style.display="none";
	document.getElementById("label1").style.display="none";
}
if(document.getElementById("leftarmpain").checked)
{
document.getElementById("leftproxi").style.display="table-row";
}
else
{
document.getElementById("leftproxi").style.display="none";
}
}
</script>
<select name="rightproxi"  class="input_cmbbx1" id="rightproxi" style="display:none"><option value="proximal">proximal</option>
<option value="distal">distal portion</option></select>
</td>
<td><input type="checkbox" name="leftarmpain" id="leftarmpain" value="Left Arm Pain" onclick="rightcheck()">Left Arm Pain<br>
<select name="leftproxi" id="leftproxi" class="input_cmbbx1" style="display:none">
<option value="proximal">proximal</option>
<option value="distal">distal portion</option></select>

</td>
</tr>
<tr class="row1">
<td height="20"></td>
<td style="width: 132px; "><input type="checkbox" name="rightelbowpain" value="Right Elbow Pain" >Right Elbow Pain</td>
<td style="width: 131px; "><input type="checkbox" name="leftelbowpain" value="Left Elbow Pain" >Left Elbow Pain</td>
<td><input type="checkbox" name="rightwristpain" value="Right Wrist pain" >Right Wrist pain</td>
<td><input type="checkbox" name="leftwristpain" value="Left Wrist Pain" >Left Wrist Pain</td>
<td style="width: 123px; "><input type="checkbox" name="righthandpain" value="Right Hand Pain" >Right Hand Pain</td>
<td style="width: 125px; "><input type="checkbox" name="lefthandpain" value="Left Hand Pain" >Left Hand Pain</td>
<td><input type="checkbox" name="mbp" value="MBP" >MBP</td>
</tr>
<tr class="row1">
<td ></td>
<td><input type="checkbox" name="rightribpain" value="Right Rib Pain" id="rightrib" onclick="rightcheck()">Right Rib Pain

<label for="amount1" style="width: 50;display:none;" id="label"><b>Pain Scale:</b></label>
	 <input type="text" id="amount1" style="border:0;display:none; width: 50;color:#f6931f; font-weight:bold;" name="painscale1"/><span id="amount1err"></span>&nbsp;&nbsp;&nbsp;
 <div id="slider1" style="width: 130; display:none"></div>

</td>
<td><input type="checkbox" name="leftribpain" value="Left Rib Pain" id="leftrib" onclick="rightcheck()">Left Rib Pain
 <label for="amount2" style="width: 50;display:none;" id="label1"><b>Pain Scale:</b></label>
	 <input type="text" id="amount2" style="border:0;display:none; width: 50;color:#f6931f; font-weight:bold;" name="painscale2" /><span id="amount2err"></span>&nbsp;&nbsp;&nbsp;
 <div id="slider2" style="width: 130; display:none;"> 
</td>
<td><input type="checkbox" name="lbp" value="LBP" >LBP</td>
<td><input type="checkbox" name="rightsipain" value="Right SI Pain" >Right SI Pain</td>
<td><input type="checkbox" name="leftsipain" value="Left SI Pain" >Left SI Pain</td>
<td><input type="checkbox" name="righthippain" value="Right Hip Pain" >Right Hip Pain</td>
<td><input type="checkbox" name="lefthippain" value="Left Hip Pain" >Left Hip Pain</td>
</tr>
<tr class="row1">
<td height="20"></td>
<td><input type="checkbox" name="rightgluteulpain" value="Right Gluteal Pain" >Right Gluteal Pain</td>
<td><input type="checkbox" name="leftgluteulpain" value="Left Gluteal Pain" >Left Gluteal Pain</td>
<td><input type="checkbox" name="rightlegpain" value="Right Leg Pain" >Right Leg Pain</td>
<td><input type="checkbox" name="leftlegpain" value="Left Leg Pain" >Left Leg Pain</td>
<td><input type="checkbox" name="rightkneepain" value="Right Knee Pain" >Right Knee Pain</td>
<td><input type="checkbox" name="leftkneepain" value="Left Knee Pain" >Left Knee Pain</td>
<td><input type="checkbox" name="rightanklepain" value="Right Ankle Pain" >Right Ankle Pain</td>
</tr>
<tr class="row1">
<td height="20"></td>
<td><input type="checkbox" name="leftanklepain" value="Right Rib Pain" >Left Ankle Pain</td>
<td><input type="checkbox" name="rightfootpain" value="right Foot Pain" >right Foot Pain</td>
<td><input type="checkbox" name="leftfootpain" value="Left Foot Pain" >Left Foot Pain</td>
</tr>
</table>
 <table cellpadding="0" cellspacing="0" border="1" width="98%">
 <tr>
  <td>
<bold><center> Date </center> </bold>
  </td>
 <td>
<bold><center> S</center></bold>
 </td>
 <td>
 <bold><center>O</center></bold>
 </td>
 <td>
 <bold><center>A</center></bold>
 </td>
 <td>
 <bold><center>P</center></bold>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;
 <input type="text" name="date1" id="datepicker1" class="input_txtbx1"><span id="datepicker1error" style="color: red;font-style:italic;" ></span></td>
 <td>
 <br/>
&nbsp;&nbsp;&nbsp;&nbsp;Improved:&nbsp;&nbsp;&nbsp;<input type="text" name="improved"  onInput="checkLength(id)" id="improved" onkeypress="return validate(event)"; class="input_txtbx1">&nbsp; %  <!--  <select  id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select> -->
					<br/><br/><br/>
&nbsp; &nbsp; Worsened:&nbsp;&nbsp;<input type="text"  name="worsened" id="worsened" onkeypress="return validate(event)"; onInput="checkLength(id)" class="input_txtbx1">&nbsp;% <!-- <select name="worsened" id="worsened" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95">95%</option>

					</select> --><br/><br/><br/><!-- <span id="worsened1error" style="color: red;font-style:italic;"></span> -->
					</td>
 
 
 <td>
<label for="amount"><b>Pain Scale:</b></label>
	 <input type="text" id="amount" style="border:0; color:#f6931f; font-weight:bold;" name="painscale" /><span id="amounterr"></span>&nbsp;&nbsp;&nbsp;
 <div id="slider" style="width: 306px; "></div></td>
 <td>
 <script type="text/javascript">
				var $im = 1;
				var flagm = 1;
				function addMultichoice(divName) {
					
					var xx = document.getElementsByName('diagnosis[]').length;
					var $in = xx + 1;
					var $m=$in-1;

					var newdiv = document.createElement('div'); 

					newdiv.innerHTML = '<table width="100%" border="0" cellspacing="0" cellpadding="0" id="newtbl'
							+ $im
							+ '"><tr>'
							+ '<td valign="top" align="left" class="input_txt" width="70%">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="diagonosis" onkeypress="return validate1(event,id)";name="diagnosis[]"/></td></tr><tr class="row1"><td align="left" valign="top"><a javascript:void(0);" onclick="removechoice('
							+ $im
							+ ')" style="text-decoration:none;"><input type="submit" class="submit_btn" value="CANCEL"  /></a></td></tr></table>';
							
							//alert(newdiv.innerHTML);
					document.getElementById(divName).appendChild(newdiv);
					$im++;
					flagm++;

				}
				function removechoice(id) {
					id = 'newtbl' + id;
					var child = document.getElementById(id)
					var parentDiv = child.parentNode;
					parentDiv.removeChild(child);

				}
			</script>
 &nbsp &nbspDiagonosis:<br/>
&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis[]" id="diagonosis"onInput="return validatename1(id)";class="input_txtbx1"><br/><br/>
<span id="diagnosiserr" style="color:red"></span>
<!-- &nbsp &nbsp 2&nbsp &nbsp &nbsp<input type="text" name="diagnosis2"><br/><br/>
&nbsp &nbsp 3&nbsp &nbsp &nbsp<input type="text" name="diagnosis3"><br/><br/>
&nbsp &nbsp 4&nbsp &nbsp &nbsp<input type="text" name="diagnosis4"><br/><br/> -->
<div id="multichoice"></div><a href="javascript:void(0);" onclick="addMultichoice('multichoice');" style="text-decoration:none;" ><input type="button" value="Add one more diagnosis" class="submit_btn2" name=""/></a>
 
 </td>
 <td>
 &nbsp &nbsp <select name="e1e2" id="e1e2" class="input_cmbbx1" onchange="if (this.value=='ExtremitiesX-Rays'){this.form['xray'].style.visibility='visible'}else {this.form['xray'].style.visibility='hidden'};">
					<option  value="2" >2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="Re-exam">Re-exam</option>
					<option value="one spot x-ray">one spot x-ray</option>
					<option value="2 to 7 C/S X-Rays">2 to 7 C/S X-Rays</option>
					<option value="2 to 6 T/S X-Rays">2 to 6 T/S X-Rays</option>
					<option value="2-6 L/S X-Rays">2-6 L/S X-Rays</option>
					<option value="2 Chest X-Rays">2 Chest X-Rays</option>
					<option value="ExtremitiesX-Rays">ExtremitiesX-Rays</option>
					<option value="SCSM 1-2 region">SCSM 1-2 region</option>
					<option value="SCSM 3-4 regions">SCSM 3-4 regions</option>
					<option value="5 regions">5 regions</option>
					<option value="extraspinal 1 or more regions">extraspinal 1 or more regions</option>
					<option value="MR">MR</option>
					<option value="Home Exercises">Home Exercises</option>					
					<option value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="Iontophoresis  ">Iontophoresis  </option>
					<option value="traction">Traction</option>
					<option value="mri">MRI</option>
					<option value="lab">LAB</option>
					<option value="opinion">2nd Opinion</option>
					<option value="rehab">Rehab</option>
					<option value="stretchexer">Stretch exer</option>
					<option value="offwork">Off Work</option>
					<option value="backtowork">Back To Work </option>
					<option value="strengthexcer">Strength excer</option>
					<option value="lifestyle">Lifestyle modifications</option>
					<option value="reeval">Re Eval.in </option>
				  </select><br><br>&nbsp;&nbsp;&nbsp;&nbsp;<input  class="input_txtbx1"type="text" name="xray" id="xray" onInput="return validatename(id);"style="visibility:hidden;"/><br>
				  <span id="xrayerror"style="color:red"></span>
				  <input type="text" name="offwork1" id="offwork1" style='display:none' class="input_txtbx1">
				  <input type="text" name="reeval1" id="reeval1" style='display:none' class="input_txtbx1">
				  
				
				  </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;
 <input type="text" name="date2" id="datepicker" class="input_txtbx1"><span id="datepickererror" style="color: red;font-style:italic;" ></span></td>
 <td>
 <br/>
&nbsp; &nbsp; Improved:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="improved1" id="improved1" onkeypress="return validate(event)"; onInput="checkLength(id)"class="input_txtbx1" class="input_txtbx1">&nbsp;%<!-- <select name="improved1" id="improved1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select> -->
					<br/><br/><br/>
&nbsp; &nbsp; Worsened:&nbsp;&nbsp;<input type="text" name="worsened1" id="worsened1" onkeypress="return validate(event)"; onInput="checkLength(id)" class="input_txtbx1">&nbsp;% <!-- <select name="worsened1" id="worsened1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95">95%</option>

					</select> --><br/><br/><br/>

					</td>

 <td>
 &nbsp &nbsp <select name="fixation1" id="fixation1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixations" >Fixations</option>
					<option value="Tenderness to palpation">Tenderness to palpation</option>
					<option value="spasm">Spasm</option>
					<option value="Trigger pts">Trigger pts.</option>
					<option value="Hypertonicity">Hypertonicity</option>
					<option value="Edema">Edema</option>
					<option value="Decreased ROM">Decreased ROM</option>
					<option value="Short Leg Right Temp.Change">Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change">Short leg Left Temp.Change</option>
					<option value="Atrophy">Atrophy</option>
					<option value="Decr strength">Decr Strength</option>

					</select></td>
 <td>

 &nbsp &nbsp<select name="notimproved1" id="notimproved1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" >Not Improved</option>
					<option value="Progressinging Slow">Progressing Slow</option>
					<option value="Exacerbation of C.C.">Exacerbation of C.C.</option>
					<option value="Flare-ups">Flare-ups</option>
					<option value="Mildly imp">Mildly imp.</option>
					<option value="Moderatly imp">Moderatly imp.</option>
					<option value="Plateu">Plateu</option>
					<option value="Pre Injury Status">Pre Injury Status</option>
					</select></td>
 <td>

  &nbsp &nbsp <select name="scsm1" id="scsm1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="EMS">EMS</option>
					<option value="MASS">MASS</option>
					<option value="Ice">Ice</option>
					<option value="Heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="TP">TP</option>
					<option value="US">US</option>
					<option value="Iontophoresis  ">Iontophoresis  </option>
					<option value="Traction">Traction</option>
					<option value="Nutrition">Nutrition</option>
					<option value="Off Work">Off Work</option>
					<option value="Light Duty">Light Duty</option>
					<option value="ROM">ROM</option>					
					<option value="Back To Work ">Back To Work </option>
					<option value="Strength excer">Strength excer</option>
					<option value="ROF">ROF</option>
					<option value="Re Exam">Re Exam</option>
					<option value="Refer to">Refer to </option>
					<option value="Release from care">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;
 <input type="text" name="date3" id="datepicker2" class="input_txtbx1"><span id="datepicker2error" style="color: red;font-style:italic;" ></span></td>
 <td>

 
 <br/>&nbsp; &nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="improved2" id="improved2" onkeypress="return validate(event)"; onInput="checkLength(id)" class="input_txtbx1">&nbsp;%<!-- <select name="improved2" id="improved2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>

					</select> --><br/><br/><br/>


&nbsp;&nbsp; Worsened:&nbsp;&nbsp;&nbsp;<input type="text" name="worsened2" id="worsened2" onkeypress="return validate(event)"; onInput="checkLength(id)" class="input_txtbx1" class="input_txtbx1">&nbsp;% <!-- <select name="worsened2" id="worsened2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>

					</select> --><br/><br/><br/><span id="worsened3error" style="color: red;font-style:italic;"></span></td>
 <td>

  &nbsp &nbsp <select name="fixation2" id="fixation2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixations" >Fixations</option>
					<option value="Tenderness to palpation">Tenderness to palpation</option>
					<option value="Spasm">Spasm</option>
					<option value="Trigger pts">Trigger pts.</option>
					<option value="Hypertonicity">Hypertonicity</option>
					<option value="Edema">Edema</option>
					<option value="Decreased ROM">Decreased ROM</option>
					<option value="Short Leg Right Temp.Change">Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change">Short leg Left Temp.Change</option>
			        <option value="Atrophy">Atrophy</option>
					<option value="Decr Strength">Decr Strength</option>

					</select></td>
 <td>&nbsp &nbsp<select name="notimproved2" id="notimproved2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Not Improved" >Not Improved</option>
					<option value="Progressinging Slow ">Progressing Slow</option>
					<option value="Exacerbation of C.C.">Exacerbation of C.C.</option>
					<option value="Flare-ups">Flare-ups</option>
					<option value="Mildly imp">Mildly imp</option>
					<option value="Moderatly imp">Moderatly imp</option>
					<option value="Plateu">Plateu</option>
					<option value="Preinjury status">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="scsm2" id="scsm2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="EMS">EMS</option>
					<option value="MASS">MASS</option>
					<option value="Ice">Ice</option>
					<option value="Heat">Heat</option>
					<option value="NMR">NMR</option>
					<option value="TP">TP</option>
					<option value="US">US</option>
					<option value="Iontophoresis  ">Iontophoresis  </option>
					<option value="Traction">Traction</option>
					<option value="Nutrition">Nutrition</option>
					<option value="Off Work">Off Work</option>
					<option value="Light Duty">Light Duty</option>
					<option value="ROM">ROM</option>					
					<option value="Back To Work ">Back To Work </option>
					<option value="Strength excer">Strength excer</option>
					<option value="ROF">ROF</option>
					<option value="Re Exam">Re Exam </option>
					<option value="Refer to">Refer to </option>
					<option value="Release from care">Release from care </option>
				  </select>
 
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;
 <input type="text" name="date4" id="datepicker3" class="input_txtbx1"><span id="datepicker3error" style="color: red;font-style:italic;" ></span></td>
 <td>
 <br/>&nbsp;&nbsp;Improved: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="improved3" id="improved3" onkeypress="return validate(event)"; onInput="checkLength(id)" class="input_txtbx1">&nbsp;%<!-- <select name="improved3" id="improved3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select> --><br/><br/><br/><span id="improved4error" style="color: red;font-style:italic;"></span>
&nbsp;&nbsp; Worsened: &nbsp;&nbsp;<input type="text" name="worsened3" id="worsened3" onkeypress="return validate(event)"; onInput="checkLength(id)" class="input_txtbx1">&nbsp;%<!-- <select name="worsened3" id="worsened3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select> --><br/><br/><br/><span id="worsened4error" style="color: red;font-style:italic;"></span></td>
 <td>
  &nbsp &nbsp<select name="fixation3" id="fixation3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixations" >Fixations</option>
					<option value="Tenderness to palpation">Tenderness to palpation</option>
					<option value="Spasm">Spasm</option>
					<option value="Trigger">Trigger pts.</option>
					<option value="Hypertonicity">Hypertonicity</option>
					<option value="Edema">Edema</option>
					<option value="Decreased ROM">Decreased ROM</option>
					<option value="Short Leg Right Temp.Change">Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change">Short leg Left Temp.Change</option>
				<option value="Atrophy">Atrophy</option>
					<option value="Decr Strength">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="notimproved3" id="notimproved3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Not Improved" >Not Improved</option>
					<option value="Progressinging Slow">Progressing Slow</option>
					<option value="Exacerbation of C.C.">Exacerbation of C.C.</option>
					<option value="Flare-ups">Flare-ups</option>
					<option value="Mildly imp">Mildly imp</option>
					<option value="Moderatly imp">Moderatly imp</option>
					<option value="Plateu">Plateu</option>
					<option value="Pre Injury Status">Pre Injury Status</option>
					</select></td>
  <td>&nbsp &nbsp<select name="scsm3" id="scsm3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="EMS">EMS</option>
					<option value="MASS">MASS</option>
					<option value="Ice">Ice</option>
					<option value="Heat">Heat</option>
					<option value="NMR">NMR</option>
					<option value="TP">TP</option>
					<option value="US">US</option>
					<option value="Iontophoresis  ">Iontophoresis  </option>
					<option value="Traction">Traction</option>
					<option value="Nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="Lightduty">Light Duty</option>
					<option value="Rom">ROM</option>					
					<option value="Back To Work ">Back To Work </option>
					<option value="strength excer">Strength excer</option>
					<option value="ROF">ROF</option>
					<option value="Re Exam">Re Exam </option>
					<option value="Refer to">Refer to </option>
					<option value="Release from care">Release from care </option>
				  </select>
  
  </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;
 <input type="text" name="date5" id="datepicker4" class="input_txtbx1"><span id="datepicker4error" style="color: red;font-style:italic;" ></span></td>
 <td>
 <br/>&nbsp;&nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="improved4" id="improved4" onkeypress="return validate(event)"; onInput="checkLength(id)" class="input_txtbx1" class="input_txtbx1">&nbsp;%<!-- <select name="improved4" id="improved4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select> --><br/><br/><br/><span id="improved5error" style="color: red;font-style:italic;"></span>
&nbsp;&nbsp;Worsened:&nbsp;&nbsp;&nbsp;<input type="text" name="worsened4" id="worsened4"  onkeypress="return validate(event)"; onInput="checkLength(id)" class="input_txtbx1" class="input_txtbx1">&nbsp;% <!-- <select name="worsened4" id="worsened4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select> --><br/><br/><br/><span id="worsened5error" style="color: red;font-style:italic;"></span></td>
 <td>&nbsp &nbsp <select name="fixation4" id="fixation4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" >Fixations</option>
					<option value="Tenderness to palpation">Tenderness to palpation</option>
					<option value="Spasm">Spasm</option>
					<option value="Trigger pts">Trigger pts.</option>
					<option value="Hypertonicity">Hypertonicity</option>
					<option value="Edema">Edema</option>
					<option value="Decreased">Decreased ROM</option>
					<option value="Short Leg Right Temp.Change">Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change">Short leg Left Temp.Change</option>
					<option value="Atrophy">Atrophy</option>
					<option value="Decr Strength">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="notimproved4" id="notimproved4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="not improved" >Not Improved</option>
					<option value="Progressinging Slow">Progressing Slow</option>
					<option value="Exacerbation of C.C.">Exacerbation of C.C.</option>
					<option value="Flare-ups">Flare-ups</option>
					<option value="mildly imp">Mildly imp.</option>
					<option value="moderatly imp">Moderatly imp.</option>
					<option value="plateu">Plateu</option>
					<option value="preinjury">Pre Injury Status</option>
					</select></td>
 
 <td>&nbsp &nbsp<select name="scsm4" id="scsm4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="Iontophoresis  ">Iontophoresis  </option>
					<option value="traction">Traction</option>
					<option value="nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="lightduty">Light Duty</option>
					<option value="rom">ROM</option>					
					<option value="backtowork">Back To Work </option>
					<option value="strengthexcer">Strength excer</option>
					<option value="rof">ROF</option>
					<option value="reexam">Re Exam </option>
					<option value="referto">Refer to </option>
					<option value="release">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;
 <input type="text" name="date6" id="datepicker5" class="input_txtbx1"><span id="datepicker5error" style="color: red;font-style:italic;" ></span></td>
 <td>
 <br/>&nbsp;&nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="improved5" id="improved5" onkeypress="return validate(event)"; onInput="checkLength(id)" class="input_txtbx1">&nbsp;% <!-- <select name="improved5" id="improved5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value=95%">95%</option>
					</select> --><br/><br/><br/><span id="improved6error" style="color: red;font-style:italic;"></span>
&nbsp;&nbsp; Worsened:&nbsp;&nbsp;<input type="text" name="worsened5" class="input_txtbx1" id="worsened5" onkeypress="return validate(event)"; onInput="checkLength(id)">&nbsp;% <!-- <select name="worsened5" id="worsened5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select> --><br/><br/><br/><span id="worsened6error" style="color: red;font-style:italic;"></span></td>
 <td>
  &nbsp &nbsp<select name="fixation5" id="fixation5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation" >Fixations</option>
					<option value="Tenderness to palpation">Tenderness to palpation</option>
					<option value="spasm">Spasm</option>
					<option value="trigger pts">Trigger pts.</option>
					<option value="hypertonicity">Hypertonicity</option>
					<option value="edema">Edema</option>
					<option value="decreased ROM">Decreased ROM</option>
					<option value="Short Leg Right Temp.Change">Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change">Short leg Left Temp.Change</option>
				
					<option value="atrophy">Atrophy</option>
					<option value="decr strength">Decr Strength</option>
					</select></td>
<td>&nbsp &nbsp <select name="notimproved5" id="notimproved5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" >Not Improved</option>
					<option value="Progressinging Slow">Progressing Slow</option>
					<option value="Exacerbation of C.C.">Exacerbation of C.C</option>
					<option value="Flare-ups">Flare-ups</option>
					<option value="mildly imp">Mildly imp.</option>
					<option value="moderatly imp">Moderatly imp.</option>
					<option value="plateu">Plateu</option>
					<option value="preinjury">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="scsm5" id="scsm5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="Iontophoresis  ">Iontophoresis  </option>
					<option value="traction">Traction</option>
					<option value="nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="lightduty">Light Duty</option>
					<option value="rom">ROM</option>					
					<option value="backtowork">Back To Work </option>
					<option value="strengthexcer">Strength excer</option>
					<option value="rof">ROF</option>
					<option value="reexam">Re Exam </option>
					<option value="referto">Refer to </option>
					<option value="release">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;
 <input type="text" name="date7" id="datepicker6" class="input_txtbx1"><span id="datepicker6error" style="color: red;font-style:italic;" ></span></td>
 <td>
 <br/>&nbsp; &nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="improved6" id="improved6" onkeypress="return validate(event)"; onInput="checkLength(id)" class="input_txtbx1">&nbsp;% <!-- <select name="improved6" id="improved6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select> --><br/><br/><br/><span id="improved7error" style="color: red;font-style:italic;"></span>
&nbsp; &nbsp; Worsened:&nbsp;<input type="text" name="worsened6" id="worsened6" onkeypress="return validate(event)"; onInput="checkLength(id)" class="input_txtbx1">&nbsp;% <!-- <select name="worsened6" id="worsened6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select> --><br/><br/><br/><span id="worsened7error" style="color: red;font-style:italic;"></span></td>
 <td>&nbsp &nbsp <select name="fixation6" id="fixation6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation" >Fixations</option>
					<option value="Tenderness to palpation">Tenderness to palpation</option>
					<option value="spasm">Spasm</option>
					<option value="trigger">Trigger pts.</option>
					<option value="hypertonicity">Hypertonicity</option>
					<option value="edema">Edema</option>
					<option value="decreased ROM">Decreased ROM</option>
					<option value="Short Leg Right Temp.Change">Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change">Short leg Left Temp.Change</option>
				
					<option value="atrophy">Atrophy</option>
					<option value="decr">Decr Strength</option>
					</select></td>
<td> &nbsp &nbsp<select name="notimproved6" id="notimproved6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" >Not Improved</option>
					<option value="Progressinging Slow">Progressing Slow</option>
					<option value="Exacerbation of C.C.">Exacerbation of C.C.</option>
					<option value="Flare-ups">Flare-ups</option>
					<option value="mildly imp">Mildly imp.</option>
					<option value="moderatly imp">Moderatly imp.</option>
					<option value="plateu">Plateu</option>
					<option value="preinjury">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="scsm6" id="scsm6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="Iontophoresis  ">Iontophoresis  </option>
					<option value="traction">Traction</option>
					<option value="nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="lightduty">Light Duty</option>
					<option value="rom">ROM</option>					
					<option value="backtowork">Back To Work </option>
					<option value="strengthexcer">Strength excer</option>
					<option value="rof">ROF</option>
					<option value="reexam">Re Exam </option>
					<option value="referto">Refer to </option>
					<option value="release">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;
 <input type="text" name="date8" id="datepicker7" class="input_txtbx1"><span id="datepicker7error" style="color: red;font-style:italic;" ></span></td>
 <td>
 <br/>&nbsp;&nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="improved7" id="improved7" class="input_txtbx1" onkeypress="return validate(event)"; onInput="checkLength(id)">&nbsp;%<!-- <select name="improved7" id="improved7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select> --><br/><br/><br/><span id="improved8error" style="color: red;font-style:italic;"></span>
&nbsp;&nbsp;Worsened:&nbsp;&nbsp;<input type="text" name="worsened7" id="worsened7" class="input_txtbx1" onkeypress="return 
(event)"; onInput="checkLength(id)">&nbsp;%<!-- <select name="worsened7" id="worsened7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select> --><br/><br/><br/><span id="worsened8error" style="color: red;font-style:italic;"></span></td>
 <td> &nbsp &nbsp<select name="fixation7" id="fixation7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixations" >Fixations</option>
					<option value="Tenderness to palpation">Tenderness to palpation</option>
					<option value="spasm">Spasm</option>
					<option value="trigger pts">Trigger pts.</option>
					<option value="hypertonicity">Hypertonicity</option>
					<option value="edema">Edema</option>
					<option value="decreased ROM">Decreased ROM</option>
					<option value="Short Leg Right Temp.Change">Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change">Short leg Left Temp.Change</option>
				
					<option value="atrophy">Atrophy</option>
					<option value="decr strength">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="notimproved7" id="notimproved7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" >Not Improved</option>
				<option value="Progressinging Slow">Progressing Slow</option>
					<option value="Exacerbation of C.C.">Exacerbation of C.C.</option>
					<option value="Flare-ups">Flare-ups</option>
					<option value="mildly imp">Mildly imp.</option>
					<option value="moderatly imp">Moderatly imp.</option>
					<option value="plateu">Plateu</option>
					<option value="preinjury ">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="scsm7" id="scsm7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="Iontophoresis  ">Iontophoresis  </option>
					<option value="traction">Traction</option>
					<option value="nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="lightduty">Light Duty</option>
					<option value="rom">ROM</option>					
					<option value="backtowork">Back To Work </option>
					<option value="strengthexcer">Strength excer</option>
					<option value="rof">ROF</option>
					<option value="reexam">Re Exam </option>
					<option value="referto">Refer to </option>
					<option value="release">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;
 <input type="text" name="date9" id="datepicker8" class="input_txtbx1"><span id="datepicker8error" style="color: red;font-style:italic;" ></span></td>
 <td>
 <br/>&nbsp; &nbsp;Improved:&nbsp;&nbsp;&nbsp;<input type="text" name="improved8" id="improved8" onkeypress="return validate(event)"; onInput="checkLength(id)" class="input_txtbx1">&nbsp;%<!-- <select name="improved8" id="improved8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select> --><br/><br/><br/>
&nbsp; &nbsp;Worsened:&nbsp;<input type="text" name="worsened8" id="worsened8" class="input_txtbx1" onkeypress="return validate(event)"; onInput="checkLength(id)">&nbsp;%<!--  <select name="worsened8" id="worsened8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select> --><br/><br/><br/></td>
 <td> &nbsp &nbsp<select name="fixation8" id="fixation8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation" >Fixations</option>
					<option value="Tenderness to palpation">Tenderness to palpation</option>
					<option value="spasm">Spasm</option>
					<option value="trigger">Trigger pts.</option>
					<option value="hypertonicity">Hypertonicity</option>
					<option value="edema">Edema</option>
					<option value="decreased">Decreased ROM</option>
					<option value="Short Leg Right Temp.Change">Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change">Short leg Left Temp.Change</option>
				
					<option value="atrophy">Atrophy</option>
					<option value="decr strength">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="notimproved8" id="notimproved8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" >Not Improved</option>
					<option value="Progressinging Slow">Progressing Slow</option>
					<option value="Exacerbation of C.C.">Exacerbation of C.C.</option>
					<option value="Flare-ups">Flare-ups</option>
					<option value="mildly imp">Mildly imp.</option>
					<option value="moderatly imp">Moderatly imp.</option>
					<option value="plateu">Plateu</option>
					<option value="preinjury ">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="scsm8" id="scsm8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected8" value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="Iontophoresis  ">Iontophoresis  </option>
					<option value="traction">Traction</option>
					<option value="nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="lightduty">Light Duty</option>
					<option value="rom">ROM</option>					
					<option value="backtowork">Back To Work </option>
					<option value="strengthexcer">Strength excer</option>
					<option value="rof">ROF</option>
					<option value="reexam">Re Exam </option>
					<option value="referto">Refer to </option>
					<option value="release">Release from care </option>
				  </select>
 </td>
 </tr>
 </table>
 
				                   
<br/><br/>
<table align="right"><tr><td><span class="err">*</span> Physicians Signature:<input type="text" name="sign" id="sign" onInput="return validatename(id)"; class="input_txtbx1"><span style="color:red" id="signerror"><form:errors path="SoapNotes.sign"></form:errors></span></td></tr>
				                <tr height="10"></tr> 
				                  <tr>
				                   <td align="right"><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return check('this')"></td>
				                   <!-- <td><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewsoapnotes'"></td> -->
				                   <td align="left"><a href="doctorsearch" style="color:white;text-decoration: none" id="cancelid" class="submit_btn">Cancel</a></td>
				                   </tr>
				                   </table>
				                 
				                 
				                   
				                   
				                   
	<script>
	function check()
	{	
		
		
		 var regex = /^[A-Za-z0-9 ]*$/;
  	   var error="";
  	 document.getElementById("pnameerr").innerHTML="";	
  	document.getElementById("signerror").innerHTML="";	
  	   if(document.getElementById("e1e2").value == "ExtremitiesX-Rays")
  		   {
  	   if(document.getElementById("xray").value == "")
    	   {
  		  
    	   document.getElementById("xrayerror").innerHTML="Required Field should not be blank";
    	   error="true";
    	   }
  	   else if(document.getElementById("xray").value.charAt(0) == " ")
    	   {
    	  
    	   document.getElementById("xrayerror").innerHTML="Initial space not allowed";
    	   error="true";
    	   }
  	   else if(document.getElementById("xray").value.match(regex))
  		   {
  		 if((document.getElementById("xray").value.length < 4) || (document.getElementById("xray").value.length > 32))
  		{
  		document.getElementById("xrayerror").innerHTML="Required Field Should between 4 to 32";	
  		error="true";
  		}
  		 else{  
  		   document.getElementById("xrayerror").innerHTML="";
  		   }
  		}
  	   else
  		   {
  		   document.getElementById("xrayerror").innerHTML="Required Field should be Alpha-Numeric";
  		 error="true";
  		   }
  	   
  		   }
  	   else{
  		   document.getElementById("xrayerror").innerHTML="";
  	   }
		 
		
		
	if(document.getElementById("pname").value=="")
		{	
		document.getElementById("pnameerr").innerHTML="Required Field Should Not Empty";	
		error="true";
		}
	else if((document.getElementById("pname").value.length < 4) || (document.getElementById("pname").value.length > 32))
	{
	document.getElementById("pnameerr").innerHTML="Required Field Should between 4 to 32";	
	error="true";
	}
		
	
	if(document.getElementById("sign").value=="")
	{
		document.getElementById("signerror").innerHTML="Required Field Should Not Empty";	
		error="true";
		
	}
	else if((document.getElementById("sign").value.length < 4) || (document.getElementById("sign").value.length > 32))
		{
		document.getElementById("signerror").innerHTML="Required Field Should between 4 to 32";	
		error="true";
		}
	document.getElementById("diagnosiserr").innerHtml="";
	if((document.getElementById("diagonosis").value.length < 4) || (document.getElementById("diagonosis").value.length > 32))
		{
		
		document.getElementById("diagnosiserr").innerHtml="Required Field Should between 4 to 32";	
		error="true";
		
		}
	
	document.getElementById("datepicker1error").innerHTML="";
	var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
			
			
			if (document.getElementById("datepicker1").value !="") {
			  if (re.test(document.getElementById("datepicker1").value) == false) {
				  document.getElementById("datepicker1error").innerHTML="Invalid Date Format";
				  error="true";
			  }
			}
			document.getElementById("datepicker2error").innerHTML="";
	var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
			
			
			if (document.getElementById("datepicker2").value !="") {
			  if (re.test(document.getElementById("datepicker2").value) == false) {
				  document.getElementById("datepicker2error").innerHTML="Invalid Date Format";
				  error="true";
			  }
			}
			document.getElementById("datepickererror").innerHTML="";
	var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
			
			
			if (document.getElementById("datepicker").value !="") {
			  if (re.test(document.getElementById("datepicker").value) == false) {
				  document.getElementById("datepickererror").innerHTML="Invalid Date Format";
				  error="true";
			  }
			}
			document.getElementById("datepicker3error").innerHTML="";
	var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
			
			
			if (document.getElementById("datepicker3").value !="") {
			  if (re.test(document.getElementById("datepicker3").value) == false) {
				  document.getElementById("datepicker3error").innerHTML="Invalid Date Format";
				  error="true";
			  }
			}
			document.getElementById("datepicker4error").innerHTML="";
	var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
			
			
			if (document.getElementById("datepicker4").value !="") {
			  if (re.test(document.getElementById("datepicker4").value) == false) {
				  document.getElementById("datepicker4error").innerHTML="Invalid Date Format";
				  error="true";
			  }
			}
			document.getElementById("datepicker5error").innerHTML="";
	var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
			
			
			if (document.getElementById("datepicker5").value !="") {
			  if (re.test(document.getElementById("datepicker5").value) == false) {
				  document.getElementById("datepicker5error").innerHTML="Invalid Date Format";
				  error="true";
			  }
			}
			document.getElementById("datepicker6error").innerHTML="";
	var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
			
			
			if (document.getElementById("datepicker6").value !="") {
			  if (re.test(document.getElementById("datepicker6").value) == false) {
				  document.getElementById("datepicker6error").innerHTML="Invalid Date Format";
				  error="true";
			  }
			}
			document.getElementById("datepicker7error").innerHTML="";
	var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
			
			
			if (document.getElementById("datepicker7").value !="") {
			  if (re.test(document.getElementById("datepicker7").value) == false) {
				  document.getElementById("datepicker7error").innerHTML="Invalid Date Format";
				  error="true";
			  }
			}
			document.getElementById("datepicker8error").innerHTML="";
	var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
			
			
			if (document.getElementById("datepicker8").value !="") {
			  if (re.test(document.getElementById("datepicker8").value) == false) {
				  document.getElementById("datepicker8error").innerHTML="Invalid Date Format";
				  error="true";
			  }
			}
			  if(error == "true")
				{
				return false;
				}
	}	
	</script>			                   
				                  
				                   </c:when>
				                   <c:otherwise>
				                   <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           <tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
    					<br>
<table align="right">
<%-- <input type="text" value="${soap.patient_id }" name="patient_id" />  --%>
              <input type="hidden" class="input_txtbx1" id="inp_id" value="${soap.soapid}" name="soapid" />

    <tr class="row1">
       <td><h2><span class="err">*</span> Patient:</h2></td>
                           <td><input type="text" class="input_txtbx1" name="pname" value="${soap.pname}" /><span class="err" ><form:errors path="SoapNotes.pname"></form:errors></span></td>
             </tr>
        </table>
        
 <table cellpadding="0" cellspacing="0" border="0" width="98%">
<tr class="row1">
<td>Chief Complaint:</td>
<td><input type="checkbox" name="headache" value="Headache" <c:if test="${soap.headache=='Headache'}"><c:out value="Checked"/></c:if>   />Headache</td>
<td><input type="checkbox" name="neckpain" value="Neck pain" <c:if test="${soap.neckpain=='Neck pain'}"><c:out value="checked=checked"/></c:if>>Neck Pain</td>
<td><input type="checkbox" name="rightshoulderpain" value="Right Shoulder pain" <c:if test="${soap.rightshoulderpain=='Right Shoulder pain'}"><c:out value="checked=checked"/></c:if>>Right Shoulder pain</td>
<td><input type="checkbox" name="leftshoulderpain" value="Left Shoulder Pain" <c:if test="${soap.leftshoulderpain=='Left Shoulder Pain'}"><c:out value="checked=checked"/></c:if>>Left Shoulder Pain</td>
<td><input type="checkbox" name="chestpain" value="Chest Pain" <c:if test="${soap.chestpain=='Chest Pain'}"><c:out value="checked=checked"/></c:if>>Chest Pain</td>
<td><input type="checkbox" name="rightarmpain" value="Right Arm Pain" <c:if test="${soap.rightarmpain=='Right Arm Pain'}"><c:out value="checked=checked"/></c:if>>Right Arm Pain</td>
<td><input type="checkbox" name="leftarmpain" value="Left Arm Pain" <c:if test="${soap.leftarmpain=='Left Arm Pain'}"><c:out value="checked=checked"/></c:if>>Left Arm Pain</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightelbowpain" value="Right Elbow Pain" <c:if test="${soap.rightelbowpain=='Right Elbow Pain'}"><c:out value="checked=checked"/></c:if>>Right Elbow Pain</td>
<td><input type="checkbox" name="leftelbowpain" value="Left Elbow Pain" <c:if test="${soap.leftelbowpain=='Left Elbow Pain'}"><c:out value="checked=checked"/></c:if>>Left Elbow Pain</td>
<td><input type="checkbox" name="rightwristpain" value="Right Wrist Pain" <c:if test="${soap.rightwristpain=='Right Wrist Pain'}"><c:out value="checked=checked"/></c:if>>Right Wrist pain</td>
<td><input type="checkbox" name="leftwristpain" value="Left Wrist Pain" <c:if test="${soap.leftwristpain=='Left Wrist Pain'}"><c:out value="checked=checked"/></c:if>>Left Wrist Pain</td>
<td><input type="checkbox" name="righthandpain" value="Right Hand Pain" <c:if test="${soap.righthandpain=='Right Hand Pain'}"><c:out value="checked=checked"/></c:if>>Right Hand Pain</td>
<td><input type="checkbox" name="lefthandpain" value="Left Hand Pain" <c:if test="${soap.lefthandpain=='Left Hand Pain'}"><c:out value="checked=checked"/></c:if>>Left Hand Pain</td>
<td><input type="checkbox" name="mbp" value="MBP" <c:if test="${soap.mbp=='MBP'}"><c:out value="checked=checked"/></c:if>>MBP</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightribpain" value="Right Rib Pain" <c:if test="${soap.rightribpain=='Right Rib Pain'}"><c:out value="checked=checked"/></c:if>>Right Rib Pain </td>
<td><input type="checkbox" name="leftribpain" value="Left Rib Pain" <c:if test="${soap.leftribpain=='Left Rib Pain'}"><c:out value="checked=checked"/></c:if>>Left Rib Pain</td>
<td><input type="checkbox" name="lbp" value="LBP" <c:if test="${soap.lbp=='LBP'}"><c:out value="checked=checked"/></c:if>>LBP</td>
<td><input type="checkbox" name="rightsipain" value="Right SI Pain" <c:if test="${soap.rightsipain=='Right SI Pain'}"><c:out value="checked=checked"/></c:if>>Right SI Pain</td>
<td><input type="checkbox" name="leftsipain" value="Left SI Pain" <c:if test="${soap.leftsipain=='Left SI Pain'}"><c:out value="checked=checked"/></c:if>>Left SI Pain</td>
<td><input type="checkbox" name="righthippain" value="Right Hip Pain" <c:if test="${soap.righthippain=='Right Hip Pain'}"><c:out value="checked=checked"/></c:if>>Right Hip Pain</td>
<td><input type="checkbox" name="lefthippain" value="Left Hip Pain" <c:if test="${soap.lefthippain=='Left Hip Pain'}"><c:out value="checked=checked"/></c:if>>Left Hip Pain</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightgluteulpain" value="Right Gluteul Pain" <c:if test="${soap.rightgluteulpain=='Right Gluteul Pain'}"><c:out value="checked=checked"/></c:if>>Right Gluteul Pain</td>
<td><input type="checkbox" name="leftgluteulpain" value="Left Gluteul Pain" <c:if test="${soap.leftgluteulpain=='Left Gluteul Pain'}"><c:out value="checked=checked"/></c:if>>Left Gluteul Pain</td>
<td><input type="checkbox" name="rightlegpain" value="Right Leg Pain" <c:if test="${soap.rightlegpain=='Right Leg Pain'}"><c:out value="checked=checked"/></c:if>>Right Leg Pain</td>
<td><input type="checkbox" name="leftlegpain" value="Left Leg Pain" <c:if test="${soap.leftlegpain=='Left Leg Pain'}"><c:out value="checked=checked"/></c:if>>Left Leg Pain</td>
<td><input type="checkbox" name="rightkneepain" value="Right Knee Pain" <c:if test="${soap.rightkneepain=='Right Knee Pain'}"><c:out value="checked=checked"/></c:if>>Right Knee Pain</td>
<td><input type="checkbox" name="leftkneepain" value="Left Knee Pain" <c:if test="${soap.leftkneepain=='Left Knee Pain'}"><c:out value="checked=checked"/></c:if>>Left Knee Pain</td>
<td><input type="checkbox" name="rightanklepain" value="Right Ankle Pain" <c:if test="${soap.rightanklepain=='Right Ankle Pain'}"><c:out value="checked=checked"/></c:if>>Right Ankle Pain</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="leftanklepain" value="Left Ankle Pain" <c:if test="${soap.leftanklepain=='Left Ankle Pain'}"><c:out value="checked=checked"/></c:if>>Right Rib Pain</td>
<td><input type="checkbox" name="rightfootpain" value="Right Foot Pain" <c:if test="${soap.rightfootpain=='Right Foot Pain'}"><c:out value="checked=checked"/></c:if>>Right Foot Pain</td>
<td><input type="checkbox" name="leftfootpain" value="Left Foot Pain" <c:if test="${soap.leftfootpain=='Left Foot Pain'}"><c:out value="checked=checked"/></c:if>>Left Foot Pain</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</table>
 <table cellpadding="0" cellspacing="0" border="1" width="98%">
 <tr>
  <td>
<bold><center> Date </center> </bold>
  </td>
 <td>
<bold><center> S</center></bold>
 </td>
 <td>
 <bold><center>O</center></bold>
 </td>
 <td>
 <bold><center>A</center></bold>
 </td>
 <td>
 <bold><center>P</center></bold>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker1" class="input_txtbx1"  name="date1" value="${soap.date1}"></td>
 <td></td>
 <td></td>
 <td>
 
 &nbsp &nbsp Diagonosis:<br/>
&nbsp &nbsp 1&nbsp &nbsp &nbsp<input class="input_txtbx1" id="inp_id" type="text" name="diagnosis1" value="${soap.diagnosis1}"><br/><br/>
&nbsp &nbsp 2&nbsp &nbsp &nbsp<input class="input_txtbx1" id="inp_id" type="text" name="diagnosis2" value="${soap.diagnosis2}"><br/><br/>
&nbsp &nbsp 3&nbsp &nbsp &nbsp<input class="input_txtbx1" id="inp_id" type="text" name="diagnosis3" value="${soap.diagnosis3}"><br/><br/>
&nbsp &nbsp 4&nbsp &nbsp &nbsp<input class="input_txtbx1" id="inp_id" type="text" name="diagnosis4" value="${soap.diagnosis4}"><br/><br/>
 </td>
 <td>
 &nbsp &nbsp E1/E2 X-Rays: <select name="e1e2" id="e1e2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="2" <c:if test="${soap.e1e2=='2'}"><c:out value="selected"/></c:if>>2</option>
					<option value="3" <c:if test="${soap.e1e2=='3'}"><c:out value="selected"/></c:if>>3</option>
					<option value="4" <c:if test="${soap.e1e2=='4'}"><c:out value="selected"/></c:if>>4</option>
					<option value="5" <c:if test="${soap.e1e2=='5'}"><c:out value="selected"/></c:if>>5</option>
					<option value="6" <c:if test="${soap.e1e2=='6'}"><c:out value="selected"/></c:if>>6</option>
					<option value="7" <c:if test="${soap.e1e2=='7'}"><c:out value="selected"/></c:if>>7</option>
					<option value="8" <c:if test="${soap.e1e2=='8'}"><c:out value="selected"/></c:if>>8</option>
					<option value="9" <c:if test="${soap.e1e2=='9'}"><c:out value="selected"/></c:if>>9</option>
					<option value="10" <c:if test="${soap.e1e2=='10'}"><c:out value="selected"/></c:if>>10</option>
					<option value="11" <c:if test="${soap.e1e2=='11'}"><c:out value="selected"/></c:if>>11</option>
					<option value="scsm" <c:if test="${soap.e1e2=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soap.e1e2=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soap.e1e2=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soap.e1e2=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soap.e1e2=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soap.e1e2=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soap.e1e2=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soap.e1e2=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="Iontophoresis  " <c:if test="${soap.e1e2=='Iontophoresis  '}"><c:out value="selected"/></c:if>>Iontophoresis  </option>
					<option value="traction" <c:if test="${soap.e1e2=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="mri" <c:if test="${soap.e1e2=='mri'}"><c:out value="selected"/></c:if>>MRI</option>
					<option value="lab" <c:if test="${soap.e1e2=='lab'}"><c:out value="selected"/></c:if>>LAB</option>
					<option value="opinion" <c:if test="${soap.e1e2=='opinion'}"><c:out value="selected"/></c:if>>2nd Opinion</option>
					<option value="rehab" <c:if test="${soap.e1e2=='rehab'}"><c:out value="selected"/></c:if>>Rehab</option>
					<option value="stretchexer" <c:if test="${soap.e1e2=='stretchexer'}"><c:out value="selected"/></c:if>>Stretch exer</option>
					<option value="offwork" <c:if test="${soap.e1e2=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="backtowork" <c:if test="${soap.e1e2=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soap.e1e2=='strengthexcer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="lifestyle" <c:if test="${soap.e1e2=='lifestyle'}"><c:out value="selected"/></c:if>>Lifestyle modifications</option>
					<option value="reeval" <c:if test="${soap.e1e2=='reeval'}"><c:out value="selected"/></c:if>>Re Eval.in </option>
				  </select>
				  
				  <input type="text" name="offwork1" class="input_txtbx1" id="inp_id"  value="${soap.offwork1}" style='display:none' >
				  <input type="text" name="reeval1" class="input_txtbx1" id="inp_id"  value="${soap.reeval1}" style='display:none'>
				  </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker"  name="date2" value="${soap.date2}"></td>
 <td>
 <br/>
&nbsp &nbsp Improved: <select name="improved1" id="improved1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.improved1=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.improved1=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soap.improved1=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.improved1=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.improved1=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soap.improved1=='95%'}"><c:out value="selected"/></c:if>>95%</option>
					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened1" id="worsened1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.worsened1=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.worsened1=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soap.worsened1=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.worsened1=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.worsened1=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soap.worsened1=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select><br/><br/><br/></td>

 <td>
 &nbsp &nbsp <select name="fixation1" id="fixation1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soap.fixation1=='fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soap.fixation1=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soap.fixation1=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soap.fixation1=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonicity" <c:if test="${soap.fixation1=='hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soap.fixation1=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soap.fixation1=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soap.fixation1=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soap.fixation1=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soap.fixation1=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>

					</select></td>
 <td>

 &nbsp &nbsp<select name="notimproved1" id="notimproved1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soap.notimproved1=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressingslow" <c:if test="${soap.notimproved1=='Progressingslow'}"><c:out value="selected"/></c:if>>Progressing Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soap.notimproved1=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soap.notimproved1=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soap.notimproved1=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soap.notimproved1=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
					</select></td>
 <td>

  &nbsp &nbsp <select name="scsm1" id="scsm1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soap.scsm1=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soap.scsm1=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soap.scsm1=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soap.scsm1=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soap.scsm1=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soap.scsm1=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soap.scsm1=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soap.scsm1=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="Iontophoresis  " <c:if test="${soap.scsm1=='Iontophoresis  '}"><c:out value="selected"/></c:if>>Iontophoresis  </option>
					<option value="traction" <c:if test="${soap.scsm1=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soap.scsm1=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soap.scsm1=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soap.scsm1=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soap.scsm1=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soap.scsm1=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soap.scsm1=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soap.scsm1=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soap.scsm1=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soap.scsm1=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soap.scsm1=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="date3" id="datepicker2" value="${soap.date3}"></td>
 <td>
<br/>&nbsp &nbspImproved: <select name="improved2" id="improved2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.improved2=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.improved2=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soap.improved2=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.improved2=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.improved2=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soap.improved2=='95%'}"><c:out value="selected"/></c:if>>95%</option>
<br/><br/><br/>


&nbsp &nbsp Worsened: <select name="worsened2" id="worsened2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.worsened2=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.worsened2=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soap.worsened2=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.worsened2=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.worsened2=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soap.worsened2=='95%'}"><c:out value="selected"/></c:if>>95%</option>


					</select></td>
 <td>

  &nbsp &nbsp <select name="fixation2" id="fixation2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soap.fixation2=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soap.fixation2=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soap.fixation2=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soap.fixation2=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonicity" <c:if test="${soap.fixation2=='hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soap.fixation2=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soap.fixation2=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soap.fixation2=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soap.fixation2=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soap.fixation2=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>


					</select></td>
 <td>&nbsp &nbsp<select name="notimproved2" id="notimproved2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soap.notimproved2=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressingslow" <c:if test="${soap.notimproved2=='Progressingslow'}"><c:out value="selected"/></c:if>>Progressing Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soap.notimproved2=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soap.notimproved2=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soap.notimproved2=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soap.notimproved2=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
				</select></td>
 <td>&nbsp &nbsp <select name="scsm2" id="scsm2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soap.scsm2=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soap.scsm2=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soap.scsm2=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soap.scsm2=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soap.scsm2=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soap.scsm2=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soap.scsm2=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soap.scsm2=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="Iontophoresis  " <c:if test="${soap.scsm2=='Iontophoresis  '}"><c:out value="selected"/></c:if>>Iontophoresis  </option>
					<option value="traction" <c:if test="${soap.scsm2=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soap.scsm2=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soap.scsm2=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soap.scsm2=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soap.scsm2=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soap.scsm2=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soap.scsm2=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soap.scsm2=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soap.scsm2=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soap.scsm2=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soap.scsm2=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
			
				  </select>
 
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" class="input_txtbx1" id="datepicker3" name="date4" value="${soap.date4}"></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved3" id="improved3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.improved1=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.improved1=='25%'}"><c:out value="selected"/></c:if> >25%</option>
					<option value="50%" <c:if test="${soap.improved1=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.improved1=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.improved1=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soap.improved1=='95%'}"><c:out value="selected"/></c:if>>95%</option>
</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened3" id="worsened3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.worsened3=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.worsened3=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soap.worsened3=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.worsened3=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.worsened3=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soap.worsened3=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select></td>
 <td>
  &nbsp &nbsp<select name="fixation3" id="fixation3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soap.fixation3=='Fixation'}"><c:out value="selected"/></c:if>
					>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soap.fixation3=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soap.fixation3=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soap.fixation3=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonicity" <c:if test="${soap.fixation3=='hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soap.fixation3=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soap.fixation3=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soap.fixation3=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soap.fixation3=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soap.fixation3=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>

					</select></td>
 <td>&nbsp &nbsp<select name="notimproved3" id="notimproved3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soap.notimproved3=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressingslow" <c:if test="${soap.notimproved3=='Progressingslow'}"><c:out value="selected"/></c:if>>Progressing Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soap.notimproved3=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soap.notimproved3=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soap.notimproved3=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soap.notimproved3=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
			
					</select></td>
  <td>&nbsp &nbsp <select name="scsm3" id="scsm3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soap.scsm3=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soap.scsm3=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soap.scsm3=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soap.scsm3=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soap.scsm3=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soap.scsm3=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soap.scsm3=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soap.scsm3=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="Iontophoresis  " <c:if test="${soap.scsm3=='Iontophoresis  '}"><c:out value="selected"/></c:if>>Iontophoresis  </option>
					<option value="traction" <c:if test="${soap.scsm3=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soap.scsm3=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soap.scsm3=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soap.scsm3=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soap.scsm3=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soap.scsm3=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soap.scsm3=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soap.scsm3=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soap.scsm3=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soap.scsm3=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soap.scsm3=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
			  </select>
  
  </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker4" class="input_txtbx1" name="date5"  value="${soap.date5}"></td>
 <td>
 <br/>&nbsp &nbsp Improved: <select name="improved4" id="improved4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.improved4=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.improved4=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soap.improved4=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.improved4=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.improved4=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soap.improved4=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened4" id="worsened4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.worsened4=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.worsened4=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soap.worsened4=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.worsened4=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.worsened4=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soap.worsened4=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select></td>
 <td>&nbsp &nbsp <select name="fixation4" id="fixation4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soap.fixation4=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soap.fixation4=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soap.fixation4=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soap.fixation4=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonicity" <c:if test="${soap.fixation4=='hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soap.fixation4=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soap.fixation4=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soap.fixation4=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soap.fixation4=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soap.fixation4=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>

					</select></td>
 <td>&nbsp &nbsp<select name="notimproved4" id="notimproved4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soap.notimproved4=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressingslow" <c:if test="${soap.notimproved4=='Progressingslow'}"><c:out value="selected"/></c:if>>Progressing Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soap.notimproved4=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soap.notimproved4=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soap.notimproved4=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soap.notimproved4=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
				</select></td>
 
 <td>&nbsp &nbsp <select name="scsm4" id="scsm4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soap.scsm4=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soap.scsm4=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soap.scsm4=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soap.scsm4=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soap.scsm4=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soap.scsm4=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soap.scsm4=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soap.scsm4=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="Iontophoresis  " <c:if test="${soap.scsm4=='Iontophoresis  '}"><c:out value="selected"/></c:if>>Iontophoresis  </option>
					<option value="traction" <c:if test="${soap.scsm4=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soap.scsm4=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soap.scsm4=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soap.scsm4=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soap.scsm4=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soap.scsm4=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soap.scsm4=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soap.scsm4=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soap.scsm4=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soap.scsm4=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soap.scsm4=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
					  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text"  class="input_txtbx1" id="datepicker5" name="date6"  value="${soap.date6}"></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved5" id="improved5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.improved5=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.improved5=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soap.improved5=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.improved5=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.improved5=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soap.improved5=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened5" id="worsened5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.worsened5=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.worsened5=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soap.worsened5=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.worsened5=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.worsened5=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soap.worsened5=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select></td>
 <td>
  &nbsp &nbsp<select name="fixation5" id="fixation5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soap.fixation5=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soap.fixation5=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soap.fixation5=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soap.fixation5=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonicity" <c:if test="${soap.fixation5=='hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soap.fixation5=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soap.fixation5=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soap.fixation5=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soap.fixation5=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soap.fixation5=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>
		</select></td>
<td>&nbsp &nbsp <select name="notimproved5" id="notimproved5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soap.notimproved5=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressingslow" <c:if test="${soap.notimproved5=='Progressingslow'}"><c:out value="selected"/></c:if>>Progressing Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soap.notimproved5=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soap.notimproved5=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soap.notimproved5=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soap.notimproved5=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
				</select></td>
 <td>&nbsp &nbsp <select name="scsm5" id="scsm5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soap.scsm5=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soap.scsm5=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soap.scsm5=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soap.scsm5=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soap.scsm5=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soap.scsm5=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soap.scsm5=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soap.scsm5=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="Iontophoresis  " <c:if test="${soap.scsm5=='Iontophoresis  '}"><c:out value="selected"/></c:if>>Iontophoresis  </option>
					<option value="traction" <c:if test="${soap.scsm5=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soap.scsm5=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soap.scsm5=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soap.scsm5=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soap.scsm5=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soap.scsm5=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soap.scsm5=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soap.scsm5=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soap.scsm5=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soap.scsm5=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soap.scsm5=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
					  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker6" name="date7" class="input_txtbx1" value="${soap.date7}"></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved6" id="improved6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.improved6=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.improved6=='25%'}"><c:out value="selected"/></c:if> >25%</option>
					<option value="50%" <c:if test="${soap.improved6=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.improved6=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.improved6=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soap.improved6=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select><br/><br/><br/>
&nbsp &nbsp  Worsened: <select name="worsened6" id="worsened6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.worsened6=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.worsened6=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soap.worsened6=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.worsened6=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.worsened6=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soap.worsened6=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select></td>
 <td>&nbsp &nbsp <select name="fixation6" id="fixation6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soap.fixation6=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soap.fixation6=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soap.fixation6=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soap.fixation6=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonicity" <c:if test="${soap.fixation6=='hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soap.fixation6=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soap.fixation6=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soap.fixation6=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soap.fixation6=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soap.fixation6=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>
	</select></td>
<td> &nbsp &nbsp<select name="notimproved6" id="notimproved6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soap.notimproved6=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressingslow" <c:if test="${soap.notimproved6=='Progressingslow'}"><c:out value="selected"/></c:if>>Progressing Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soap.notimproved6=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soap.notimproved6=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soap.notimproved6=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soap.notimproved6=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
			
					</select></td>
 <td>&nbsp &nbsp <select name="scsm6" id="scsm6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soap.scsm6=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soap.scsm6=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soap.scsm6=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soap.scsm6=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soap.scsm6=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soap.scsm6=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soap.scsm6=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soap.scsm6=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="Iontophoresis  " <c:if test="${soap.scsm6=='Iontophoresis  '}"><c:out value="selected"/></c:if>>Iontophoresis  </option>
					<option value="traction" <c:if test="${soap.scsm6=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soap.scsm6=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soap.scsm6=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soap.scsm6=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soap.scsm6=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soap.scsm6=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soap.scsm6=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soap.scsm6=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soap.scsm6=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soap.scsm6=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soap.scsm6=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
			  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker7" class="input_txtbx1"  name="date8" value="${soap.date8}"></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved7" id="improved7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.improved7=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.improved7=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soap.improved7=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.improved7=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.improved7=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soap.improved7=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened7" id="worsened7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.worsened7=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.worsened7=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soap.worsened7=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.worsened7=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.worsened7=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soap.worsened7=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select></td>
 <td> &nbsp &nbsp<select name="fixation7" id="fixation7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soap.fixation7=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soap.fixation7=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soap.fixation7=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soap.fixation7=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonicity" <c:if test="${soap.fixation7=='hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soap.fixation7=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soap.fixation7=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soap.fixation7=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soap.fixation7=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soap.fixation7=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>

					</select></td>
 <td>&nbsp &nbsp<select name="notimproved7" id="notimproved7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soap.notimproved7=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressingslow" <c:if test="${soap.notimproved7=='Progressingslow'}"><c:out value="selected"/></c:if>>Progressing Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soap.notimproved7=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soap.notimproved7=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soap.notimproved7=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soap.notimproved7=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
								</select></td>
 <td>&nbsp &nbsp <select name="scsm7" id="scsm7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soap.scsm7=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soap.scsm7=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soap.scsm7=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soap.scsm7=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soap.scsm7=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soap.scsm7=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soap.scsm7=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soap.scsm7=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="Iontophoresis  " <c:if test="${soap.scsm7=='Iontophoresis  '}"><c:out value="selected"/></c:if>>Iontophoresis  </option>
					<option value="traction" <c:if test="${soap.scsm7=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soap.scsm7=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soap.scsm7=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soap.scsm7=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soap.scsm7=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soap.scsm7=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soap.scsm7=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soap.scsm7=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soap.scsm7=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soap.scsm7=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soap.scsm7=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
			  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker8" class="input_txtbx1" name="date9" value="${soap.date9}"></td>
 <td>
 <br/>&nbsp &nbsp Improved: <select name="improved8" id="improved8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.improved8=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.improved8=='25%'}"><c:out value="selected"/></c:if> >25%</option>
					<option value="50%" <c:if test="${soap.improved8=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.improved8=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.improved8=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soap.improved8=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened8" id="worsened8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soap.worsened8=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soap.worsened8=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soap.worsened8=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soap.worsened8=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soap.worsened8=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soap.worsened8=='95%'}"><c:out value="selected"/></c:if>>95%</option>
					</select></td>
 <td> &nbsp &nbsp<select name="fixation8" id="fixation8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soap.fixation8=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soap.fixation8=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soap.fixation8=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soap.fixation8=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonicity" <c:if test="${soap.fixation8=='hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soap.fixation8=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soap.fixation8=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soap.fixation8=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soap.fixation8=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soap.fixation8=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>
	</select></td>
 <td>&nbsp &nbsp<select name="notimproved8" id="notimproved8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soap.notimproved8=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressingslow" <c:if test="${soap.notimproved8=='Progressingslow'}"><c:out value="selected"/></c:if>>Progressing Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soap.notimproved8=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soap.notimproved8=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soap.notimproved8=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soap.notimproved8=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
				</select></td>
 <td>&nbsp &nbsp <select name="scsm8" id="scsm8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soap.scsm8=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soap.scsm8=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soap.scsm8=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soap.scsm8=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soap.scsm8=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soap.scsm8=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soap.scsm8=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soap.scsm8=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="Iontophoresis  " <c:if test="${soap.scsm8=='Iontophoresis  '}"><c:out value="selected"/></c:if>>Iontophoresis  </option>
					<option value="traction" <c:if test="${soap.scsm8=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soap.scsm8=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soap.scsm8=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soap.scsm8=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soap.scsm8=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soap.scsm8=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soap.scsm8=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soap.scsm8=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soap.scsm8=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soap.scsm8=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soap.scsm8=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
					  </select>
 </td>
 </tr>
  </table>
  <table align="right"><tr><td> <span class="err">*</span> Physicians Signature:<input type="text" name="sign" class="input_txtbx1" id="inp_id"  value="${soap.sign}"><span class="err"><form:errors path="SoapNotes.sign"></form:errors></span></td></tr></table>
				                   </table>
 <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Save" id="saveid"></td>
				                   <td><a href="doctorsearch" style="color:white;text-decoration: none" id="cancelid" class="submit_btn">Cancel</a></td>
				                   </tr>
				                   </table>
				                   
				                   </c:otherwise>
				                   </c:choose>
				                   </form>
				                   </div>
				                   </body>
				                   </html>
				                   
	      
	            
	            