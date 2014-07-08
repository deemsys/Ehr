<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
<script>
$(function() {
    //$( "#draggable" ).draggable({ revert: "not valid" });
    
    $(window).load(function(){    
    $('input:checkbox[name=other]').each(function() 
{    
    if($(this).is(':checked'))
    var other=$(this).val();     
       if(other=="other")
    {
    document.getElementById("otherdefict").style.display="block";
    }
    else
    {document.getElementById("otherdefict").style.display="none";
    }  
});
   
    $('input:checkbox[name=others]').each(function() 
{    
    if($(this).is(':checked'))
    var others=$(this).val();     
       if(others=="other")
    {
    document.getElementById("othervalue").style.display="block";
    }
    else
    {document.getElementById("othervalue").style.display="none";
    }  
});   
   

  

    
   
    });
    });

</script>
<script type="text/javascript">
function softtissuevalidate()
{
if(document.getElementById('softtissuess').checked)
{
document.getElementById('softtissue').style.display="none";
document.getElementById('softtissue1').style.display="none";
document.getElementById('softtissue2').style.display="none";
 }
 else if(document.getElementById('softtissues').checked)
{
document.getElementById('softtissue').style.display="block";
document.getElementById('softtissue1').style.display="block";
document.getElementById('softtissue2').style.display="block";
 } 
}

function neurologicalvalidate()
{
if(document.getElementById('neurologicalunremarkable').checked)
{
document.getElementById('neurological').style.display="none";

 }
 else if(document.getElementById('neurologicalexcept').checked)
{
document.getElementById('neurological').style.display="block";
 } 
}
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
function visible(val)
{
if(document.getElementById('other').checked)
{
 var element=document.getElementById('otherdefict');
 element.style.display='block';
 }
 else
 {
	 document.getElementById("otherdeficterror").innerHTML="";
 var element=document.getElementById('otherdefict');
 element.style.display='none';
 }
 
}

