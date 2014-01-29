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

	<br><br>     
<form action="updatewristindex" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	             VIEW WRIST/HAND DISABILITY INDEX </h2></center><br/>
	            
	            </div>
	           
	<c:set value="${wristindexform.wristindexdetails[0]}" var="wristindexdetails"></c:set>
	   

	     <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="100"><b>Name:</b></td>
           <td><input type="hidden" name="wristindexno" class="input_txt" value="${wristindexdetails.wristindexno}"><c:out value="${wristindexdetails.name}"/></td><td width="880"></td><td></td><td width="120"></td>
           <td width="100"><b>&nbsp;&nbsp;&nbsp;&nbsp;Date:&nbsp;</b></td> <td><c:out value="${wristindexdetails.date}"/></td>
           </tr>
          
            </table>
            </br> </br>
            <p><b>Please read:</b>This questionairre has been designed to give the Physical Therapist information as to how your wrist/hand pain has affected your ability to manage everyday life.</p>
           <table>
           <tr ><td width="350"><b>Section 1-Pain intensity</b></td><td width="20"></td><td width="350"><b>Section 6-Work</b></td></tr>
           <tr><td> <c:if test= "${wristindexdetails.painintensity== '0'}"> <c:out value="I have no pain in my wrist/hand"></c:out></c:if> &nbsp;&nbsp;
           <c:if test="${wristindexdetails.painintensity=='1'}"> <c:out value="The pain in my wrist/hand is intermittent or mild"></c:out></c:if>
           <c:if test="${wristindexdetails.painintensity=='2'}"> <c:out value="The pain in my wrist/hand is mild but constant"></c:out></c:if>
           <c:if test="${wristindexdetails.painintensity=='3'}"> <c:out value="The pain in my wrist/hand is constant and moderately limits use of the arm"></c:out></c:if>
           <c:if test="${wristindexdetails.painintensity=='4'}"> <c:out value="The pain in my wrist/hand is constant and severely limits us of that arm"></c:out></c:if>
           <c:if test="${wristindexdetails.painintensity=='5'}"> <c:out value="The pain in my wrist/hand is constant ,and I am unable to use that arm"></c:out></c:if>
           </td>      
           <td></td>
           
           <td> <c:if test="${wristindexdetails.work=='0'}"> <c:out value="I can do as much work as I want to without symptoms"></c:out></c:if> </td>
           <c:if test="${wristindexdetails.work=='1'}"> <c:out value="I can do all of my usual work,but it increases my symptoms"></c:out></c:if>
          <c:if test="${wristindexdetails.work=='2'}"> <c:out value="I can do all of my usual work,but it increases my symptoms"></c:out></c:if>
          <c:if test="${wristindexdetails.work=='3'}"> <c:out value="I can do about half of usual work because of my symptoms"></c:out></c:if>
          <c:if test="${wristindexdetails.work=='4'}"> <c:out value="I can hardly do any work at all because of my wrist/hand symptoms"></c:out></c:if>
          <c:if test="${wristindexdetails.work=='5'}"> <c:out value="I can't do any work at all because of my wrist/hand symptoms"></c:out></c:if>
           </tr>
          
           <tr height="10"></tr>
           <tr ><td ><b>Section 2-Numbness & Tingling</b></td> <td></td><td ><b>Section 7-Driving</b></td></tr>
           <tr><td><c:if test="${wristindexdetails.numbness=='0'}"> <c:out value="I have no numbness or tingling in my wrist/hand"></c:out></c:if>
           <c:if test="${wristindexdetails.numbness=='1'}"> <c:out value="The numbness or tingling in my wrist/hand is intermittent"></c:out></c:if>
           <c:if test="${wristindexdetails.numbness=='2'}"> <c:out value="The numbness or tingling in my wrist/hand is constant but does not limit use of that arm "></c:out></c:if>
           <c:if test="${wristindexdetails.numbness=='3'}"> <c:out value="The numbness or tingling in my wrist/hand is constant and moderately limits use of that arm"></c:out></c:if>
           <c:if test="${wristindexdetails.numbness=='4'}"> <c:out value="The numbness or tingling in my wrist/hand is constant and severely limits use of that arm"></c:out></c:if>
           <c:if test="${wristindexdetails.numbness=='5'}"> <c:out value="Due to constant numbness or tingling in my wrist/hand,I am unable to use that arm"></c:out></c:if>
           </td>
           
           
           <td></td>
           
           <td><c:if test="${wristindexdetails.driving=='0'}"> <c:out value="I can drive my car without any wrist/hand symptoms"></c:out></c:if> 
