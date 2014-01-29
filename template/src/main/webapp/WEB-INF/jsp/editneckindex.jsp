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
 
 
 <script type="text/javascript">
 function doAjaxPost() {
/* 	 document.getElementById("page").style.display="block"; */
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
	 var lifting =0;
	 if($("input[type='radio'].lifting").is(':checked')) {
		 lifting = $("input[type='radio'].lifting:checked").val();		    
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
	 var reading = 0;
	 if($("input[type='radio'].reading").is(':checked')) {
		 reading = $("input[type='radio'].reading:checked").val();		    
	}
	 var headache = 0;
	 if($("input[type='radio'].headache").is(':checked')) {
		 headache = $("input[type='radio'].headache:checked").val();		    
	}
	 var concentration = 0;
	 if($("input[type='radio'].concentration").is(':checked')) {
		 concentration = $("input[type='radio'].concentration:checked").val();		    
	}
	 var recreation = 0;
	 if($("input[type='radio'].recreation").is(':checked')) {
		 recreation = $("input[type='radio'].recreation:checked").val();		    
	}
	 var total=parseInt(painintensity)+parseInt(work)+parseInt(lifting)+parseInt(driving)+parseInt(personal)+parseInt(sleeping)+parseInt(reading)+parseInt(headache)+parseInt(concentration)+parseInt(recreation);
	 /* $check1>=406 && $check1<=429 */
	 if(total >= 0 && total <= 4)
		 {
		 
		 document.getElementById("disability").innerHTML="This Patient is having No Disability";
		 document.getElementById("status").value="This Patient is having No Disability";
		 }
	 else if(total >= 5 && total <= 14)
	 {
	 document.getElementById("disability").innerHTML="This Patient is having Mild Disability";
	 document.getElementById("status").value="This Patient is having Mild Disability";
	 }
	 else if(total >= 15 && total <= 24)
	 {
	 document.getElementById("disability").innerHTML="This Patient is having Moderate Disability";
	 document.getElementById("status").value="This Patient is having Moderate Disability";
	 }
	 else if(total >= 25 && total <= 34)
	 {
	 document.getElementById("disability").innerHTML="This Patient is having Severe Disability";
	 document.getElementById("status").value="This Patient is having Severe Disability";
	 }
	 else if(total>=35)
		 {
		 document.getElementById("disability").innerHTML="This Patient is having complete Disability";
		 document.getElementById("status").value="This Patient is having complete Disability";
		 }
	 document.getElementById("score").value=total;
	 document.getElementById("scores").innerHTML=total;
		    }
		  
 </script>
 <!-- <script type="text/javascript">
 function percentage()
 {
	 var percentage=document.getElementById("score").value;
	 var div=percentage/50;
	 alert(div);
	 document.getElementById("total").value=div;
 }
 
 
 </script> -->
 <script>
$(function() {
    $( "#slider" ).slider({
      value:1,
      min: 0,
      max: 10,
      step: 1,
      slide: function( event, ui ) {
        $( "#amount" ).val(+ ui.value );
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
   
  

</head>
<body>
<br><br>
	     
<form action="updateneckindex" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0"  width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            EDIT NECK/MILD BACK DISABILITY INDEX </h2></center><br/>
	            
	            </div>
	  <c:set value="${neckindexform.neckindexdetails[0]}" var="neckindexdetails"></c:set>         
	    
	     <div class="contentbox">
         <table> <tr><td width="140"><span class="err">*</span>Name</td>
           <td><input type="hidden" name="neckindexno" value="${neckindexdetails.neckindexno}"><input type="text" name="name" value="${neckindexdetails.name}"><Br><span class="err"><form:errors path="neckindex.name"></form:errors></td><td width="480"></td><td></td><td width="100"></td>
           <td >&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span>Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker" value="${neckindexdetails.date}"><Br><span class="err"><form:errors path="neckindex.date"></form:errors></td>
           </tr></table>
            <p><b>Please read:</b>This questionairre has been designed to give the Physical Therapist information as to how your wrist/hand pain has affected your ability to manage everyday life.</p>
           <table width="100%" class="margin_table" >
           <tr ><td width="50%" class="margin_table" ><b>Section 1-Pain Intensity</b></td><td width="500"><b>Section 6-Work</b></td></tr>
           <tr><td><input type="radio" class="painintensity"  onclick="return doAjaxPost()" id="painintensity"  <c:if test= "${neckindexdetails.painintensity== '0'}"> <c:out value="checked"></c:out></c:if> name="painintensity" value="0">&nbsp;&nbsp;I have no pain at the moment.</td>
           <td><input type="radio" name="work"  onclick="return doAjaxPost()"  <c:if test= "${neckindexdetails.work== '0'}"> <c:out value="checked"></c:out></c:if> class="work" id="work" value="0">&nbsp;&nbsp;I can do as much work as I want to.</td>
           </tr>
           <tr><td><input type="radio" class="painintensity"  onclick="return doAjaxPost()"   <c:if test= "${neckindexdetails.painintensity== '1'}"> <c:out value="checked"></c:out></c:if> id="painintensity" name="painintensity" value="1">&nbsp;&nbsp;The pain is very mild at the moment.</td>
           <td><input type="radio" name="work" class="work" onclick="return doAjaxPost()"  id="work" <c:if test= "${neckindexdetails.work== '1'}"> <c:out value="checked"></c:out></c:if> value="1">&nbsp;&nbsp;I can do  my usual work,but no more.</td>
           </tr>
<tr><td><input type="radio" name="painintensity" onclick="return doAjaxPost()"  class="painintensity" id="painintensity"   <c:if test= "${neckindexdetails.painintensity== '2'}"> <c:out value="checked"></c:out></c:if> value="2">&nbsp;&nbsp;The pain is very moderate at the moment.</td>
           <td><input type="radio" id="work" onclick="return doAjaxPost()" class="work" name="work" <c:if test= "${neckindexdetails.work== '2'}"> <c:out value="checked"></c:out></c:if> value="2">&nbsp;&nbsp;I can do most of my usual work,but no more.</td>
           </tr>
           <tr><td><input type="radio" onclick="return doAjaxPost()"  class="painintensity" name="painintensity" id="painintensity"  <c:if test= "${neckindexdetails.painintensity== '3'}"> <c:out value="checked"></c:out></c:if> value="3">&nbsp;&nbsp;The pain is fairly severe at the moment.</td>
           <td><input type="radio" onclick="return doAjaxPost()" name="work" class="work" id="work" <c:if test= "${neckindexdetails.work== '3'}"> <c:out value="checked"></c:out></c:if> value="3">&nbsp;&nbsp;I cannot do my usual work.</td>
           </tr>
           <tr><td><input type="radio" name="painintensity" onclick="return doAjaxPost()"  class="painintensity"  id="painintensity" value="4" <c:if test= "${neckindexdetails.painintensity== '4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;The pain is very severe at the moment.</td>
           <td><input type="radio" name="work" class="work" onclick="return doAjaxPost()"  id="work" <c:if test= "${neckindexdetails.work== '4'}"> <c:out value="checked"></c:out></c:if> value="4">&nbsp;&nbsp;I can hardly do any work at all.</td>
           </tr>
           <tr><td><input type="radio" name="painintensity" onclick="return doAjaxPost()" class="painintensity" id="painintensity" value="5" <c:if test= "${neckindexdetails.painintensity== '5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;The pain is the worst imaginable at the moment.</td>
           <td><input type="radio" name="work" id="work" onclick="return doAjaxPost()" <c:if test= "${neckindexdetails.work== '5'}"> <c:out value="checked"></c:out></c:if>  class="work" value="5">&nbsp;&nbsp;I cannot do any work at all.</td>
           </tr>
           <tr height="10"></tr>
           <tr ><td ><b>Section 2-Personal Care(Washing,Dressing,etc.)</b></td><td ><b>Section 7-Driving</b></td></tr>
           <tr><td><input type="radio" name="personal" onclick="return doAjaxPost()" id="personal" <c:if test="${neckindexdetails.personal=='0'}"> <c:out value="checked"></c:out></c:if> class="personal" value="0">&nbsp;&nbsp;I can look after myself normally without causing extra pain.</td>
           <td><input type="radio" name="driving" onclick="return doAjaxPost()"  <c:if test="${neckindexdetails.driving=='0'}"> <c:out value="checked"></c:out></c:if> id="driving" class="driving" value="0">&nbsp;&nbsp;I can drive my car without any neck pain.</td>
           </tr>
           <tr><td><input type="radio" name="personal" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.personal=='1'}"> <c:out value="checked"></c:out></c:if> id="personal" class="personal" value="1">&nbsp;&nbsp;I can look after myself normally but it causes extra pain.</td>
           <td><input type="radio" name="driving" onclick="return doAjaxPost()"  <c:if test="${neckindexdetails.driving=='1'}"> <c:out value="checked"></c:out></c:if>  id="driving"  class="driving" value="1">&nbsp;&nbsp;I can drive my car as long as I want with slight pain in my neck</td>
           </tr>
           <tr><td><input type="radio" name="personal" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.personal=='2'}"> <c:out value="checked"></c:out></c:if> id="personal" class="personal" value="2">&nbsp;&nbsp;It is painful to look after myself and I am slow and careful.</td>
           <td><input type="radio" name="driving" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.driving=='2'}"> <c:out value="checked"></c:out></c:if>   id="driving" class="driving"  value="2">&nbsp;&nbsp;I can drive my car as long as I want with moderate pain in my neck.</td>
           </tr>
           <tr><td><input type="radio" name="personal" onclick="return doAjaxPost()"  <c:if test="${neckindexdetails.personal=='3'}"> <c:out value="checked"></c:out></c:if> id="personal"  class="personal" value="3">&nbsp;&nbsp;I need some help but manage most of my personal care.</td>
           <td><input type="radio" name="driving" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.driving=='3'}"> <c:out value="checked"></c:out></c:if>   id="driving" class="driving"  value="3">&nbsp;&nbsp;I cannot drive my car as long as I want because of moderate pain in my neck.</td>
           </tr>
           <tr><td><input type="radio" name="personal" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.personal=='4'}"> <c:out value="checked"></c:out></c:if>  id="personal"  class="personal" value="4">&nbsp;&nbsp;I need help every day in most aspects of self care.</td>
           <td><input type="radio" name="driving" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.driving=='4'}"> <c:out value="checked"></c:out></c:if>  id="driving"  class="driving" value="4">&nbsp;&nbsp;I can hardly drive all because of severe pain in my neck.</td>
           </tr>
           <tr><td><input type="radio" name="personal" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.personal=='5'}"> <c:out value="checked"></c:out></c:if> id="personal"  class="personal" value="5">&nbsp;&nbsp;I do not get dressed,I wash with difficulty and stay in bed.</td>
           <td><input type="radio" name="driving"  onclick="return doAjaxPost()" <c:if test="${neckindexdetails.driving=='5'}"> <c:out value="checked"></c:out></c:if>  id="driving"  class="driving" value="5">&nbsp;&nbsp;I cannot drive my car at all.</td>
           </tr>
           <tr height="10"></tr>
           <tr ><td ><b>Section 3-Lifting</b></td><td ><b>Section 8-Sleeping</b></td></tr>
           <tr><td><input type="radio" id="lifting" name="lifting" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.lifting=='0'}"> <c:out value="checked"></c:out></c:if> class="lifting" value="0">&nbsp;&nbsp;I can lift heavy weights without extra pain.</td>
           <td><input type="radio"  id="sleeping" class="sleeping" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.sleeping=='0'}"> <c:out value="checked"></c:out></c:if>   name="sleeping" value="0">&nbsp;&nbsp;I have no trouble sleeping.</td>
           </tr>
           <tr><td><input type="radio" id="lifting" name="lifting"  onclick="return doAjaxPost()" <c:if test="${neckindexdetails.lifting=='1'}"> <c:out value="checked"></c:out></c:if> class="lifting"  value="1">&nbsp;&nbsp;I can lift heavy weights but it gives extra pain.</td>
           <td><input type="radio"  id="sleeping" class="sleeping"  onclick="return doAjaxPost()" <c:if test="${neckindexdetails.sleeping=='1'}"> <c:out value="checked"></c:out></c:if>   name="sleeping" value="1">&nbsp;&nbsp;My sleep is slightly disturbed(less than 1 hour sleepless).</td>
           </tr>
          <tr><td><input type="radio" id="lifting" name="lifting" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.lifting=='2'}"> <c:out value="checked"></c:out></c:if> class="lifting" value="2">&nbsp;&nbsp;Pain prevents me from lifting heavy weights off the floor,but I can manage if they are conveniently positioned,for example on a table. </td>
           <td><input type="radio"  id="sleeping" class="sleeping" onclick="return doAjaxPost()"  name="sleeping" <c:if test="${neckindexdetails.sleeping=='2'}"> <c:out value="checked"></c:out></c:if>  value="2">&nbsp;&nbsp;My sleep is mildly disturbed (1-2 hours sleepless).</td>
           </tr>
            <tr><td><input type="radio" id="lifting"  name="lifting" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.lifting=='3'}"> <c:out value="checked"></c:out></c:if> class="lifting" value="3">&nbsp;&nbsp;Pain prevents me from lifting heavy weights,but I can manage light to medium weights if they are conveniently positioned.</td>
           <td><input type="radio" id="sleeping" class="sleeping" onclick="return doAjaxPost()" name="sleeping" <c:if test="${neckindexdetails.sleeping=='3'}"> <c:out value="checked"></c:out></c:if>  value="3">&nbsp;&nbsp;My sleep is moderately disturbed (2-3 hours sleepless).</td>
           </tr>
            <tr><td><input type="radio" id="lifting" name="lifting" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.lifting=='4'}"> <c:out value="checked"></c:out></c:if> class="lifting" value="4">&nbsp;&nbsp;I can lift very light weights.</td>
           <td><input type="radio"  id="sleeping" class="sleeping" onclick="return doAjaxPost()" name="sleeping"  <c:if test="${neckindexdetails.sleeping=='4'}"> <c:out value="checked"></c:out></c:if>  value="4">&nbsp;&nbsp;My sleep is greatly disturbed (3-5 hours sleepless).</td>
           </tr>
            <tr><td><input type="radio"  id="lifting" name="lifting" onclick="return doAjaxPost()"  <c:if test="${neckindexdetails.lifting=='5'}"> <c:out value="checked"></c:out></c:if>  class="lifting" value="5">&nbsp;&nbsp;I cannot lift or carry anything at all.</td>
           <td><input type="radio"  id="sleeping" class="sleeping" onclick="return doAjaxPost()" name="sleeping" <c:if test="${neckindexdetails.sleeping=='5'}"> <c:out value="checked"></c:out></c:if>   value="5">&nbsp;&nbsp;My sleep is completely disturbed (5-7 hours sleepless).</td>
           </tr>
           
           <tr height="10"></tr>
           <tr ><td ><b>Section 4-Reading</b></td><td ><b>Recreation</b></td></tr>
           
           <tr><td><input type="radio" name="reading" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.reading=='0'}"> <c:out value="checked"></c:out></c:if> class="reading"  id="reading" value="0">&nbsp;&nbsp;I can read as much as I want to with no pain in my neck.</td>
           <td><input type="radio" name="recreation" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.recreation=='0'}"> <c:out value="checked"></c:out></c:if> class="recreation" id="recreation" value="0">&nbsp;&nbsp;I am able to engage in all my recreation activities with no neck pain at all.</td>
           </tr>
            <tr><td><input type="radio" name="reading" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.reading=='1'}"> <c:out value="checked"></c:out></c:if> class="reading"  id="reading" value="1">&nbsp;&nbsp;I can read as much as I want to with slight pain in my neck.</td>
           <td><input type="radio" name="recreation" onclick="return doAjaxPost()"  <c:if test="${neckindexdetails.recreation=='1'}"> <c:out value="checked"></c:out></c:if> class="recreation" id="recreation" value="1">&nbsp;&nbsp;I am able engage in all my  recreation activities,with some pain in my neck.</td>
           </tr>
            <tr><td><input type="radio" name="reading" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.reading=='2'}"> <c:out value="checked"></c:out></c:if> class="reading" id="reading" value="2">&nbsp;&nbsp;I can read as much as I want  with moderate pain in my neck.</td>
           <td><input type="radio" name="recreation" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.recreation=='2'}"> <c:out value="checked"></c:out></c:if>  class="recreation" id="recreation" value="2">&nbsp;&nbsp;I am able to engage in most,but not all,of my usual recreation activities because of pain in my neck.</td>
           </tr>
            <tr><td><input type="radio" name="reading" onclick="return doAjaxPost()"<c:if test="${neckindexdetails.reading=='3'}"> <c:out value="checked"></c:out></c:if> class="reading"  id="reading" value="3">&nbsp;&nbsp;I cannot read as much as I want because of moderate pain my neck.</td>
           <td><input type="radio" name="recreation" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.recreation=='3'}"> <c:out value="checked"></c:out></c:if> class="recreation" id="recreation" value="3">&nbsp;&nbsp;I am able to engage in a few of my usual recreation activities because of pain in my neck.</td>
           </tr>
            <tr><td><input type="radio" name="reading" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.reading=='4'}"> <c:out value="checked"></c:out></c:if> id="reading" class="reading" value="4">&nbsp;&nbsp;I can hardly read at all because of severe pain in my neck.</td>
           <td><input type="radio" name="recreation" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.recreation=='4'}"> <c:out value="checked"></c:out></c:if> class="recreation"  id="recreation" value="4">&nbsp;&nbsp;I can hardly do any recreation activities because of pain in my neck.</td>
           </tr>
             <tr><td><input type="radio" name="reading" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.reading=='5'}"> <c:out value="checked"></c:out></c:if> id="reading" class="reading" value="5">&nbsp;&nbsp;I cannot read at all.</td>
           <td><input type="radio" name="recreation" onclick="return doAjaxPost()" <c:if test="${neckindexdetails.recreation=='5'}"> <c:out value="checked"></c:out></c:if> class="recreation" id="recreation" value="5">&nbsp;&nbsp;I cannot do any recreation activities at all.</td>
           </tr>
            <tr height="10"></tr>
           <tr ><td ><b>Section 5 - Headaches</b></td><td ><b>Section 10- Concentration/Sports</b></td></tr>
           
           <tr><td><input type="radio"  id="headache" onclick="return doAjaxPost()" class="headache" <c:if test="${neckindexdetails.headache=='0'}"> <c:out value="checked"></c:out></c:if> name="headache" value="0">&nbsp;&nbsp;I have no headaches at all.</td>
           <td><input type="radio"  id="concentration" onclick="return doAjaxPost()" class="concentration" <c:if test="${neckindexdetails.concentration=='0'}"> <c:out value="checked"></c:out></c:if> name="concentration" value="0">&nbsp;&nbsp;I can concentrate fully when I want to with no difficulty.</td>
           </tr>
            <tr><td><input type="radio"  id="headache" onclick="return doAjaxPost()"  class="headache" name="headache" <c:if test="${neckindexdetails.headache=='1'}"> <c:out value="checked"></c:out></c:if> value="1">&nbsp;&nbsp;I have slight headaches that come infrequently.</td>
           <td><input type="radio" id="concentration" onclick="return doAjaxPost()" class="concentration" <c:if test="${neckindexdetails.concentration=='1'}"> <c:out value="checked"></c:out></c:if> name="concentration" value="1">&nbsp;&nbsp;I can concentrate fully when I want to with slight difficulty.</td>
           </tr>
           <tr><td><input type="radio"  id="headache" onclick="return doAjaxPost()" class="headache" name="headache" <c:if test="${neckindexdetails.headache=='2'}"> <c:out value="checked"></c:out></c:if> value="2">&nbsp;&nbsp;I have moderate headaches which come infrequently.</td>
           <td><input type="radio"  id="concentration"  onclick="return doAjaxPost()" class="concentration" name="concentration"  <c:if test="${neckindexdetails.concentration=='2'}"> <c:out value="checked"></c:out></c:if> value="2">&nbsp;&nbsp;I have a fair degree of difficulty in concentrating when i want to.</td>
           </tr>
           <tr><td><input type="radio"  id="headache" onclick="return doAjaxPost()" class="headache" name="headache" <c:if test="${neckindexdetails.headache=='3'}"> <c:out value="checked"></c:out></c:if> value="3">&nbsp;&nbsp;I have moderate headaches which come frequently.</td>
           <td><input type="radio"  id="concentration" onclick="return doAjaxPost()"  class="concentration" name="concentration" <c:if test="${neckindexdetails.concentration=='3'}"> <c:out value="checked"></c:out></c:if> value="3">&nbsp;&nbsp;I have a lot of difficulty in concentrating when I want to.</td>
           </tr>
           <tr><td><input type="radio" id="headache" onclick="return doAjaxPost()" class="headache" name="headache" <c:if test="${neckindexdetails.headache=='4'}"> <c:out value="checked"></c:out></c:if> value="4">&nbsp;&nbsp;I have severe headaches which come frequently.</td>
           <td><input type="radio"  id="concentration" onclick="return doAjaxPost()" class="concentration" name="concentration" <c:if test="${neckindexdetails.concentration=='4'}"> <c:out value="checked"></c:out></c:if> value="4">&nbsp;&nbsp;I have a great deal of difficulty in concentrating when I want to.</td>
           </tr>
            <tr><td><input type="radio"  id="headache" onclick="return doAjaxPost()" class="headache" name="headache" <c:if test="${neckindexdetails.headache=='5'}"> <c:out value="checked"></c:out></c:if> value="5">&nbsp;&nbsp;I have headaches almost all the time.</td>
           <td><input type="radio" id="concentration" onclick="return doAjaxPost()" class="concentration" name="concentration" value="5" <c:if test="${neckindexdetails.concentration=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;I cannot concentrate at all.</td>
           </tr>
           </table>
           
           <table><tr><td><a  onclick="return doAjaxPost()" style="text-decoration: underline; cursor:pointer;color: brown" ><b>Disability of patient score</b><td><input type="hidden"  size="5" name="score" value="${neckindexdetails.score}" id="score"><div id="scores" >${neckindexdetails.score}</div> </td><td><b><div id="disability">${neckindexdetails.status}</div></b><input type="hidden" name="status" id="status" value="${neckindexdetails.status}"></td></td></tr>
           
           </table>
          <!--  <table style="display: none" id="page"><tr><td><input type="hidden"  size="5" name="score" id="score"><div id="scores"></div> </td><td><div id="disability"></div><input type="text" name="status" id="status"></td>
          <td><input type="button" value="Calculate" onclick="return percentage()" class="submit_btn"> </td>
           </tr>          
                     
           </table>  -->
             
            <table align="right"><tr><td><input type="submit" value="Update" class="submit_btn"></td><td> <a href="viewneckindex" style="color: white" class="submit_btn">Cancel</a></td></tr></table>
    
            
     </div></div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            