function shortlegvalidate(val)
{
if(document.getElementById('leftvalue').checked)
{
var element=document.getElementById('shortlegleft');
 element.style.display='block';
 }
 else
 {
 var element=document.getElementById('shortlegleft');
 element.style.display='none';
 }
}
function shortlegvalidate1(val)
{
if(document.getElementById('shortlegcheck').checked)
{
var element=document.getElementById('shortlegright');
 element.style.display='block';
 }
 else
 {
 var element=document.getElementById('shortlegright');
 element.style.display='none';
 }
}
function othervisible(val)
{
if(document.getElementById('others').checked)
{
 var element=document.getElementById('othervalue');
 element.style.display='block';
 }
 else
 {
	 document.getElementById("otherserror").innerHTML="";
 var element=document.getElementById('othervalue');
 element.style.display='none';
 }
 
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
		
		else if(document.getElementById("pname").value.length<=4 && document.getElementById("pname").value.length<=32)
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
  
 <!-- <script>

	function checkSubmit()
	{
		var error="";
		 document.getElementById("pnameerror").innerHTML=" ";
		
		if(document.getElementById("pname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
		else  if(document.getElementById("pname").value.length<4 || document.getElementById("pname").value.length>32)
	    {
	    	
	    	document.getElementById("pnameerror").innerHTML="Required Field should be Length of 4 to 32";
	    	
	    	error="true";
	    }
		document.getElementById("datepickererror").innerHTML="";
	if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		} 
	document.getElementById("datepickererror").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		if(document.getElementById("datepicker").value.match(datechk)==null)
	    {
	    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
	    	
	    	error="true";
	    }	
			
	document.getElementById("signerror").innerHTML="";
	if(document.getElementById("sign").value=="")
	{
	document.getElementById("signerror").innerHTML="Required Field Should not be Empty";
	
	error="true";
	}
	else if(document.getElementById("sign").value.length<4 || document.getElementById("sign").value.length>=32)
    {
    	
    	document.getElementById("signerror").innerHTML="Required Field should be Length of 4 to 32";
    	
    	error="true";
    }
	else
	{
	document.getElementById("signerror").innerHTML="";
	}

	var muscle = document.getElementById('muscle').value;
	
	if(muscle =="")
		{
		document.getElementById("musclerror").innerHTML="";
		}
	else if((muscle.length < 4 )|| (muscle.length > 32))
		{
		
			document.getElementById("musclerror").innerHTML="Required Field should be Length of 4 to 32";
    	
    	error="true";
		}
	else
	{
	document.getElementById("musclerror").innerHTML="";
	}

	
var swelling = document.getElementById('swelling').value;
	
	if(swelling =="")
		{
		document.getElementById("swellingerror").innerHTML="";
		}
	else if((swelling.length < 4 )|| (swelling.length > 32))
		{
		
			document.getElementById("swellingerror").innerHTML="Required Field should be Length of 4 to 32";
    	
    	error="true";
		}
	else
	{
	document.getElementById("swellingerror").innerHTML="";
	}

	
var note = document.getElementById('note').value;
	
	if(note =="")
		{
		document.getElementById("noteerror").innerHTML="";
		}
	else if((note.length < 4 )|| (note.length > 400))
		{
		
			document.getElementById("noteerror").innerHTML="Required Field should be Length of 4 to 400";
    	
    	error="true";
		}
	else
	{
	document.getElementById("noteerror").innerHTML="";
	}

var otherdefict = document.getElementById('otherdefict').value;
	var other = document.getElementById('other');
	if(other.checked)
		{
	if(otherdefict =="")
		{
		document.getElementById("otherdeficterror").innerHTML="required field should not be Empty";
		error="true";
		}
	else if((otherdefict.length < 4 )|| (otherdefict.length > 32))
		{
		
			document.getElementById("otherdeficterror").innerHTML="Required Field should be Length of 4 to 32";
    	
    	error="true";
		}
	else{
		document.getElementById("otherdeficterror").innerHTML="";
	}
		}
	else{
		document.getElementById("otherdeficterror").innerHTML="";
	}
	
var note = document.getElementById('comments').value;
	
	if(note =="")
		{
		document.getElementById("commentserror").innerHTML="";
		}
	else if((note.length < 4 )|| (note.length > 400))
		{
		
			document.getElementById("commentserror").innerHTML="Required Field should be Length of 4 to 400";
    	
    	error="true";
		}
	else
	{
	document.getElementById("commentserror").innerHTML="";
	}

	
	
var swelling = document.getElementById('diagnosis1').value;
	
	if(swelling =="")
		{
		document.getElementById("diagnosis1error").innerHTML="";
		}
	else if((swelling.length < 4 )|| (swelling.length > 32))
		{
		
			document.getElementById("diagnosis1error").innerHTML="Required Field should be Length of 4 to 32";
    	
    	error="true";
		}
	else
	{
	document.getElementById("diagnosis1error").innerHTML="";
	}

	
	var swelling = document.getElementById('diagnosis2').value;
		
		if(swelling =="")
			{
			document.getElementById("diagnosis2error").innerHTML="";
			}
		else if((swelling.length < 4 )|| (swelling.length > 32))
			{
			
				document.getElementById("diagnosis2error").innerHTML="Required Field should be Length of 4 to 32";
	    	
	    	error="true";
			}
		else
		{
		document.getElementById("diagnosis2error").innerHTML="";
		}
	
		
		var swelling = document.getElementById('diagnosis3').value;
			
			if(swelling =="")
				{
				document.getElementById("diagnosis3error").innerHTML="";
				}
			else if((swelling.length < 4 )|| (swelling.length > 32))
				{
				
					document.getElementById("diagnosis3error").innerHTML="Required Field should be Length of 4 to 32";
		    	
		    	error="true";
				}
			else
			{
			document.getElementById("diagnosis3error").innerHTML="";
			}
		
			
			var swelling = document.getElementById('diagnosis4').value;
				
				if(swelling =="")
					{
					document.getElementById("diagnosis4error").innerHTML="";
					}
				else if((swelling.length < 4 )|| (swelling.length > 32))
					{
					
						document.getElementById("diagnosis4error").innerHTML="Required Field should be Length of 4 to 32";
			    	
			    	error="true";
					}
				else
				{
				document.getElementById("diagnosis4error").innerHTML="";
				}
			
		var swelling = document.getElementById('diagnosis5').value;
				
				if(swelling =="")
					{
					document.getElementById("diagnosis5error").innerHTML="";
					}
				else if((swelling.length < 4 )|| (swelling.length > 32))
					{
					
						document.getElementById("diagnosis5error").innerHTML="Required Field should be Length of 4 to 32";
			    	
			    	error="true";
					}
				else
					{
					document.getElementById("diagnosis5error").innerHTML="";
					}
				
				
				
				var otherdefict = document.getElementById('othervalue').value;
				var other = document.getElementById('others');
				if(other.checked)
					{
				if(otherdefict =="")
					{
					document.getElementById("otherserror").innerHTML="required field should not be Empty";
					error="true";
					}
				else if((otherdefict.length < 4 )|| (otherdefict.length > 32))
					{
					
						document.getElementById("otherserror").innerHTML="Required Field should be Length of 4 to 32";
			    	
			    	error="true";
					}
					}
				else
				{
				document.getElementById("otherserror").innerHTML="";
				}
			
	if(error == "true")
		{
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
    function checkLength1(id){
    	   
        var fieldVal = document.getElementById(id).value;
        //Suppose u want 3 number of character
        if(fieldVal >=0 && fieldVal <=99999){
            return true;
        }
        else
        {
            var str = document.getElementById(id).value;
           
            str = str.substring(0, str.length - 1);
        document.getElementById(id).value = str;
        }
         
        }
    function checkLength2(id){
 	   
        var fieldVal = document.getElementById(id).value;
        //Suppose u want 3 number of character
        if(fieldVal >=0 && fieldVal <=52){
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
<br><br>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">2</a></li>    
  </ul>  
	     <div id="tabs-1">
	     
<form action="updatefootexam" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>ANKLE / FOOT 	REEXAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	     <c:set value="${footexamform.footexamdetails[0]}" var="footexamdetails"/>
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><span class="err">*</span> Patient Name:</td>
           <td width="200"><input type="hidden" value="${footexamdetails.footexamno}"name="footexamno">
           <input type="text" value="${footexamdetails.pname}" name="pname" onInput="return validatename(id);" id="pname"><br><span class="err" id="pnameerror"><form:errors path="footexamdetails.pname"></form:errors></td><td width="635"></td>
           <td width="50"><span class="err">*</span> Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker" value="${footexamdetails.date}"><br><span class="err" id="datepickererror"><form:errors path="footexamdetails.date"></form:errors></td>
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION </b></div>
           </br>
           <table >
           <tr><td>Gait:&nbsp;</td><td width="30"></td>  <td><select style="width:178" name="gait">
           <option <c:if test="${footexamdetails.gait=='normal'}"></c:if> <c:out value="selected"></c:out>>normal</option>
           <option <c:if test="${footexamdetails.gait=='antalogic'}"></c:if> <c:out value="selected"></c:out>>antalogic</option>
           <option <c:if test="${footexamdetails.gait=='shuffling'}"></c:if> <c:out value="selected"></c:out>>shuffling</option>
           <option <c:if test="${footexamdetails.gait=='limp'}"></c:if> <c:out value="selected"></c:out>>limp</option>
           <option <c:if test="${footexamdetails.gait=='stagger'}"></c:if> <c:out value="selected"></c:out>>stagger</option>
           <option <c:if test="${footexamdetails.gait=='cane assisted'}"></c:if> <c:out value="selected"></c:out>>cane assisted</option>
           <option <c:if test="${footexamdetails.gait=='wheelchair'}"></c:if> <c:out value="selected"></c:out>>wheelchair</option></select></td>
          
           
            
           
           </tr>
<tr height="10"></tr>
           <tr>
           <td >Muscle Symmetry:</td><td></td>
           <td><input type="text" name="muscle"id="muscle" onInput="return validatename(id);"value="${footexamdetails.muscle}" >
           <br><span id="musclerror" style="color:red"></span>
           </td><td width="10"></td>
             <td width="130">Swelling  / Discoloration:</td>
             <td width="40"><input type="text" name="swelling" id="swelling"value="${footexamdetails.swelling}" onInput="return validatename(id);">
             <br><span id="swellingerror" style="color:red"></span>
             </td>
           
           <td width="59"></td>
           <td width="120">A & O:</td><td><select name="ao" ><option <c:if test="${footexamdetails.ao=='excellent'}"></c:if> <c:out value="selected"></c:out>>excellent</option>
           <option <c:if test="${footexamdetails.ao=='good'}"></c:if> <c:out value="selected"></c:out>> good</option>
           <option <c:if test="${footexamdetails.ao=='fair'}"></c:if> <c:out value="selected"></c:out>> fair</option>
           <option <c:if test="${footexamdetails.ao=='severe'}"></c:if> <c:out value="selected"></c:out>> severe</option></select></td>
           </tr>  
           </table> 
           
           <table>
           <tr>
           <td width="129">Pronation:</td><td><input type="radio" value="left" name="pronation" <c:if test="${footexamdetails.pronation=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td> <td width="140"><input type="radio" <c:if test="${footexamdetails.pronation=='right'}"> <c:out value="checked"></c:out></c:if> value="right" name="pronation">&nbsp;&nbsp;&nbsp;Right</td>
                     
           <td width="130">Supination:</td><td><input type="radio" value="left" <c:if test="${footexamdetails.supination=='left'}"> <c:out value="checked"></c:out></c:if> name="supination">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>&nbsp;&nbsp;&nbsp;<td width="110"> <input type="radio" value="right"  <c:if test="${footexamdetails.supination=='right'}"> <c:out value="checked"></c:out></c:if> name="supination">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="35"></td>
           <td width="120">Calcaneus Varus:</td><td><input type="radio" value="left" name="calcaneus" <c:if test="${footexamdetails.calcaneus=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="calcaneus" <c:if test="${footexamdetails.calcaneus=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
           <td width="73"></td>
           <td width="120">Calcaneus Valgus:</td><td><input type="radio" value="left" name="valgus" <c:if test="${footexamdetails.valgus=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="valgus" <c:if test="${footexamdetails.valgus=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
           </tr><tr>
           <tr height="10"></tr>
           <td width="129">Forefoot Varus:</td><td><input type="radio" value="left" name="forefoot" <c:if test="${footexamdetails.forefoot=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="forefoot" <c:if test="${footexamdetails.forefoot=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
           <td width="130">Forefoot Valgus:</td><td><input type="radio" value="left" name="forefootvalgus" <c:if test="${footexamdetails.forefootvalgus=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="forefootvalgus" <c:if test="${footexamdetails.forefootvalgus=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
               
           </table>
           </br>           
         
          <table  style="border:10">      
         <tr><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION
 </b></td>
         <td width="40"></td>
         <td align="left"><input type="checkbox" value="Unremarkable" name="dysfunction" id="functional" <c:if test="${footexamdetails.dysfunction=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>All Soft Tissue Unremarkable</td>
         <td width="180"></td>
          </tr>  </table>       
<br>
<table>	
	<tr><td  width="130">Note:  </td>
<td><textarea rows="5" cols="50" name="note" id="note" onInput="return validatename1(id)";><c:out value="${footexamdetails.note}"></c:out></textarea>
<br><span id="noteerror" style="color:red"></span>
</td>	
	
	</tr></table>
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="98"></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional" <c:if test="${footexamdetails.functional=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>Unremarkable
         
         </td>
         <td width="230"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td><td width="145"></td>
         <td><input type="checkbox" name="orthotpedic" <c:if test="${footexamdetails.orthotpedic=='unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> value="unremarkable">Unremarkable
        
         </td>  </tr></table>
         </br>
         <table >
         <tr>
         <td width="140" valign="top">
         (*  Pain Elicited)	
         </td>   
         <td width="180" valign="top">Normal </td><td align="center">Actual</br></br>
          Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right
         </td>
         <td></td> <td></td><td></td> <td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
               
         
         </tr>
         <tr height="10"></tr>
         <tr><td>Plantar Flexion:		</td><td>50</td><td>
         <input type="text" size="5" name="plantarflexionleft" id="plantarflexionleft" value="${footexamdetails.plantarflexionleft}" onkeypress="return validate(event)"onInput="checkLength1(id);">
         &nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="plantarflexionright" id="plantarflexionright"value="${footexamdetails.plantarflexionright}" onkeypress="return validate(event)"onInput="checkLength1(id);"></td><td width="210"></td>
         <td>Tinel's Tap:	</td><td width="150"></td>
         <td><input size="5" type="text" onkeypress="return validate(event)" value="${footexamdetails.tinelstapleft}" name="tinelstapleft"id="tinelstapleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="text" size="5" onkeypress="return validate(event)" value="${footexamdetails.tinelstapright}" name="tinelstapright"id="tinelstapright"onInput="checkLength1(id);"></td></tr>
         <tr><td>Dorsiflexion:				</td><td>20</td><td>
         <input size="5" type="text" name="dorsiflexionleft"id="dorsiflexionleft" value="${footexamdetails.dorsiflexionleft}" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input size="5" type="text" value="${footexamdetails.dorsiflexionright}" name="dorsiflexionright" id="dorsiflexionright"onkeypress="return validate(event)"onInput="checkLength1(id);"></td><td width="90"></td>
         <td>Achilles Tap:</td><td width="150"></td><td>
         <input type="text"  size="5" onkeypress="return validate(event)" name="achillestapleft"id="achillestapleft"  value="${footexamdetails.achillestapleft}"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="text" size="5" onkeypress="return validate(event)" name="achillestapright" id="achillestapright"value="${footexamdetails.achillestapright}"onInput="checkLength1(id);"></td></tr>
         <tr><td>Inversion:				</td><td>35</td><td>
         <input size="5" type="text"  value="${footexamdetails.inversionleft}" name="inversionleft"id="inversionleft" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input  size="5" type="text" value="${footexamdetails.inversionright}" name="inversionright" id="inversionright" onkeypress="return validate(event)"onInput="checkLength1(id);"></td><td width="90"></td>
         <td>Long / Transv Arch:</td><td width="150"></td>
         <td><input type="text" size="5" onkeypress="return validate(event)" value="${footexamdetails.longleft}"  name="longleft"id="longleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input size="5" type="text"  onkeypress="return validate(event)" value="${footexamdetails.longright}" name="longright"id="longright"onInput="checkLength1(id);"></td></tr>
         <tr><td>Eversion:					</td><td>15</td><td>
         <input size="5" type="text" value="${footexamdetails.eversionleft}" name="eversionleft" id="eversionleft"onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input size="5" type="text"  value="${footexamdetails.eversionright}" name="eversionright"id="eversionright" onkeypress="return validate(event)"onInput="checkLength1(id);"></td>
         <td width="90"></td><td>Thompson's:	</td><td width="150"></td><td>
         <input type="text" size="5"  onkeypress="return validate(event)" name="thompsonsleft" id="thompsonsleft"value="${footexamdetails.thompsonsleft}"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input size="5" type="text" id="thompsonsright"onkeypress="return validate(event)" value="${footexamdetails.thompsonsright}" name="thompsonsright"onInput="checkLength1(id);"></td></tr></tr>
         <tr><td>Great Toe Extension:</td><td>70</td><td>
         <input type="text" size="5" value="${footexamdetails.greattoeextensionleft}" name="greattoeextensionleft"id="greattoeextensionleft" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input size="5" type="text" value="${footexamdetails.greattoeextensionright}" name="greattoeextensionright"id="greattoeextensionright" onkeypress="return validate(event)"onInput="checkLength1(id);">
         <td width="90"></td><td>Drawer:		</td><td width="150"></td><td>
         <input type="text" size="5" onkeypress="return validate(event)" value="${footexamdetails.drawerleft}" name="drawerleft"id="drawerleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="text" size="5" onkeypress="return validate(event)" value="${footexamdetails.drawerright}" name="drawerright"id="drawerright"onInput="checkLength1(id);"></td></td></tr>
         <tr><td>Great Toe Flexion:	</td><td>45</td><td>
         <input type="text" size="5" value="${footexamdetails.greattoeflexionleft}" name="greattoeflexionleft" id="greattoeflexionleft"onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input size="5" type="text" value="${footexamdetails.greattoeflexionright}" name="greattoeflexionright"id="greattoeflexionright" onkeypress="return validate(event)"onInput="checkLength1(id);"></td>
         <td width="90"></td><td>Lateral (Varus) Stability:</td><td width="150"></td><td>
         <input type="text" size="5" onkeypress="return validate(event)" value="${footexamdetails.lateralleft}" name="lateralleft"id="lateralleft"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
         <input size="5" type="text" onkeypress="return validate(event)" value="${footexamdetails.lateralright}"  name="lateralright"id="lateralright"onInput="checkLength1(id);"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Medial (Valgus) Stability:</td><td width="150"></td><td>
          <input type="text" size="5" onkeypress="return validate(event)" name="medialstabilityleft" id="medialstabilityleft"value="${footexamdetails.medialstabilityleft}"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="text" size="5" onkeypress="return validate(event)" name="medialstabilityright" id="medialstabilityright"value="${footexamdetails.medialstabilityright}"onInput="checkLength1(id);"></td></tr>
          <tr><td id="tblbtn"><input type="button" id="btnNext" class="submit_btn" value="Next" onmouseover="checkValid(event);"/></td></tr>
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
	            ANKLE / FOOT 	REEXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr>
         <td width="130"><b style="font-size:14px">NEUROLOGICAL</b></td>
         <td width="246"><input type="checkbox"   <c:if test="${footexamdetails.neurological=='Neurological Testing Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> id=neurologicalunremarkable name="neurological" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td width="250">  <b> Sensory	</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Motor / Strength		</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Reflexes</b> (Muscle Spindles)	</td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td> </tr>
          <tr height="10"></tr>
           <tr><td>L1</td><td>
           <input type="text"  size="5" name="inguinalarealeft" id="inguinalarealeft"  value="${footexamdetails.inguinalarealeft}" onkeypress="return validate(event)"onInput="checkLength1(id);" >&nbsp;&nbsp;&nbsp;&nbsp;
           <input size="5" type="text" name="inguinalarearight" id="inguinalarearight"value="${footexamdetails.inguinalarearight}" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp; (Inguinal area)</td>
           <td>L1</td><td>
           <input size="5" type="text" name="iliopsoasfirstleft" id="iliopsoasfirstleft"onKeyPress="return check(id,event,value)" onInput="checkLength(id)"value="${footexamdetails.iliopsoasfirstleft}" >/5&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="text"  size="5" value="${footexamdetails.iliopsoasfirstright}" name="iliopsoasfirstright" id="iliopsoasfirstright" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp; (Iliopsoas)</td><td></td><td></td></tr>
           <tr><td>L2</td><td>
           <input size="5" type="text" name="antleft" id="antleft"value="${footexamdetails.antleft}" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
           <input size="5" type="text" name="antright" id="antright"value="${footexamdetails.antright}" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;(Ant/med thigh)</td><td>L2</td><td><input type="text"  value="${footexamdetails.iliopsoas1left}" name="iliopsoas1left" id="iliopsoas1left"size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footexamdetails.iliopsoas1right}" name="iliopsoas1right" id="iliopsoas1right" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;(Iliopsoas)</td><td></td><td>&nbsp;(2+/5 is Normal)</td></tr>
           <tr><td>L3</td><td>
           <input type="text" name="kneeleft" id="kneeleft"size="5" value="${footexamdetails.kneeleft}" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
           <input size="5" type="text" name="kneeright" id="kneeright"value="${footexamdetails.kneeright}" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;(Medial knee)</td><td>L3</td><td><input type="text" value="${footexamdetails.kneeextensionleft}" name="kneeextensionleft" id="kneeextensionleft" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footexamdetails.kneeextensionright}" name="kneeextensionright" id="kneeextensionright" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;(Knee extension)</td><td></td><td>&nbsp; </td></tr>
           <tr><td>L4</td><td><input type="text" size="5" name="medialleft" id="medialleft"value="${footexamdetails.medialleft}" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
           <input  size="5"type="text" name="medialright"id="medialright" value="${footexamdetails.medialright}" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;(Medial leg)</td><td>L4</td><td><input type="text" value="${footexamdetails.kneeflexionleft}" name="kneeflexionleft" id="kneeflexionleft" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${footexamdetails.kneeflexionright}"name="kneeflexionright" id="kneeflexionright" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;(Knee flexion)</td><td>L4</td><td><input type="text" name="patellarleft" id="patellarleft" size="5" value="${footexamdetails.patellarleft}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  value="${footexamdetails.patellarright}"name="patellarright" id="patellarright" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;Patellar</td></tr>
            <tr><td>L5</td><td>
            <input type="text" size="5" name="latleft"  id="latleft"value="${footexamdetails.latleft}" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" size="5" name="latright"  id="latright"value="${footexamdetails.latright}" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;(Ant/lat leg)</td><td>L5</td><td><input type="text" name="dorsiflexionleft1" id="dorsiflexionleft1" value="${footexamdetails.dorsiflexionleft1}" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"  type="text"  value="${footexamdetails.dorsiflexionright1}" name="dorsiflexionright1" id="dorsiflexionright1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;(Dorsiflexion)</td><td>L5</td><td><input type="text" name="hsleft" id="hsleft" size="5" value="${footexamdetails.hsleft}" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="hsright" id="hsright" value="${footexamdetails.hsright}" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;Med HS</td></tr>
            <tr><td>S1</td><td><input size="5" type="text" name="plantarleft" id="plantarleft" value="${footexamdetails.plantarleft}" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;&nbsp;&nbsp;
            <input size="5" type="text" name="plantarright" id="plantarright"value="${footexamdetails.plantarright}" onkeypress="return validate(event)"onInput="checkLength1(id);">&nbsp;&nbsp;(Big toe/plantar)</td><td>S1</td><td><input type="text" name="pfleft" id="pfleft" value="${footexamdetails.pfleft}" size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text"  value="${footexamdetails.pfright}"name="pfright" id="pfright" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;(Grt toe ext, PF)</td><td>S1</td><td><input type="text" name="achillesleft" id="achillesleft" value="${footexamdetails.achillesleft}"size="5" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footexamdetails.achillesright}" name="achillesright" id="achillesright" onKeyPress="return check(id,event,value)" onInput="checkLength(id)">/5&nbsp;&nbsp;Achilles</td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><input type="checkbox"  <c:if test="${footexamdetails.walking=='walking'}"> <c:out value="checked=checked"></c:out></c:if> name="walking" value="walking">Walking</td><td width="110"><input type="checkbox" name="standing"  <c:if test="${footexamdetails.standing=='standing'}"> <c:out value="checked=checked"></c:out></c:if> value="standing"> Standing</td><td width="70"><input type="checkbox" name="stairs"  <c:if test="${footexamdetails.stairs=='stairs'}"> <c:out value="checked=checked"></c:out></c:if> value="stairs">Stairs</td><td><input type="checkbox" id="other" name="other" value="other"  onclick="visible('this.value')" <c:if test="${footexamdetails.other=='other'}"> <c:out value="checked=checked"></c:out></c:if>>Other</td><td><input type="text" name="otherdefict" id="otherdefict" value="${footexamdetails.otherdefict}" onInput="return validatename(id);"style="display:none ">
           <span id="otherdeficterror" style="color:red"> </span>
           
           </td><td width="300"></td></tr>
           
           </table>
           <table>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><textarea rows="5" cols="50" id="comments" value="${footexamdetails.comments}"name="comments"onInput="return validatename1(id)";><c:out value="${footexamdetails.comments}"></c:out></textarea> 
           <br><span id="commentserror" style="color:red"></span>
             </td></tr>
           <tr height="10"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td><select name="patientstatus">
               <option  <c:if test="${footexamdetails.patientstatus=='Excellent'}"> <c:out value="selected"></c:out></c:if>  >Excellent</option> 
                 <option <c:if test="${footexamdetails.patientstatus=='Good'}"> <c:out value="selected"></c:out></c:if>> Good</option>  
                  <option <c:if test="${footexamdetails.patientstatus=='Fair'}"> <c:out value="selected"></c:out></c:if>> Fair</option> 
                    <option <c:if test="${footexamdetails.patientstatus=='Poor'}"> <c:out value="selected"></c:out></c:if>>Poor</option>               
               </select></td></tr>      
                </table>
                </br>
                <table width="100%">
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">
           1)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis1"id="diagnosis1" onInput="return validatename(id)"; value="${footexamdetails.diagnosis1}"><br><span id="diagnosis1error" style="color:red"></span><td width="250">
           2)&nbsp;&nbsp;&nbsp;<input type="text" value="${footexamdetails.diagnosis2}" id="diagnosis2"name="diagnosis2"onInput="return validatename(id)";><br><span id="diagnosis2error" style="color:red"></span></td><td width="250">
           3)&nbsp;&nbsp;&nbsp;<input type="text"  value="${footexamdetails.diagnosis3}"id="diagnosis3" name="diagnosis3"onInput="return validatename(id)";><br><span id="diagnosis3error" style="color:red"></span></td><td width="250">
           4)&nbsp;&nbsp;&nbsp;<input type="text" value="${footexamdetails.diagnosis4}"id="diagnosis4"name="diagnosis4"onInput="return validatename(id)";><br><span id="diagnosis4error" style="color:red"></span></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" value="${footexamdetails.diagnosis5}" name="diagnosis5" id="diagnosis5" onInput="return validatename(id)";><br><span id="diagnosis5error" style="color:red"></span></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
           <input type="text" name="times" id="times" value="${footexamdetails.times}"onInput="return validatename3(id)";>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b>
           <input type="text" value="${footexamdetails.weeks}"  name="weeks" id="weeks"onInput="return validatename2(id)";>&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><input type="checkbox"  <c:if test="${footexamdetails.spinaldecompression=='Spinal Decompression'}"> <c:out value="checked=checked"></c:out></c:if> name="spinaldecompression" value="Spinal Decompression">Spinal Decompression</td><td width="100"><input type="checkbox" name="chiropractic"  <c:if test="${footexamdetails.chiropractic=='Chiropractic'}"> <c:out value="checked=checked"></c:out></c:if> value="Chiropractic">Chiropractic</td>
           <td width="150"><input type="checkbox" name="physicaltherapy"   <c:if test="${footexamdetails.physicaltherapy=='Physical Therapy'}"> <c:out value="checked=checked"></c:out></c:if> value="Physical Therapy">Physical Therapy</td><td width="150"><input type="checkbox"  <c:if test="${footexamdetails.bracing=='Orthotics/Bracing'}"> <c:out value="checked=checked"></c:out></c:if>  name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
           <td width="150"><input type="checkbox" name="modalities"   <c:if test="${footexamdetails.modalities=='Modalities'}"> <c:out value="checked=checked"></c:out></c:if> value="Modalities">Modalities</td> <td width="150"><input type="checkbox" name="supplementation"  <c:if test="${footexamdetails.supplementation=='Supplementation'}"> <c:out value="checked=checked"></c:out></c:if>  value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep"  <c:if test="${footexamdetails.hep=='HEP'}"> <c:out value="checked=checked"></c:out></c:if>  value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic"   <c:if test="${footexamdetails.radiographic=='Radiographic X-Ray'}"> <c:out value="checked=checked"></c:out></c:if> value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri"   <c:if test="${footexamdetails.mri=='MRI'}"> <c:out value="checked=checked"></c:out></c:if> value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan"  <c:if test="${footexamdetails.scan=='CT Scan'}"> <c:out value="checked=checked"></c:out></c:if> value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction"  <c:if test="${footexamdetails.conduction=='Nerve Conduction'}"> <c:out value="checked=checked"></c:out></c:if>  value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg"  <c:if test="${footexamdetails.emg=='EMG'}"> <c:out value="checked=checked"></c:out></c:if> value="EMG"	>EMG	</td> <td width="150"><input type="checkbox"   <c:if test="${footexamdetails.outsidereferral=='Outside Referral'}"> <c:out value="checked=checked"></c:out></c:if> name="outsidereferral" value="Outside Referral">Outside Referral 	</td><td><input type="checkbox"  <c:if test="${footexamdetails.dc=='D/C'}"> <c:out value="checked=checked"></c:out></c:if>  name="dc" value="D/C">D/C</td>
           </tr>   
            <tr height="10"></tr>
           <tr><td width="95"></td><td width="160">
           <input type="checkbox" id="others" name="others" <c:if test="${footexamdetails.others=='other'}"> <c:out value="checked=checked"></c:out></c:if> value="other" onclick="othervisible('this.value')">Other</td><td><input type="text" name="othervalue" value="${footexamdetails.othervalue}" id="othervalue" onInput="return validatename(id)";style="display:none ">
           <span id="otherserror" style="color:red"></span>
           </td></tr>   
                      
           </table>
           </br>
           <div><B style="font-size:14px"><span class="err">*</span> PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="signature" id="sign" value="${footexamdetails.signature}"onInput="return validatename(id)";><br><span class="err" id="signerror"><form:errors path="footexamdetails.signature"></form:errors></div>
           
         
        <table align="right"><tr><td><input type="submit" value="Update" class="submit_btn" onclick="return checkSubmit1('this');"></td><td> <a href="viewfootexam" style="color: white" class="submit_btn" onclick="myclose()">Cancel</a></td></tr></table>
         
         </div></td></tr></table></div></div></div>
         
         <script>
 function myclose()
 {
	 window.close();
 }
 </script>
         
     <script type="text/javascript">
function validatename(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}  
function validatename1(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[]/g, "");
    document.getElementById(id).value = textInput;
}  
function validatename2(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^0-9 ]/g, "");
    document.getElementById(id).value = textInput;
    var fieldVal = document.getElementById(id).value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=52){
        return true;
    }
    else
    {
        var str = document.getElementById(id).value;
       
        str = str.substring(0, str.length - 1);
    document.getElementById(id).value = str;
    }
     
   
     
}  
function validatename3(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^0-9 ]/g, "");
    document.getElementById(id).value = textInput;
    
    var fieldVal = document.getElementById(id).value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=100){
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
$(function() {
	$("#pname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#datepicker").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#muscle").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#swelling").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#note").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#comments").on("keypress", function(e) {
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
	$("#weeks").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#othervalue").on("keypress", function(e) {
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
	$("#otherdefict").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
</script>
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            