<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>


<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <link rel="stylesheet" href="/resources/css/style.css" />
 <script src="resources/js/jquery.js"></script> 
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
 <c:if test="${quadruple==1}">
 <script>
 window.close();
 </script>
</c:if>
 
 <script type="text/javascript">
 function doAjaxPost() {
	 document.getElementById("page").style.display="block";
	 var painintensity=0;
	 if($("input[type='radio'].painintensity").is(':checked')) {
		     painintensity = $("input[type='radio'].painintensity:checked").val();		    
		}
	// var painintensity=$('input[name=painintensity]:radio').click(function() {var value = $(this).val();});
	 //var painintensity = $('#painintensity').val();
	 //alert(painintensity);
	 var work =0;
	 if($("input[type='radio'].work").is(':checked')) {
	     work = $("input[type='radio'].work:checked").val();		    
	}
	 var numbness =0;
	 if($("input[type='radio'].numbness").is(':checked')) {
		 numbness = $("input[type='radio'].numbness:checked").val();		    
	}
	 var driving = 0;
	 if($("input[type='radio'].driving").is(':checked')) {
		 driving = $("input[type='radio'].driving:checked").val();		    
	}
	 var personal = 0;
	 if($("input[type='radio'].personal").is(':checked')) {
		 personal = $("input[type='radio'].personal:checked").val();		    
	}
	 var sleeping = 0;
	 if($("input[type='radio'].sleeping").is(':checked')) {
		 sleeping = $("input[type='radio'].sleeping:checked").val();		    
	}
	 var strength = 0;
	 if($("input[type='radio'].strength").is(':checked')) {
		 strength = $("input[type='radio'].strength:checked").val();		    
	}
	 var house = 0;
	 if($("input[type='radio'].house").is(':checked')) {
		 house = $("input[type='radio'].house:checked").val();		    
	}
	 var writing = 0;
	 if($("input[type='radio'].writing").is(':checked')) {
		 writing = $("input[type='radio'].writing:checked").val();		    
	}
	 var recreation = 0;
	 if($("input[type='radio'].recreation").is(':checked')) {
		 recreation = $("input[type='radio'].recreation:checked").val();		    
	}
	 var total=parseInt(painintensity)+parseInt(work)+parseInt(numbness)+parseInt(driving)+parseInt(personal)+parseInt(sleeping)+parseInt(strength)+parseInt(house)+parseInt(writing)+parseInt(recreation);
	 document.getElementById("score").value=total;
	 document.getElementById("score1").innerHTML=total;
	 
	 var percentage=document.getElementById("score").value;
	 var div=percentage/50;
	
	 document.getElementById("total").value=div;
	
	 document.getElementById("total1").innerHTML=div;
		    }
		  
 </script>
 <script type="text/javascript">
 function percentage()
 {
	 var percentage=document.getElementById("score").value;
	 var div=percentage/50;
	
	 document.getElementById("total").value=div;
	
	 document.getElementById("total1").innerHTML=div;
 }
 
 
 </script>
 <script>