<c:if test="${wristindexdetails.driving=='1'}"> <c:out value="I can drive my car as long as I want,but it increases my symptoms"></c:out></c:if>
<c:if test="${wristindexdetails.driving=='2'}"> <c:out value="I can drive my car for 31-60 minutes before my wrist/hand symptoms increase"></c:out></c:if>
<c:if test="${wristindexdetails.driving=='3'}"> <c:out value="I can drive my car for 11-30 minutes before my wrist/hand symptoms increase"></c:out></c:if>
<c:if test="${wristindexdetails.driving=='4'}"> <c:out value="I can drive my car for only 10 minutes or less before my wrist/hand symptoms increase"></c:out></c:if>
<c:if test="${wristindexdetails.driving=='5'}"> <c:out value="I am unable to use that arm for driving"></c:out></c:if>
</td>
           </tr>
          
           <tr height="10"></tr>
           <tr ><td ><b>Section 3-Personal Care(Washing,Dressing,etc)</b></td><td></td><td ><b>Section 8-Sleeping</b></td></tr>
           
           <tr><td> <c:if test="${wristindexdetails.personal=='0'}"> <c:out value="I can look after myself normally without any symptoms"></c:out></c:if>
           <c:if test="${wristindexdetails.personal=='1'}"> <c:out value="I can look after myself normally but it causes increased symptoms"></c:out></c:if>
           <c:if test="${wristindexdetails.personal=='2'}"> <c:out value="It is uncomfortable to look after myself,and I am slow and careful"></c:out></c:if>
           <c:if test="${wristindexdetails.personal=='3'}"> <c:out value="I can only partially use my wrist/hand and sometimes use the other side instead"></c:out></c:if>
          <c:if test="${wristindexdetails.personal=='4'}"> <c:out value="I can only partially use my wrist/hand and mostly use the other side"></c:out></c:if>
           <c:if test="${wristindexdetails.personal=='5'}"> <c:out value="I am unable to use my wrist/hand for any personal care and always use the other side"></c:out></c:if>
           </td>
           <td></td>
           <td><c:if test="${wristindexdetails.sleeping=='0'}"> <c:out value="I have no trouble sleeping"></c:out></c:if>
           <c:if test="${wristindexdetails.sleeping=='2'}"> <c:out value="My sleep is mildly disturbed by wrist/hand symptoms(It wakes me 2 times/night)"></c:out></c:if>
           <c:if test="${wristindexdetails.sleeping=='3'}"> <c:out value="My sleep is moderately disturbed by wrist/hand symptoms(It wakes me 3-4 times/night)"></c:out></c:if>
           <c:if test="${wristindexdetails.sleeping=='4'}"> <c:out value="My sleep is greatly disturbed by wrist/hand symptoms(It wakes me 5-6 times/night)"></c:out></c:if>
           <c:if test="${wristindexdetails.sleeping=='5'}"> <c:out value="My sleep is completely disturbed by wrist/hand symptoms(It wakes me 7-8 times/night or more)"></c:out></c:if>
           </td>
           </tr>
          
           
           <tr height="10"></tr>
           <tr ><td ><b>Section 4-Strength</b></td><td></td><td ><b>Section 9-House & Yard Work</b></td></tr>
           
           <tr><td><c:if test="${wristindexdetails.strength=='0'}"> <c:out value="I can lift the heaviest weights I need to without symptoms"></c:out></c:if>
