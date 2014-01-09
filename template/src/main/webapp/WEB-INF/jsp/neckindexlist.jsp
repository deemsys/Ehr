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
		    }
		  
 </script>
 <script type="text/javascript">
 function percentage()
 {
	 var percentage=document.getElementById("score").value;
	 var div=percentage/50;
	 alert(div);
	 document.getElementById("total").value=div;
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

	     

	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	             VIEW NECK/HAND DISABILITY INDEX </h2></center><br/>
	            
	            </div>
	           
	<c:set value="${neckindexform.neckindexdetails[0]}" var="neckindexdetails"></c:set>
	   

	     <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr ><td width="100"><b>Name:</b></td>
           <td><input type="hidden" name="neckindexno" class="input_txt" value="${neckindexdetails.neckindexno}"><c:out value="${neckindexdetails.name}"/></td><td width="880"></td><td></td><td width="120"></td>
           <td width="100"><b>&nbsp;&nbsp;&nbsp;&nbsp;Date:&nbsp;</b></td> <td><c:out value="${neckindexdetails.date}"/></td>
           </tr>
          
            </table>
            </br> </br>
           <p><b>Please read:</b>This questionairre has been designed to give the Physical Therapist information as to how your wrist/hand pain has affected your ability to manage everyday life.</p>
           <table width="100%" class="margin_table">
           <tr><td width="50%"><b>Section 1-Pain intensity</b></td><td width="20"></td><td width="500"><b>Section 6-Work</b></td></tr>
           <tr><td> <c:if test= "${neckindexdetails.painintensity== '0'}"> <c:out value="I have no pain at the moment."></c:out></c:if>
           <c:if test="${neckindexdetails.painintensity=='1'}"> <c:out value="The pain is very mild at the moment."></c:out></c:if>
           <c:if test="${neckindexdetails.painintensity=='2'}"> <c:out value="The pain is very moderate at the moment."></c:out></c:if>
           <c:if test="${neckindexdetails.painintensity=='3'}"> <c:out value="The pain is fairly severe at the moment."></c:out></c:if>
           <c:if test="${neckindexdetails.painintensity=='4'}"> <c:out value="The pain is very severe at the moment."></c:out></c:if>
           <c:if test="${neckindexdetails.painintensity=='5'}"> <c:out value="The pain is the worst imaginable at the moment."></c:out></c:if>
           </td>      
           <td></td>
           
           <td> <c:if test="${neckindexdetails.work=='0'}"> <c:out value="I can do as much work as I want to."></c:out></c:if>
           <c:if test="${neckindexdetails.work=='1'}"> <c:out value="I can do  my usual work,but no more.</"></c:out></c:if>
          <c:if test="${neckindexdetails.work=='2'}"> <c:out value="I can do most of my usual work,but no more."></c:out></c:if>
          <c:if test="${neckindexdetails.work=='3'}"> <c:out value="I cannot do my usual work."></c:out></c:if>
          <c:if test="${neckindexdetails.work=='4'}"> <c:out value="I can hardly do any work at all."></c:out></c:if>
          <c:if test="${neckindexdetails.work=='5'}"> <c:out value="I cannot do any work at all."></c:out></c:if>
            </td>
           </tr>
          
           <tr height="10"></tr>
           <tr ><td ><b>Section 2-personal Care(Washing,Dressing,etc.)</b></td> <td></td><td ><b>Section 7-Driving</b></td></tr>
           <tr><td><c:if test="${neckindexdetails.personal=='0'}"> <c:out value="I can look after myself normally without causing extra pain."></c:out></c:if>
           <c:if test="${neckindexdetails.personal=='1'}"> <c:out value="I can look after myself normally but it causes extra pain."></c:out></c:if>
           <c:if test="${neckindexdetails.personal=='2'}"> <c:out value="It is painful to look after myself and I am slow and careful."></c:out></c:if>
           <c:if test="${neckindexdetails.personal=='3'}"> <c:out value="I need some help but manage most of my personal care."></c:out></c:if>
           <c:if test="${neckindexdetails.personal=='4'}"> <c:out value="I need help every day in most aspects of self care."></c:out></c:if>
           <c:if test="${neckindexdetails.personal=='5'}"> <c:out value="I do not get dressed,I wash with difficulty and stay in bed."></c:out></c:if>
           </td>
           
           
           <td></td>
           
           <td><c:if test="${neckindexdetails.driving=='0'}"> <c:out value="I can drive my car without any neck pain."></c:out></c:if> 
<c:if test="${neckindexdetails.driving=='1'}"> <c:out value="I can drive my car as long as I want with slight pain in my neck."></c:out></c:if>
<c:if test="${neckindexdetails.driving=='2'}"> <c:out value="I can drive my car as long as I want with moderate pain in my neck."></c:out></c:if>
<c:if test="${neckindexdetails.driving=='3'}"> <c:out value="I cannot drive my car as long as I want because of moderate pain in my neck."></c:out></c:if>
<c:if test="${neckindexdetails.driving=='4'}"> <c:out value="I can hardly drive all because of severe pain in my neck."></c:out></c:if>
<c:if test="${neckindexdetails.driving=='5'}"> <c:out value="I cannot drive my car at all."></c:out></c:if>
</td>
           </tr>
          
           <tr height="10"></tr>
           <tr ><td ><b>Section 3-Lifting</b></td><td></td><td ><b>Section 8-Sleeping</b></td></tr>
           
           <tr><td> <c:if test="${neckindexdetails.lifting=='0'}"> <c:out value="I can lift heavy weights without extra pain."></c:out></c:if>
           <c:if test="${neckindexdetails.lifting=='1'}"> <c:out value="I can lift heavy weights but it gives extra pain."></c:out></c:if>
           <c:if test="${neckindexdetails.lifting=='2'}"> <c:out value="Pain prevents me from lifting heavy weights off the floor,but I can manage if they are conveniently positioned,for example on a table."></c:out></c:if>
           <c:if test="${neckindexdetails.lifting=='3'}"> <c:out value="Pain prevents me from lifting heavy weights,but I can manage light to medium weights if they are conveniently positioned."></c:out></c:if>
          <c:if test="${neckindexdetails.lifting=='4'}"> <c:out value="I can lift very light weights."></c:out></c:if>
           <c:if test="${neckindexdetails.lifting=='5'}"> <c:out value="I cannot lift or carry anything at all."></c:out></c:if>
           </td>
           <td></td>
           <td><c:if test="${neckindexdetails.sleeping=='0'}"> <c:out value="I have no trouble sleeping"></c:out></c:if>
           <c:if test="${neckindexdetails.sleeping=='1'}"> <c:out value="My sleep is slightly disturbed(less than 1 hour sleepless)."></c:out></c:if>
           <c:if test="${neckindexdetails.sleeping=='2'}"> <c:out value="My sleep is mildly disturbed (1-2 hours sleepless)."></c:out></c:if>
           <c:if test="${neckindexdetails.sleeping=='3'}"> <c:out value="My sleep is moderately disturbed (2-3 hours sleepless)."></c:out></c:if>
           <c:if test="${neckindexdetails.sleeping=='4'}"> <c:out value="My sleep is greatly disturbed (3-5 hours sleepless)."></c:out></c:if>
           <c:if test="${neckindexdetails.sleeping=='5'}"> <c:out value="My sleep is completely disturbed (5-7 hours sleepless)."></c:out></c:if>
           </td>
           </tr>
          
           
           <tr height="10"></tr>
           <tr ><td ><b>Section 4-Reading</b></td><td></td><td ><b>Section 9-Recreation</b></td></tr>
           
           <tr><td><c:if test="${neckindexdetails.reading=='0'}"> <c:out value="I can read as much as I want to with no pain in my neck."></c:out></c:if>
<c:if test="${neckindexdetails.reading=='1'}"> <c:out value="I can read as much as I want to with slight pain in my neck."></c:out></c:if>
<c:if test="${neckindexdetails.reading=='2'}"> <c:out value="I can read as much as I want  with moderate pain in my neck."></c:out></c:if> 
<c:if test="${neckindexdetails.reading=='3'}"> <c:out value="I cannot read as much as I want because of moderate pain my neck."></c:out></c:if>  
<c:if test="${neckindexdetails.reading=='4'}"> <c:out value="I can hardly read at all because of severe pain in my neck."></c:out></c:if>
<c:if test="${neckindexdetails.reading=='5'}"> <c:out value="I cannot read at all."></c:out></c:if> 
</td>
       <td></td>    <td>
           <c:if test="${neckindexdetails.recreation=='0'}"> <c:out value="I am able to engage in all my recreation activities with no neck pain at all."></c:out></c:if>
           <c:if test="${neckindexdetails.recreation=='1'}"> <c:out value="I am able engage in all my  recreation activities,with some pain in my neck."></c:out></c:if>
           <c:if test="${neckindexdetails.recreation=='2'}"> <c:out value="I am able to engage in most,but not all,of my usual recreation activities because of pain in my neck."></c:out></c:if>
           <c:if test="${neckindexdetails.recreation=='3'}"> <c:out value="I am able to engage in a few of my usual recreation activities because of pain in my neck."></c:out></c:if>
           <c:if test="${neckindexdetails.recreation=='4'}"> <c:out value="I can hardly do any recreation activities because of pain in my neck."></c:out></c:if>  
           <c:if test="${neckindexdetails.recreation=='5'}"> <c:out value="I cannot do any recreation activities at all."></c:out></c:if> 
             </td>
           
           
           </tr>
           
            <tr height="10"></tr>
           <tr ><td ><b>Section 5 - Headaches</b></td><td></td><td ><b>Section 10- Concentration/Sports</b></td></tr>
           
           <tr><td><c:if test="${neckindexdetails.headache=='0'}"> <c:out value="I have no headaches at all."></c:out></c:if>  
           <c:if test="${neckindexdetails.headache=='1'}"> <c:out value="I have slight headaches that come infrequently."></c:out></c:if>
           <c:if test="${neckindexdetails.headache=='2'}"> <c:out value="I have moderate headaches which come infrequently."></c:out></c:if>
           <c:if test="${neckindexdetails.headache=='3'}"> <c:out value="I have moderate headaches which come frequently."></c:out></c:if>
           <c:if test="${neckindexdetails.headache=='4'}"> <c:out value="I have severe headaches which come frequently."></c:out></c:if>
           <c:if test="${neckindexdetails.headache=='5'}"> <c:out value="I have headaches almost all the time."></c:out></c:if>
           </td><td></td>
           <td> <c:if test="${neckindexdetails.concentration=='0'}"> <c:out value="I can concentrate fully when I want to with no difficulty."></c:out></c:if> 
           
           <c:if test="${neckindexdetails.concentration=='1'}"> <c:out value="I can concentrate fully when I want to with slight difficulty."></c:out></c:if> 
 
           <c:if test="${neckindexdetails.concentration=='2'}"> <c:out value="I have a fair degree of difficulty in concentrating when i want to."></c:out></c:if>
           
          
           <c:if test="${neckindexdetails.concentration=='3'}"> <c:out value="I have a lot of difficulty in concentrating when I want to."></c:out></c:if>
         
           <c:if test="${neckindexdetails.concentration=='4'}"> <c:out value="I have a great deal of difficulty in concentrating when I want to."></c:out></c:if>
          
           <c:if test="${neckindexdetails.concentration=='5'}"> <c:out value="I cannot concentrate at all."></c:out></c:if> </td>
           </tr>
           </table>
           </br>
          
           
           <table id="page"><tr><td width="200"><b>Disability of patient score:</b></td><td width="350"><c:out  value="${neckindexdetails.score}" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out  value="${neckindexdetails.status}" /></td>
          
           </tr>          
                     
           </table>   
            <div align="right"><input type="submit" value="Update" class="submit_btn"></div>
    
            
     </div></div>  
          
                       
	
	
	
		  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            