$(function() {
    $( "#slider" ).slider({
      value:document.getElementById("amount").value,
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

</script>
 
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
  $(function() {
	$("#pname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
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

<br><br>	     
<form action="insertwristindex" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div id="block1">
	            <div class="headings altheading">
	             <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	            <center> <h2>
	                  WRIST/HAND DISABILITY INDEX </h2></center><br/>
	            
	            </div>
	  <input type="hidden" name="symptom" id="symptom" value="${symptom}">   
	  <input type="hidden" name="username" id="username">      
	    
	     <div class="contentbox">
	     <c:choose>
	     	     <c:when test="${empty wristdisability}">
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="140"><span class="err">* </span>Name</td>
           <td><input type="text" name="name" id="pname" onInput="return validatename(id)";><br><span class="err" id="pnameerror"><form:errors path="wristindexdetails.name"></form:errors></td><td width="480"></td><td></td><td width="100"></td>
           <td >&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">* </span>Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker">
           <br><span class="err" id="datepickererror"><form:errors path="wristindexdetails.date"></form:errors></td>
           </tr>
          
            </table>
            </br>
            <p>This questionairre has been designed to give the doctor information as to how your neck pain has affected your ability to manage in everyday life.Please answer every section and mark in each section only the ONE box which applies to you.We realize you may consider that two of the statements in any one section relate to you,but please just mark the box which most closely describes your problem.</p>
           <table>
           <tr ><td width="500"><b>Section 1-Pain intensity</b></td><td width="500"><b>Section 6-Work</b></td></tr>
           <tr><td><input type="radio" class="painintensity" id="painintensity" name="painintensity" onclick="doAjaxPost()" value="0">&nbsp;&nbsp;I have no pain in my wrist/hand</td>
           <td><input type="radio" name="work" class="work" id="work" value="0" onclick="doAjaxPost()">&nbsp;&nbsp;I can do as much work as I want to without symptoms</td>
           </tr>
           <tr><td><input type="radio" class="painintensity" id="painintensity" name="painintensity" onclick="doAjaxPost()" value="1">&nbsp;&nbsp;The pain in my wrist/hand is intermittent or mild</td>
           <td><input type="radio" name="work" class="work" id="work" onclick="doAjaxPost()" value="1">&nbsp;&nbsp;I can do all of my usual work,but it increases my symptoms</td>
           </tr>
<tr><td><input type="radio" name="painintensity"  class="painintensity" onclick="doAjaxPost()" id="painintensity" value="2">&nbsp;&nbsp;The pain in my wrist/hand is mild but constant</td>
           <td><input type="radio" id="work" class="work" name="work" onclick="doAjaxPost()" value="2">&nbsp;&nbsp;I can do all of my usual work,but it increases my symptoms</td>
           </tr>
           <tr><td><input type="radio"  class="painintensity" onclick="doAjaxPost()"  name="painintensity" id="painintensity" value="3">&nbsp;&nbsp;The pain in my wrist/hand is constant and moderately limits use of the arm</td>
           <td><input type="radio" name="work" class="work"  onclick="doAjaxPost()" id="work" value="3">&nbsp;&nbsp;I can do about half of usual work because of my symptoms</td>
           </tr>
           <tr><td><input type="radio" name="painintensity"  onclick="doAjaxPost()"  class="painintensity"  id="painintensity" value="4">&nbsp;&nbsp;The pain in my wrist/hand is constant and severely limits us of that arm</td>
           <td><input type="radio" name="work" class="work" onclick="doAjaxPost()"  id="work" value="4">&nbsp;&nbsp;I can hardly do any work at all because of my wrist/hand symptoms</td>
           </tr>
           <tr><td><input type="radio" name="painintensity" onclick="doAjaxPost()" class="painintensity" id="painintensity" value="5">&nbsp;&nbsp;The pain in my wrist/hand is constant ,and I am unable to use that arm</td>
           <td><input type="radio" name="work" id="work" onclick="doAjaxPost()" class="work" value="5">&nbsp;&nbsp;I can't do any work at all because of my wrist/hand symptoms</td>
           </tr>
           <tr height="10"></tr>
           <tr ><td ><b>Section 2-Numbness & Tingling</b></td><td ><b>Section 7-Driving</b></td></tr>
           <tr><td><input type="radio" name="numbness" id="numbness" onclick="doAjaxPost()" class="numbness" value="0">&nbsp;&nbsp;I have no numbness or tingling in my wrist/hand</td>
           <td><input type="radio" name="driving" id="driving" onclick="doAjaxPost()" class="driving" value="0">&nbsp;&nbsp;I can drive my car without any wrist/hand symptoms</td>
           </tr>
           <tr><td><input type="radio" name="numbness" onclick="doAjaxPost()"  id="numbness" class="numbness" value="1">&nbsp;&nbsp;The numbness or tingling in my wrist/hand is intermittent</td>
           <td><input type="radio" name="driving"  onclick="doAjaxPost()" id="driving"  class="driving" value="1">&nbsp;&nbsp;I can drive my car as long as I want,but it increases my symptoms</td>
           </tr>
           <tr><td><input type="radio" name="numbness" onclick="doAjaxPost()"  id="numbness" class="numbness" value="2">&nbsp;&nbsp;The numbness or tingling in my wrist/hand is constant but does not limit use of that arm </td>
           <td><input type="radio" name="driving" onclick="doAjaxPost()"  id="driving" class="driving"  value="2">&nbsp;&nbsp;I can drive my car for 31-60 minutes before my wrist/hand symptoms increase</td>
           </tr>
           <tr><td><input type="radio" name="numbness"  onclick="doAjaxPost()" id="numbness"  class="numbness" value="3">&nbsp;&nbsp;The numbness or tingling in my wrist/hand is constant and moderately limits use of that arm</td>
           <td><input type="radio" name="driving"  onclick="doAjaxPost()" id="driving" class="driving"  value="3">&nbsp;&nbsp;I can drive my car for 11-30 minutes before my wrist/hand symptoms increase</td>
           </tr>
           <tr><td><input type="radio" name="numbness" onclick="doAjaxPost()"  id="numbness"  class="numbness" value="4">&nbsp;&nbsp;The numbness or tingling in my wrist/hand is constant and severely limits use of that arm</td>
           <td><input type="radio" name="driving"  onclick="doAjaxPost()" id="driving"  class="driving" value="4">&nbsp;&nbsp;I can drive my car for only 10 minutes or less before my wrist/hand symptoms increase</td>
           </tr>
           <tr><td><input type="radio" name="numbness" id="numbness" onclick="doAjaxPost()"  class="numbness" value="5">&nbsp;&nbsp;Due to constant numbness or tingling in my wrist/hand,I am unable to use that arm</td>
           <td><input type="radio" name="driving"  id="driving"  onclick="doAjaxPost()"class="driving" value="5">&nbsp;&nbsp;I am unable to use that arm for driving</td>
           </tr>
           <tr height="10"></tr>
           <tr ><td ><b>Section 3-Personal Care(Washing,Dressing,etc)</b></td><td ><b>Section 8-Sleeping</b></td></tr>
           <tr><td><input type="radio" id="personal" name="personal" onclick="doAjaxPost()" class="personal" value="0">&nbsp;&nbsp;I can look after myself normally without any symptoms</td>
           <td><input type="radio"  id="sleeping" class="sleeping" onclick="doAjaxPost()" name="sleeping" value="0">&nbsp;&nbsp;I have no trouble sleeping</td>
           </tr>
           <tr><td><input type="radio" id="personal" name="personal" onclick="doAjaxPost()" class="personal"  value="1">&nbsp;&nbsp;I can look after myself normally but it causes increased symptoms</td>
           <td><input type="radio"  id="sleeping" class="sleeping" onclick="doAjaxPost()"  name="sleeping" value="1">&nbsp;&nbsp;My sleep is slightly disturbed by wrist/hand symptoms(It wakes me 1 time/night)</td>
           </tr>
          <tr><td><input type="radio" id="personal" name="personal" onclick="doAjaxPost()"  class="personal" value="2">&nbsp;&nbsp;It is uncomfortable to look after myself,and I am slow and careful</td>
           <td><input type="radio"  id="sleeping" class="sleeping"  onclick="doAjaxPost()" name="sleeping" value="2">&nbsp;&nbsp;My sleep is mildly disturbed by wrist/hand symptoms(It wakes me 2 times/night)</td>
           </tr>
            <tr><td><input type="radio" id="personal"  onclick="doAjaxPost()" name="personal" class="personal" value="3">&nbsp;&nbsp;I can only partially use my wrist/hand and sometimes use the other side instead</td>
           <td><input type="radio" id="sleeping" onclick="doAjaxPost()" class="sleeping"  name="sleeping" value="3">&nbsp;&nbsp;My sleep is moderately disturbed by wrist/hand symptoms(It wakes me 3-4 times/night)</td>
           </tr>
            <tr><td><input type="radio" id="personal" name="personal" onclick="doAjaxPost()" class="personal" value="4">&nbsp;&nbsp;I can only partially use my wrist/hand and mostly use the other side</td>
           <td><input type="radio"  id="sleeping" class="sleeping" onclick="doAjaxPost()"  name="sleeping" value="4">&nbsp;&nbsp;My sleep is greatly disturbed by wrist/hand symptoms(It wakes me 5-6 times/night)</td>
           </tr>
            <tr><td><input type="radio"  id="personal" name="personal"  onclick="doAjaxPost()" class="personal" value="5">&nbsp;&nbsp;I am unable to use my wrist/hand for any personal care and always use the other side</td>
           <td><input type="radio"  id="sleeping" class="sleeping" onclick="doAjaxPost()" name="sleeping" value="5">&nbsp;&nbsp;My sleep is completely disturbed by wrist/hand symptoms(It wakes me 7-8 times/night or more)</td>
           </tr>
           
           <tr height="10"></tr>
           <tr ><td ><b>Section 4-Strength</b></td><td ><b>Section 9-House & Yard Work</b></td></tr>
           
           <tr><td><input type="radio" name="strength" class="strength"  onclick="doAjaxPost()"  id="strength" value="0">&nbsp;&nbsp;I can lift the heaviest weights I need to without symptoms</td>
           <td><input type="radio" name="house" class="house" id="house"  onclick="doAjaxPost()" value="0">&nbsp;&nbsp;I have no wrist/hand limitations with house or yard work</td>
           </tr>
            <tr><td><input type="radio" name="strength" class="strength" onclick="doAjaxPost()"  id="strength" value="1">&nbsp;&nbsp;I can lift the heavy weights,but it increases my wrist/hand symptoms</td>
           <td><input type="radio" name="house"  class="house" id="house"  onclick="doAjaxPost()" value="1">&nbsp;&nbsp;I am able to do all house & yard work necessary if I take breaks</td>
           </tr>
            <tr><td><input type="radio" name="strength" class="strength" onclick="doAjaxPost()" id="strength" value="2">&nbsp;&nbsp;My wrist/hand symptoms prevent me from lifting more than moderate weights(ex:a gallon of milk)</td>
           <td><input type="radio" name="house"  class="house" id="house" onclick="doAjaxPost()" value="2">&nbsp;&nbsp;I am to do all house & yard work necessary,but it increases my wrist/hand symptoms</td>
           </tr>
            <tr><td><input type="radio" name="strength" class="strength"  onclick="doAjaxPost()" id="strength" value="3">&nbsp;&nbsp;My wrist/hand symptoms prevent me from safely lifting more than light weights(ex:a dish or book)</td>
           <td><input type="radio" name="house" class="house" id="house" onclick="doAjaxPost()" value="3">&nbsp;&nbsp;I am able to do some,but not all ,house & yard work;it increases my wrist/hand symptoms</td>
           </tr>
            <tr><td><input type="radio" name="strength" id="strength" onclick="doAjaxPost()" class="strength" value="4">&nbsp;&nbsp;I frequently drop even light objects due to weakness in my wrist/hand</td>
           <td><input type="radio" name="house" class="house"  onclick="doAjaxPost()" id="house" value="4">&nbsp;&nbsp;I am able to do only the minimum of house & yard work because of my wrist/hand symptoms</td>
           </tr>
             <tr><td><input type="radio" name="strength" id="strength" onclick="doAjaxPost()" class="strength" value="5">&nbsp;&nbsp;I avoid lifting anything with my involved hand</td>
           <td><input type="radio" name="house" class="house" id="house" onclick="doAjaxPost()"  value="5">&nbsp;&nbsp;I am unable to do any house or yard work because of my symptoms</td>
           </tr>
            <tr height="10"></tr>
           <tr ><td ><b>Section 5 - Writing/Typing tolerance</b></td><td ><b>Section 10- Recreation/Sports</b></td></tr>
           
           <tr><td><input type="radio"  id="writing" class="writing" onclick="doAjaxPost()"  name="writing" value="0">&nbsp;&nbsp;I can write or type as long as I need to without symptoms</td>
           <td><input type="radio"  id="recreation" class="recreation" onclick="doAjaxPost()"  name="recreation" value="0">&nbsp;&nbsp;I am able to engage in all my recreation/sports activities with no wrist/hand symptoms</td>
           </tr>
            <tr><td><input type="radio"  id="writing" class="writing" onclick="doAjaxPost()" name="writing" value="1">&nbsp;&nbsp;I can write or type for as long as I want,but it increases my symptoms</td>
           <td><input type="radio" id="recreation" class="recreation" onclick="doAjaxPost()" name="recreation" value="1">&nbsp;&nbsp;I am able to engage in all my recreation/sports activities with some symptoms in my wrist/hand</td>
           </tr>
           <tr><td><input type="radio"  id="writing" class="writing" onclick="doAjaxPost()" name="writing" value="2">&nbsp;&nbsp;I can write or type for 31-60 minutes before my wrist/hand symptoms increase</td>
           <td><input type="radio"  id="recreation" class="recreation" onclick="doAjaxPost()"  name="recreation" value="2">&nbsp;&nbsp;I am able to engage in most,but not all,of my usual recreation/sports activities because of my symptoms</td>
           </tr>
           <tr><td><input type="radio"  id="writing" class="writing" onclick="doAjaxPost()"  name="writing" value="3">&nbsp;&nbsp;I can write or type for 11-30 minutes before my wrist/hand symptoms increase</td>
           <td><input type="radio"  id="recreation" class="recreation" onclick="doAjaxPost()"  name="recreation" value="3">&nbsp;&nbsp;I am able to engage in few of  my usual recreation/sports activities because of my symptoms in my wrist/hand</td>
           </tr>
           <tr><td><input type="radio" id="writing" class="writing" onclick="doAjaxPost()"  name="writing" value="4">&nbsp;&nbsp;I can write or type for only 10 minutes or less before my wrist/hand symptoms increase</td>
           <td><input type="radio"  id="recreation" class="recreation" onclick="doAjaxPost()"  name="recreation" value="4">&nbsp;&nbsp;I can hardly do any recreation/sports activities because of my symptoms in my wrist/hand</td>
           </tr>
            <tr><td><input type="radio"  id="writing" class="writing" onclick="doAjaxPost()" name="writing" value="5">&nbsp;&nbsp;I am unable to write or type using my involved hand/wrist</td>
           <td><input type="radio" id="recreation" class="recreation" onclick="doAjaxPost()" name="recreation" value="5">&nbsp;&nbsp;I am unable to do any recreation/sports activities because of my symptoms in my wrist/hand</td>
           </tr>
           </table>
           <P>Please mark on the line below the pain you have had in the past 24 hours.Use the line as a scale to mark the level of your pain from no pain to the worst</P>
           <table><tr><td>No pain at all</td>
           <td><label for="amount"><b>Pain Scale:</b></label>
	 <input type="text" id="amount" value="1"style="border:0; color:#f6931f; font-weight:bold;" name="painscale" /><span id="amounterr"></span>&nbsp;&nbsp;&nbsp;
 <div id="slider" style="width: 358px; "></div></td><td>Worst possible pain</td></tr></table>
           <table><tr><td><a  onclick="return doAjaxPost()" style="text-decoration: underline; cursor:pointer;color: brown" ><b>Disability of patient score</b></td></tr>
           
           </table>
           <table style="display: none" id="page"><tr><td><input type="hidden"  size="5" name="score" id="score"> </td><td width="10"><div id="score1"></div></td><td width="10">/&nbsp;&nbsp;&nbsp;&nbsp;50&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden"  size="5" name="total" id="total"></td><td ><div id="total1"></div></td><td width="50">%</td>
          <!-- <td><input type="button" value="Calculate" onclick="return percentage()" class="submit_btn"> </td> -->
           </tr>          
                     
           </table>
           </c:when>
           <c:otherwise>
           <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="140"><span class="err">*</span>Name</td>
           <td><input type="hidden" name="wristindexno" class="input_txt" value="${wristdisability.wristindexno}"><input type="text" name="name" class="input_txt" value="${wristdisability.name}"><br><span class="err"><form:errors path="wristindexdetails.name"></form:errors></td><td width="480"></td><td></td><td width="100"></td>
           <td >&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span>Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker" value="${wristdisability.date}"><br><span class="err"><form:errors path="wristindexdetails.date"></form:errors></td>
           </tr>
          
            </table>
            </br>
            <p><b>Please read:</b>This questionairre has been designed to give the Physical Therapist information as to how your wrist/hand pain has affected your ability to manage everyday life.</p>
           <table>
           <tr ><td width="300"><b>Section 1-Pain intensity</b></td><td width="300"><b>Section 6-Work</b></td></tr>
           <tr><td><input type="radio" class="painintensity" id="painintensity" onclick="doAjaxPost()" <c:if test= "${wristdisability.painintensity== '0'}"> <c:out value="checked"></c:out></c:if> name="painintensity" value="0">&nbsp;&nbsp;I have no pain in my wrist/hand</td>
           <td><input type="radio" name="work" onclick="doAjaxPost()"  <c:if test="${wristdisability.work=='0'}"> <c:out value="checked"></c:out></c:if> class="work" id="work" value="0">&nbsp;&nbsp;I can do as much work as I want to without symptoms</td>
           </tr>
           <tr><td><input type="radio" class="painintensity"  onclick="doAjaxPost()" id="painintensity"  <c:if test="${wristdisability.painintensity=='1'}"> <c:out value="checked"></c:out></c:if> name="painintensity" value="1">&nbsp;&nbsp;The pain in my wrist/hand is intermittent or mild</td>
           <td><input type="radio" name="work" class="work" onclick="doAjaxPost()" id="work" value="1" <c:if test="${wristdisability.work=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;I can do all of my usual work,but it increases my symptoms</td>
           </tr>
<tr><td><input type="radio" name="painintensity"  onclick="doAjaxPost()" class="painintensity" id="painintensity" <c:if test="${wristdisability.painintensity=='2'}"> <c:out value="checked"></c:out></c:if> value="2">&nbsp;&nbsp;The pain in my wrist/hand is mild but constant</td>
           <td><input type="radio" id="work" onclick="doAjaxPost()" class="work" name="work" value="2" <c:if test="${wristdisability.work=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;I can do all of my usual work,but it increases my symptoms</td>
           </tr>
           <tr><td><input type="radio" onclick="doAjaxPost()"  class="painintensity" name="painintensity" id="painintensity" <c:if test="${wristdisability.painintensity=='3'}"> <c:out value="checked"></c:out></c:if> value="3">&nbsp;&nbsp;The pain in my wrist/hand is constant and moderately limits use of the arm</td>
           <td><input type="radio" name="work" class="work" onclick="doAjaxPost()" id="work" value="3" <c:if test="${wristdisability.work=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;I can do about half of usual work because of my symptoms</td>
           </tr>
           <tr><td><input type="radio" name="painintensity" onclick="doAjaxPost()"   class="painintensity" <c:if test="${wristdisability.painintensity=='4'}"> <c:out value="checked"></c:out></c:if> id="painintensity" value="4">&nbsp;&nbsp;The pain in my wrist/hand is constant and severely limits us of that arm</td>
           <td><input type="radio" name="work" class="work" onclick="doAjaxPost()" id="work" <c:if test="${wristdisability.work=='4'}"> <c:out value="checked"></c:out></c:if>  value="4">&nbsp;&nbsp;I can hardly do any work at all because of my wrist/hand symptoms</td>
           </tr>
           <tr><td><input type="radio" name="painintensity" onclick="doAjaxPost()" class="painintensity" <c:if test="${wristdisability.painintensity=='5'}"> <c:out value="checked"></c:out></c:if>  id="painintensity" value="5">&nbsp;&nbsp;The pain in my wrist/hand is constant ,and I am unable to use that arm</td>
           <td><input type="radio" name="work" id="work" onclick="doAjaxPost()" class="work" <c:if test="${wristdisability.work=='5'}"> <c:out value="checked"></c:out></c:if> value="5">&nbsp;&nbsp;I can't do any work at all because of my wrist/hand symptoms</td>
           </tr>
           <tr height="10"></tr>
           <tr ><td ><b>Section 2-Numbness & Tingling</b></td><td ><b>Section 7-Driving</b></td></tr>
           <tr><td><input type="radio" name="numbness" id="numbness" onclick="doAjaxPost()" <c:if test="${wristdisability.numbness=='0'}"> <c:out value="checked"></c:out></c:if> class="numbness" value="0">&nbsp;&nbsp;I have no numbness or tingling in my wrist/hand</td>
           <td><input type="radio" name="driving" id="driving" onclick="doAjaxPost()"  class="driving" <c:if test="${wristdisability.driving=='0'}"> <c:out value="checked"></c:out></c:if> value="0">&nbsp;&nbsp;I can drive my car without any wrist/hand symptoms</td>
           </tr>
           <tr><td><input type="radio" name="numbness" id="numbness" onclick="doAjaxPost()"  class="numbness" <c:if test="${wristdisability.numbness=='1'}"> <c:out value="checked"></c:out></c:if> value="1">&nbsp;&nbsp;The numbness or tingling in my wrist/hand is intermittent</td>
           <td><input type="radio" name="driving"  id="driving"  onclick="doAjaxPost()" class="driving" <c:if test="${wristdisability.driving=='1'}"> <c:out value="checked"></c:out></c:if>  value="1">&nbsp;&nbsp;I can drive my car as long as I want,but it increases my symptoms</td>
           </tr>
           <tr><td><input type="radio" name="numbness" id="numbness" onclick="doAjaxPost()" class="numbness" <c:if test="${wristdisability.numbness=='2'}"> <c:out value="checked"></c:out></c:if>  value="2">&nbsp;&nbsp;The numbness or tingling in my wrist/hand is constant but does not limit use of that arm </td>
           <td><input type="radio" name="driving"  id="driving" onclick="doAjaxPost()" class="driving" <c:if test="${wristdisability.driving=='2'}"> <c:out value="checked"></c:out></c:if>  value="2">&nbsp;&nbsp;I can drive my car for 31-60 minutes before my wrist/hand symptoms increase</td>
           </tr>
           <tr><td><input type="radio" name="numbness" id="numbness"  class="numbness" onclick="doAjaxPost()"  <c:if test="${wristdisability.numbness=='3'}"> <c:out value="checked"></c:out></c:if> value="3">&nbsp;&nbsp;The numbness or tingling in my wrist/hand is constant and moderately limits use of that arm</td>
           <td><input type="radio" name="driving"  id="driving" class="driving"  onclick="doAjaxPost()" <c:if test="${wristdisability.driving=='3'}"> <c:out value="checked"></c:out></c:if> value="3">&nbsp;&nbsp;I can drive my car for 11-30 minutes before my wrist/hand symptoms increase</td>
           </tr>
           <tr><td><input type="radio" name="numbness" id="numbness" onclick="doAjaxPost()"  class="numbness" <c:if test="${wristdisability.numbness=='4'}"> <c:out value="checked"></c:out></c:if>  value="4">&nbsp;&nbsp;The numbness or tingling in my wrist/hand is constant and severely limits use of that arm</td>
           <td><input type="radio" name="driving"  id="driving"  onclick="doAjaxPost()" class="driving" <c:if test="${wristdisability.driving=='4'}"> <c:out value="checked"></c:out></c:if>  value="4">&nbsp;&nbsp;I can drive my car for only 10 minutes or less before my wrist/hand symptoms increase</td>
           </tr>
           <tr><td><input type="radio" name="numbness" onclick="doAjaxPost()"  id="numbness" <c:if test="${wristdisability.numbness=='5'}"> <c:out value="checked"></c:out></c:if>  class="numbness" value="5">&nbsp;&nbsp;Due to constant numbness or tingling in my wrist/hand,I am unable to use that arm</td>
           <td><input type="radio" name="driving" onclick="doAjaxPost()"  id="driving"  class="driving" <c:if test="${wristdisability.driving=='5'}"> <c:out value="checked"></c:out></c:if> value="5">&nbsp;&nbsp;I am unable to use that arm for driving</td>
           </tr>
           <tr height="10"></tr>
           <tr ><td ><b>Section 3-Personal Care(Washing,Dressing,etc)</b></td><td ><b>Section 8-Sleeping</b></td></tr>
           <tr><td><input type="radio" id="personal" name="personal" onclick="doAjaxPost()" <c:if test="${wristdisability.personal=='0'}"> <c:out value="checked"></c:out></c:if> class="personal" value="0">&nbsp;&nbsp;I can look after myself normally without any symptoms</td>
           <td><input type="radio"  id="sleeping" class="sleeping" onclick="doAjaxPost()"   <c:if test="${wristdisability.sleeping=='0'}"> <c:out value="checked"></c:out></c:if> name="sleeping" value="0">&nbsp;&nbsp;I have no trouble sleeping</td>
           </tr>
           <tr><td><input type="radio" id="personal" name="personal" onclick="doAjaxPost()" <c:if test="${wristdisability.personal=='1'}"> <c:out value="checked"></c:out></c:if> class="personal"  value="1">&nbsp;&nbsp;I can look after myself normally but it causes increased symptoms</td>
           <td><input type="radio"  id="sleeping" class="sleeping"  onclick="doAjaxPost()" <c:if test="${wristdisability.sleeping=='1'}"> <c:out value="checked"></c:out></c:if>  name="sleeping" value="1">&nbsp;&nbsp;My sleep is slightly disturbed by wrist/hand symptoms(It wakes me 1 time/night)</td>
           </tr>
          <tr><td><input type="radio" id="personal" name="personal" onclick="doAjaxPost()" <c:if test="${wristdisability.personal=='2'}"> <c:out value="checked"></c:out></c:if> class="personal" value="2">&nbsp;&nbsp;It is uncomfortable to look after myself,and I am slow and careful</td>
           <td><input type="radio"  id="sleeping" class="sleeping"  onclick="doAjaxPost()" <c:if test="${wristdisability.sleeping=='2'}"> <c:out value="checked"></c:out></c:if> name="sleeping" value="2">&nbsp;&nbsp;My sleep is mildly disturbed by wrist/hand symptoms(It wakes me 2 times/night)</td>
           </tr>
            <tr><td><input type="radio" id="personal"  name="personal"  onclick="doAjaxPost()" <c:if test="${wristdisability.personal=='3'}"> <c:out value="checked"></c:out></c:if> class="personal" value="3">&nbsp;&nbsp;I can only partially use my wrist/hand and sometimes use the other side instead</td>
           <td><input type="radio" id="sleeping" class="sleeping" onclick="doAjaxPost()"  <c:if test="${wristdisability.sleeping=='3'}"> <c:out value="checked"></c:out></c:if> name="sleeping" value="3">&nbsp;&nbsp;My sleep is moderately disturbed by wrist/hand symptoms(It wakes me 3-4 times/night)</td>
           </tr>
            <tr><td><input type="radio" id="personal" name="personal" onclick="doAjaxPost()" <c:if test="${wristdisability.personal=='4'}"> <c:out value="checked"></c:out></c:if> class="personal" value="4">&nbsp;&nbsp;I can only partially use my wrist/hand and mostly use the other side</td>
           <td><input type="radio"  id="sleeping" class="sleeping" onclick="doAjaxPost()" <c:if test="${wristdisability.sleeping=='4'}"> <c:out value="checked"></c:out></c:if> name="sleeping" value="4">&nbsp;&nbsp;My sleep is greatly disturbed by wrist/hand symptoms(It wakes me 5-6 times/night)</td>
           </tr>
            <tr><td><input type="radio"  id="personal" name="personal" onclick="doAjaxPost()" <c:if test="${wristdisability.personal=='5'}"> <c:out value="checked"></c:out></c:if>  class="personal" value="5">&nbsp;&nbsp;I am unable to use my wrist/hand for any personal care and always use the other side</td>
           <td><input type="radio"  id="sleeping" class="sleeping" onclick="doAjaxPost()"  <c:if test="${wristdisability.sleeping=='5'}"> <c:out value="checked"></c:out></c:if>  name="sleeping" value="5">&nbsp;&nbsp;My sleep is completely disturbed by wrist/hand symptoms(It wakes me 7-8 times/night or more)</td>
           </tr>
           
           <tr height="10"></tr>
           <tr ><td ><b>Section 4-Strength</b></td><td ><b>Section 9-House & Yard Work</b></td></tr>
           
           <tr><td><input type="radio" name="strength" onclick="doAjaxPost()" <c:if test="${wristdisability.strength=='0'}"> <c:out value="checked"></c:out></c:if>  class="strength"  id="strength" value="0" >&nbsp;&nbsp;I can lift the heaviest weights I need to without symptoms</td>
           <td><input type="radio" name="house" onclick="doAjaxPost()" <c:if test="${wristdisability.house=='0'}"> <c:out value="checked"></c:out></c:if>  class="house" id="house" value="0">&nbsp;&nbsp;I have no wrist/hand limitations with house or yard work</td>
           </tr>
            <tr><td><input type="radio" name="strength" onclick="doAjaxPost()"  <c:if test="${wristdisability.strength=='1'}"> <c:out value="checked"></c:out></c:if>  class="strength"  id="strength" value="1">&nbsp;&nbsp;I can lift the heavy weights,but it increases my wrist/hand symptoms</td>
           <td><input type="radio" name="house"  onclick="doAjaxPost()" <c:if test="${wristdisability.house=='1'}"> <c:out value="checked"></c:out></c:if>  class="house" id="house" value="1">&nbsp;&nbsp;I am able to do all house & yard work necessary if I take breaks</td>
           </tr>
            <tr><td><input type="radio" name="strength"  onclick="doAjaxPost()" <c:if test="${wristdisability.strength=='2'}"> <c:out value="checked"></c:out></c:if>  class="strength" id="strength" value="2">&nbsp;&nbsp;My wrist/hand symptoms prevent me from lifting more than moderate weights(ex:a gallon of milk)</td>
           <td><input type="radio" name="house"  onclick="doAjaxPost()" <c:if test="${wristdisability.house=='2'}"> <c:out value="checked"></c:out></c:if>  class="house" id="house" value="2">&nbsp;&nbsp;I am to do all house & yard work necessary,but it increases my wrist/hand symptoms</td>
           </tr>
            <tr><td><input type="radio" onclick="doAjaxPost()"  name="strength" <c:if test="${wristdisability.strength=='3'}"> <c:out value="checked"></c:out></c:if>   class="strength"  id="strength" value="3">&nbsp;&nbsp;My wrist/hand symptoms prevent me from safely lifting more than light weights(ex:a dish or book)</td>
           <td><input type="radio" name="house" onclick="doAjaxPost()"  <c:if test="${wristdisability.house=='3'}"> <c:out value="checked"></c:out></c:if>   class="house" id="house" value="3">&nbsp;&nbsp;I am able to do some,but not all ,house & yard work;it increases my wrist/hand symptoms</td>
           </tr>
            <tr><td><input type="radio" name="strength"  onclick="doAjaxPost()" <c:if test="${wristdisability.strength=='4'}"> <c:out value="checked"></c:out></c:if>   id="strength" class="strength" value="4">&nbsp;&nbsp;I frequently drop even light objects due to weakness in my wrist/hand</td>
           <td><input type="radio" name="house" onclick="doAjaxPost()"   <c:if test="${wristdisability.house=='4'}"> <c:out value="checked"></c:out></c:if>  class="house"  id="house" value="4">&nbsp;&nbsp;I am able to do only the minimum of house & yard work because of my wrist/hand symptoms</td>
           </tr>
             <tr><td><input type="radio" onclick="doAjaxPost()" name="strength" <c:if test="${wristdisability.strength=='5'}"> <c:out value="checked"></c:out></c:if>  id="strength" class="strength" value="5">&nbsp;&nbsp;I avoid lifting anything with my involved hand</td>
           <td><input type="radio" name="house" onclick="doAjaxPost()" <c:if test="${wristdisability.house=='5'}"> <c:out value="checked"></c:out></c:if>  class="house" id="house" value="5">&nbsp;&nbsp;I am unable to do any house or yard work because of my symptoms</td>
           </tr>
            <tr height="10"></tr>
           <tr ><td ><b>Section 5 - Writing/Typing tolerance</b></td><td ><b>Section 10- Recreation/Sports</b></td></tr>
           
           <tr><td><input type="radio"  id="writing" onclick="doAjaxPost()" class="writing" <c:if test="${wristdisability.writing=='0'}"> <c:out value="checked"></c:out></c:if>  name="writing" value="0">&nbsp;&nbsp;I can write or type as long as I need to without symptoms</td>
           <td><input type="radio"  id="recreation" onclick="doAjaxPost()" class="recreation"  <c:if test="${wristdisability.recreation=='0'}"> <c:out value="checked"></c:out></c:if> name="recreation" value="0">&nbsp;&nbsp;I am able to engage in all my recreation/sports activities with no wrist/hand symptoms</td>
           </tr>
            <tr><td><input type="radio"  id="writing" class="writing" onclick="doAjaxPost()"  <c:if test="${wristdisability.writing=='1'}"> <c:out value="checked"></c:out></c:if> name="writing" value="1">&nbsp;&nbsp;I can write or type for as long as I want,but it increases my symptoms</td>
           <td><input type="radio" id="recreation" class="recreation" onclick="doAjaxPost()" <c:if test="${wristdisability.recreation=='1'}"> <c:out value="checked"></c:out></c:if>  name="recreation" value="1">&nbsp;&nbsp;I am able to engage in all my recreation/sports activities with some symptoms in my wrist/hand</td>
           </tr>
           <tr><td><input type="radio"  id="writing" class="writing" onclick="doAjaxPost()" <c:if test="${wristdisability.writing=='2'}"> <c:out value="checked"></c:out></c:if> name="writing" value="2">&nbsp;&nbsp;I can write or type for 31-60 minutes before my wrist/hand symptoms increase</td>
           <td><input type="radio"  id="recreation" class="recreation"  onclick="doAjaxPost()" <c:if test="${wristdisability.recreation=='2'}"> <c:out value="checked"></c:out></c:if> name="recreation" value="2">&nbsp;&nbsp;I am able to engage in most,but not all,of my usual recreation/sports activities because of my symptoms</td>
           </tr>
           <tr><td><input type="radio"  id="writing" class="writing" onclick="doAjaxPost()"  <c:if test="${wristdisability.writing=='3'}"> <c:out value="checked"></c:out></c:if> name="writing" value="3">&nbsp;&nbsp;I can write or type for 11-30 minutes before my wrist/hand symptoms increase</td>
           <td><input type="radio"  id="recreation" class="recreation"  onclick="doAjaxPost()" <c:if test="${wristdisability.recreation=='3'}"> <c:out value="checked"></c:out></c:if>  name="recreation" value="3">&nbsp;&nbsp;I am able to engage in few of  my usual recreation/sports activities because of my symptoms in my wrist/hand</td>
           </tr>
           <tr><td><input type="radio" id="writing" class="writing" onclick="doAjaxPost()"  <c:if test="${wristdisability.writing=='4'}"> <c:out value="checked"></c:out></c:if> name="writing" value="4">&nbsp;&nbsp;I can write or type for only 10 minutes or less before my wrist/hand symptoms increase</td>
           <td><input type="radio"  id="recreation" class="recreation" onclick="doAjaxPost()"  <c:if test="${wristdisability.recreation=='4'}"> <c:out value="checked"></c:out></c:if> name="recreation" value="4">&nbsp;&nbsp;I can hardly do any recreation/sports activities because of my symptoms in my wrist/hand</td>
           </tr>
            <tr><td><input type="radio"  id="writing" class="writing" onclick="doAjaxPost()" <c:if test="${wristdisability.writing=='5'}"> <c:out value="checked"></c:out></c:if> name="writing" value="5">&nbsp;&nbsp;I am unable to write or type using my involved hand/wrist</td>
           <td><input type="radio" id="recreation" class="recreation" onclick="doAjaxPost()" <c:if test="${wristdisability.recreation=='5'}"> <c:out value="checked"></c:out></c:if> name="recreation" value="5">&nbsp;&nbsp;I am unable to do any recreation/sports activities because of my symptoms in my wrist/hand</td>
           </tr>
           </table>
           <P>Please mark on the line below the pain you have had in the past 24 hours.Use the line as a scale to mark the level of your pain from no pain to the worst</P>
           <table><tr><td>No pain at all</td>
           <td><label for="amount"><b>Pain Scale:</b></label>
	 <input type="text" id="amount"  style="border:0; color:#f6931f; font-weight:bold;" name="painscale" value="${wristdisability.painscale}" />&nbsp;&nbsp;&nbsp;
 <div id="slider"></div></td><td>Worst possible pain</td></tr></table>
           <table><tr><td><a  onclick="return doAjaxPost()" style="text-decoration: underline; cursor:pointer;color: brown" ><b>Disability of patient score</b></td></tr>
           
           </table>
           <table style="display: none" id="page"><tr><td width="10"><input type="hidden"  size="5" name="score"  value="${wristdisability.score}" id="score"><div id="score1"></div></td><td width="10"> &nbsp;&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;50&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden"  size="5" name="total"  value="${wristdisability.total}" id="total"></td><td><div id="total1"></div></td><td  width="50">%</td>
          <td><input type="button" value="Calculate" onclick="return percentage()" class="submit_btn"> </td>
           </tr>          
                     
           </table>   
    
           
           
           
           
           
           
           
           </c:otherwise>
           
           
           </c:choose>
              
             <table align="right"><tr><td><input type="submit" value="Save" id="saveid" class="submit_btn" onclick="return checkSubmit('this');"></td><td> <a href="viewwristindex" style="color: white" id="cancelid" class="submit_btn" onclick="window.close()">Cancel</a></td></tr></table>
    
            
     </div></div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            