<c:if test="${wristindexdetails.strength=='1'}"> <c:out value="I can lift the heavy weights,but it increases my wrist/hand symptoms"></c:out></c:if>
<c:if test="${wristindexdetails.strength=='2'}"> <c:out value="My wrist/hand symptoms prevent me from lifting more than moderate weights(ex:a gallon of milk)"></c:out></c:if> 
<c:if test="${wristindexdetails.strength=='3'}"> <c:out value="My wrist/hand symptoms prevent me from safely lifting more than light weights(ex:a dish or book)"></c:out></c:if>  
<c:if test="${wristindexdetails.strength=='4'}"> <c:out value="I frequently drop even light objects due to weakness in my wrist/hand"></c:out></c:if>
<c:if test="${wristindexdetails.strength=='5'}"> <c:out value="I avoid lifting anything with my involved hand"></c:out></c:if> 
</td>
       <td></td>    <td>
           <c:if test="${wristindexdetails.house=='0'}"> <c:out value="I have no wrist/hand limitations with house or yard work"></c:out></c:if>
           <c:if test="${wristindexdetails.house=='1'}"> <c:out value="I am able to do all house & yard work necessary if I take breaks"></c:out></c:if>
           <c:if test="${wristindexdetails.house=='2'}"> <c:out value="I am to do all house & yard work necessary,but it increases my wrist/hand symptoms"></c:out></c:if>
           <c:if test="${wristindexdetails.house=='3'}"> <c:out value="I am able to do some,but not all ,house & yard work;it increases my wrist/hand symptoms"></c:out></c:if>
           <c:if test="${wristindexdetails.house=='4'}"> <c:out value="I am able to do only the minimum of house & yard work because of my wrist/hand symptoms"></c:out></c:if>  
           <c:if test="${wristindexdetails.house=='5'}"> <c:out value="I am unable to do any house or yard work because of my symptoms"></c:out></c:if> 
             </td>
           
           
           </tr>
           
            <tr height="10"></tr>
           <tr ><td ><b>Section 5 - Writing/Typing tolerance</b></td><td></td><td ><b>Section 10- Recreation/Sports</b></td></tr>
           
           <tr><td><c:if test="${wristindexdetails.writing=='0'}"> <c:out value="I can write or type as long as I need to without symptoms"></c:out></c:if>  
           <c:if test="${wristindexdetails.writing=='1'}"> <c:out value="I can write or type for as long as I want,but it increases my symptoms"></c:out></c:if>
           <c:if test="${wristindexdetails.writing=='2'}"> <c:out value="I can write or type for 31-60 minutes before my wrist/hand symptoms increase"></c:out></c:if>
           <c:if test="${wristindexdetails.writing=='3'}"> <c:out value="I can write or type for 11-30 minutes before my wrist/hand symptoms increase"></c:out></c:if>
           <c:if test="${wristindexdetails.writing=='4'}"> <c:out value="I can write or type for only 10 minutes or less before my wrist/hand symptoms increase"></c:out></c:if>
           <c:if test="${wristindexdetails.writing=='5'}"> <c:out value="I am unable to write or type using my involved hand/wrist"></c:out></c:if>
           </td><td></td>
           <td> <c:if test="${wristindexdetails.recreation=='0'}"> <c:out value="I am able to engage in all my recreation/sports activities with no wrist/hand symptoms"></c:out></c:if> 
           
           <c:if test="${wristindexdetails.recreation=='1'}"> <c:out value="I am able to engage in all my recreation/sports activities with some symptoms in my wrist/hand"></c:out></c:if> 
 
           <c:if test="${wristindexdetails.recreation=='2'}"> <c:out value="I am able to engage in most,but not all,of my usual recreation/sports activities because of my symptoms"></c:out></c:if>
           
          
           <c:if test="${wristindexdetails.recreation=='3'}"> <c:out value="I am able to engage in few of  my usual recreation/sports activities because of my symptoms in my wrist/hand"></c:out></c:if>
         
           <c:if test="${wristindexdetails.recreation=='4'}"> <c:out value="I can hardly do any recreation/sports activities because of my symptoms in my wrist/hand"></c:out></c:if>
          
           <c:if test="${wristindexdetails.recreation=='5'}"> <c:out value="I am unable to do any recreation/sports activities because of my symptoms in my wrist/hand"></c:out></c:if> </td>
           </tr>
           </table>
           </br>
           <P>Please mark on the line below the pain you have had in the past 24 hours.Use the line as a scale to mark the level of your pain from no pain to the worst</P>
           <table><tr><td width="200"><b>Pain:</b></td>
           <td>
	 <c:out value="${wristindexdetails.painscale}" />
</td></tr></table>
           
           <table id="page"><tr><td width="200"><b>Disability of patient score:</b></td><td width="50"><c:out  value="${wristindexdetails.score}" /> /50=</td><td><c:out  value="${wristindexdetails.total}" />%</td>
          
           </tr>          
                     
           </table>   
            <table align="right"><tr><td> <a href="viewwristindex" style="color: white" class="submit_btn">Cancel</a></td></tr></table>
    
            
     </div></div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            