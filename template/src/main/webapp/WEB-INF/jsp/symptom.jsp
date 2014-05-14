<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"></jsp:include>
<html>
<head>


<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <link rel="stylesheet" href="/resources/css/style.css" />
 <link rel="stylesheet" href="../../themes/base/jquery.ui.all.css">
    <script src="js/jquery-1.4.4.js"></script>
    <script src="js/jquery.ui.core.js"></script>
    <script src="js/jquery.ui.widget.js"></script>
    <script src="js/jquery.ui.mouse.js"></script>
    <script src="js/jquery.ui.draggable.js"></script>
    <script src="js/jquery.ui.droppable.js"></script>
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

 <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>  
  #droppable { width: 55px; height:81px;}
  #draggable { width: 10px; height: 10px;}
   #draggable1 { width: 10px; height: 10px;}
   #draggable2 { width: 10px; height: 10px;}
    #draggable3 { width: 10px; height: 10px;}
     #draggable4 { width: 10px; height: 10px;}
     #numbness { width: 10px; height: 10px;}
     #bottom{ 
    background: url("resources/images/sym.png"); 
    position:relative; 
    width: 330; 
    height: 330;
    }
     
  </style>
  <script>
 $(window).load(function(){
var oldValue = "";
 $("#snaptarget").offset({left:479,top:286})
/* $("#bodyfront").offset({left:108,top:330}) */
if(document.getElementById("achesleft").value!=0 && document.getElementById("achestop").value!=0) 
{
$("#draggable").offset({ left:  document.getElementById("achesleft").value, top:  document.getElementById("achestop").value})
} 
if(document.getElementById("achesleft1").value!=0 && document.getElementById("achestop1").value!=0) 
{
$("#draggable1").offset({ left:  document.getElementById("achesleft1").value, top:  document.getElementById("achestop1").value})
}
if(document.getElementById("achesleft2").value!=0 && document.getElementById("achestop2").value!=0) 
{
$("#draggable2").offset({ left:  document.getElementById("achesleft2").value, top:  document.getElementById("achestop2").value})
}
if(document.getElementById("achesleft3").value!=0 && document.getElementById("achestop3").value!=0) 
{
$("#draggable3").offset({ left:  document.getElementById("achesleft3").value, top:  document.getElementById("achestop3").value})
}
if(document.getElementById("achesleft4").value!=0 && document.getElementById("achestop4").value!=0) 
{
$("#draggable4").offset({ left:  document.getElementById("achesleft4").value, top:  document.getElementById("achestop4").value})
}
if(document.getElementById("achesleft5").value!=0 && document.getElementById("achestop5").value!=0) 
{
$("#draggable5").offset({ left:  document.getElementById("achesleft5").value, top:  document.getElementById("achestop5").value})
}
if(document.getElementById("achesleft6").value!=0 && document.getElementById("achestop6").value!=0) 
{
$("#draggable6").offset({ left:  document.getElementById("achesleft6").value, top:  document.getElementById("achestop6").value})
}
if(document.getElementById("achesleft7").value!=0 && document.getElementById("achestop7").value!=0) 
{
$("#draggable7").offset({ left:  document.getElementById("achesleft7").value, top:  document.getElementById("achestop7").value})
}
if(document.getElementById("achesleft8").value!=0 && document.getElementById("achestop8").value!=0) 
{
$("#draggable8").offset({ left:  document.getElementById("achesleft8").value, top:  document.getElementById("achestop8").value})
}
if(document.getElementById("achesleft9").value!=0 && document.getElementById("achestop9").value!=0) 
{
$("#draggable9").offset({ left:  document.getElementById("achesleft9").value, top:  document.getElementById("achestop9").value})
}
if(document.getElementById("numbleft").value!=0 && document.getElementById("numbtop").value!=0)
{
$("#numbness").offset({ left:  document.getElementById("numbleft").value, top:  document.getElementById("numbtop").value})
}
if(document.getElementById("numbleft1").value!=0 && document.getElementById("numbtop1").value!=0)
{
$("#numbness1").offset({ left:  document.getElementById("numbleft1").value, top:  document.getElementById("numbtop1").value})
}
if(document.getElementById("numbleft2").value!=0 && document.getElementById("numbtop2").value!=0)
{
$("#numbness2").offset({ left:  document.getElementById("numbleft2").value, top:  document.getElementById("numbtop2").value})
}
if(document.getElementById("numbleft3").value!=0 && document.getElementById("numbtop3").value!=0)
{
$("#numbness3").offset({ left:  document.getElementById("numbleft3").value, top:  document.getElementById("numbtop3").value})
}
if(document.getElementById("numbleft4").value!=0 && document.getElementById("numbtop4").value!=0)
{
$("#numbness4").offset({ left:  document.getElementById("numbleft4").value, top:  document.getElementById("numbtop4").value})
}
if(document.getElementById("numbleft5").value!=0 && document.getElementById("numbtop5").value!=0)
{
$("#numbness5").offset({ left:  document.getElementById("numbleft5").value, top:  document.getElementById("numbtop5").value})
}
if(document.getElementById("numbleft6").value!=0 && document.getElementById("numbtop6").value!=0)
{
$("#numbness6").offset({ left:  document.getElementById("numbleft6").value, top:  document.getElementById("numbtop6").value})
}
if(document.getElementById("numbleft7").value!=0 && document.getElementById("numbtop7").value!=0)
{
$("#numbness7").offset({ left:  document.getElementById("numbleft7").value, top:  document.getElementById("numbtop7").value})
}
if(document.getElementById("numbleft8").value!=0 && document.getElementById("numbtop8").value!=0)
{
$("#numbness8").offset({ left:  document.getElementById("numbleft8").value, top:  document.getElementById("numbtop8").value})
}
if(document.getElementById("numbleft9").value!=0 && document.getElementById("numbtop9").value!=0)
{
$("#numbness9").offset({ left:  document.getElementById("numbleft9").value, top:  document.getElementById("numbtop9").value})
}
if(document.getElementById("pinleft").value!=0 && document.getElementById("pintop").value!=0)
{
$("#pins").offset({ left:  document.getElementById("pinleft").value, top:  document.getElementById("pintop").value})
}
if(document.getElementById("pinleft1").value!=0 && document.getElementById("pintop1").value!=0)
{
$("#pins1").offset({ left:  document.getElementById("pinleft1").value, top:  document.getElementById("pintop1").value})
}
if(document.getElementById("pinleft2").value!=0 && document.getElementById("pintop2").value!=0)
{
$("#pins2").offset({ left:  document.getElementById("pinleft2").value, top:  document.getElementById("pintop2").value})
}
if(document.getElementById("pinleft3").value!=0 && document.getElementById("pintop3").value!=0)
{
$("#pins3").offset({ left:  document.getElementById("pinleft3").value, top:  document.getElementById("pintop3").value})
}
if(document.getElementById("pinleft4").value!=0 && document.getElementById("pintop4").value!=0)
{
$("#pins4").offset({ left:  document.getElementById("pinleft4").value, top:  document.getElementById("pintop4").value})
}
if(document.getElementById("pinleft5").value!=0 && document.getElementById("pintop5").value!=0)
{
$("#pins5").offset({ left:  document.getElementById("pinleft5").value, top:  document.getElementById("pintop5").value})
}
if(document.getElementById("pinleft6").value!=0 && document.getElementById("pintop6").value!=0)
{
$("#pins6").offset({ left:  document.getElementById("pinleft6").value, top:  document.getElementById("pintop6").value})
}
if(document.getElementById("pinleft7").value!=0 && document.getElementById("pintop7").value!=0)
{
$("#pins7").offset({ left:  document.getElementById("pinleft7").value, top:  document.getElementById("pintop7").value})
}
if(document.getElementById("pinleft8").value!=0 && document.getElementById("pintop8").value!=0)
{
$("#pins8").offset({ left:  document.getElementById("pinleft8").value, top:  document.getElementById("pintop8").value})
}
if(document.getElementById("pinleft9").value!=0 && document.getElementById("pintop9").value!=0)
{
$("#pins9").offset({ left:  document.getElementById("pinleft9").value, top:  document.getElementById("pintop9").value})
}
if(document.getElementById("burnleft").value!=0 && document.getElementById("burntop").value!=0)
{
$("#burn").offset({ left:  document.getElementById("burnleft").value, top:  document.getElementById("burntop").value})
}
if(document.getElementById("burnleft1").value!=0 && document.getElementById("burntop1").value!=0)
{
$("#burn1").offset({ left:  document.getElementById("burnleft1").value, top:  document.getElementById("burntop1").value})
}
if(document.getElementById("burnleft2").value!=0 && document.getElementById("burntop2").value!=0)
{
$("#burn2").offset({ left:  document.getElementById("burnleft2").value, top:  document.getElementById("burntop2").value})
}
if(document.getElementById("burnleft3").value!=0 && document.getElementById("burntop3").value!=0)
{
$("#burn3").offset({ left:  document.getElementById("burnleft3").value, top:  document.getElementById("burntop3").value})
}
if(document.getElementById("burnleft4").value!=0 && document.getElementById("burntop4").value!=0)
{
$("#burn4").offset({ left:  document.getElementById("burnleft4").value, top:  document.getElementById("burntop4").value})
}
if(document.getElementById("burnleft5").value!=0 && document.getElementById("burntop5").value!=0)
{
$("#burn5").offset({ left:  document.getElementById("burnleft5").value, top:  document.getElementById("burntop5").value})
}
if(document.getElementById("burnleft6").value!=0 && document.getElementById("burntop6").value!=0)
{
$("#burn6").offset({ left:  document.getElementById("burnleft6").value, top:  document.getElementById("burntop6").value})
}
if(document.getElementById("burnleft7").value!=0 && document.getElementById("burntop7").value!=0)
{
$("#burn7").offset({ left:  document.getElementById("burnleft7").value, top:  document.getElementById("burntop7").value})
}
if(document.getElementById("burnleft8").value!=0 && document.getElementById("burntop8").value!=0)
{
$("#burn8").offset({ left:  document.getElementById("burnleft8").value, top:  document.getElementById("burntop8").value})
}
if(document.getElementById("burnleft9").value!=0 && document.getElementById("burntop9").value!=0)
{
$("#burn9").offset({ left:  document.getElementById("burnleft9").value, top:  document.getElementById("burntop9").value})
}
if(document.getElementById("stableft").value!=0 && document.getElementById("stabtop").value!=0)
{
$("#stabbing").offset({ left:  document.getElementById("stableft").value, top:  document.getElementById("stabtop").value})
}
if(document.getElementById("stableft1").value!=0 && document.getElementById("stabtop1").value!=0)
{
$("#stabbing1").offset({ left:  document.getElementById("stableft1").value, top:  document.getElementById("stabtop1").value})
}
if(document.getElementById("stableft2").value!=0 && document.getElementById("stabtop2").value!=0)
{
$("#stabbing2").offset({ left:  document.getElementById("stableft2").value, top:  document.getElementById("stabtop2").value})
}
if(document.getElementById("stableft3").value!=0 && document.getElementById("stabtop3").value!=0)
{
$("#stabbing3").offset({ left:  document.getElementById("stableft3").value, top:  document.getElementById("stabtop3").value})
}
if(document.getElementById("stableft4").value!=0 && document.getElementById("stabtop4").value!=0)
{
$("#stabbing4").offset({ left:  document.getElementById("stableft4").value, top:  document.getElementById("stabtop4").value})
}
if(document.getElementById("stableft5").value!=0 && document.getElementById("stabtop5").value!=0)
{
$("#stabbing5").offset({ left:  document.getElementById("stableft5").value, top:  document.getElementById("stabtop5").value})
}
if(document.getElementById("stableft6").value!=0 && document.getElementById("stabtop6").value!=0)
{
$("#stabbing6").offset({ left:  document.getElementById("stableft6").value, top:  document.getElementById("stabtop6").value})
}
if(document.getElementById("stableft7").value!=0 && document.getElementById("stabtop7").value!=0)
{
$("#stabbing7").offset({ left:  document.getElementById("stableft7").value, top:  document.getElementById("stabtop7").value})
}
if(document.getElementById("stableft8").value!=0 && document.getElementById("stabtop8").value!=0)
{
$("#stabbing8").offset({ left:  document.getElementById("stableft8").value, top:  document.getElementById("stabtop8").value})
}
if(document.getElementById("stableft9").value!=0 && document.getElementById("stabtop9").value!=0)
{
$("#stabbing9").offset({ left:  document.getElementById("stableft9").value, top:  document.getElementById("stabtop9").value})
}


    });

 
 
 </script>
 <!-- <script>
 $(window).load(function(){
	 
 $("#number").keyup(function() {
			
			 $("#numbererror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#numbererror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		});

 
 </script>  -->
  <!-- <script>
 $(window).load(function(){
	 
	  $("#number").keyup(function() {
			
			 $("#numbererror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#numbererror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})

 });
 </script> -->
  <script> 
  
  $(function() {
    //$( "#draggable" ).draggable({ revert: "not valid" });
    $('#draggable').draggable(
    	    {
    	        drag: function(){
    	        
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("achesleft").value=xPos;
    	            document.getElementById("achestop").value=yPos;  
    	           /*  if(document.getElementById("draggable5").style.display!="block")
    	            	{   
    	            
    	            	document.getElementById("draggable5").style.display="block";
    	                $("#draggable5").offset({ left:134, top:296})   
    	            	}
    	             */
    	           /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  */
    	       },stack: "#draggable",revert: 'invalid'
    	    });   		
    	   /*  $( "#bodyfront" ).draggable({ stack: "#bodyfront" }); */
 /* $( "#snaptarget" ).draggable({ stack: "#snaptarget" }); */
    $('#draggable1').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("achesleft1").value=xPos;
    	            document.getElementById("achestop1").value=yPos; 
    	           /*  if(document.getElementById("draggable6").style.display!="block")
	            	{    	    
    	            	
	            	document.getElementById("draggable6").style.display="block";
	                $("#draggable6").offset({ left:146, top:296})   
	            	} */
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  */
    	        }, revert: 'invalid'
    	    });
    	
    //$( "#draggable1" ).draggable();
    $('#draggable2').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("achesleft2").value=xPos;
    	            document.getElementById("achestop2").value=yPos;  
    	           /*  if(document.getElementById("draggable7").style.display!="block")
	            	{    
    	            
	            	document.getElementById("draggable7").style.display="block";
	                $("#draggable7").offset({ left:158, top:296})   
	            	} */
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  */
    	        }, revert: 'invalid'
    	    });
    $('#draggable3').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("achesleft3").value=xPos;
    	            document.getElementById("achestop3").value=yPos;
    	           /*  if(document.getElementById("draggable8").style.display!="block")
	            	{    	    
    	           
	            	document.getElementById("draggable8").style.display="block";
	                $("#draggable8").offset({ left:170.5, top:296})   
	            	} */
    	           /*  $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  */
    	        }, revert: 'invalid'
    	    });
    $('#draggable4').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("achesleft4").value=xPos;
    	            document.getElementById("achestop4").value=yPos; 
    	           /*  if(document.getElementById("draggable9").style.display!="block")
	            	{    	    
    	          
	            	document.getElementById("draggable9").style.display="block";
	                $("#draggable9").offset({ left:183.5, top:296})   
	            	} */
    	         /*    $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  */
    	        }, revert: 'invalid'
    	    });
    $('#draggable5').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("achesleft5").value=xPos;
    	            document.getElementById("achestop5").value=yPos; 
    	           /*  if(document.getElementById("draggable10").style.display!="block")
	            	{   
    	            	alert("5");
	            	document.getElementById("draggable10").style.display="block";
	                $("#draggable10").offset({ left:134, top:296})   
	            	} */
    	            /*  $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  */
    	       }, revert: 'invalid'
    	    }); 
    $('#draggable6').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("achesleft6").value=xPos;
    	            document.getElementById("achestop6").value=yPos;
    	            /* if(document.getElementById("draggable11").style.display!="block")
    	            	{
    	            	alert("6");
	            	document.getElementById("draggable11").style.display="block";
	                $("#draggable11").offset({ left:146, top:296})   
	            	} */
    	         /*     $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  */
    	       }, revert: 'invalid'
    	    });   
    $('#draggable7').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("achesleft7").value=xPos;
    	            document.getElementById("achestop7").value=yPos; 
    	           /*  if(document.getElementById("draggable12").style.display!="block")
	            	{
    	            	alert("7");
	            	document.getElementById("draggable12").style.display="block";
	                $("#draggable12").offset({ left:158, top:296})   
	            	} */
    	       /*       $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  */
    	       }, revert: 'invalid'
    	    }); 
    $('#draggable8').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("achesleft8").value=xPos;
    	            document.getElementById("achestop8").value=yPos;
    	           /*  if(document.getElementById("draggable13").style.display!="block")
	            	{   
    	            	alert("8");
	            	document.getElementById("draggable13").style.display="block";
	                $("#draggable13").offset({ left:170.5, top:296})   
	            	} */
    	         /*     $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  */
    	       }, revert: 'invalid'
    	    }); 
    $('#draggable9').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("achesleft9").value=xPos;
    	            document.getElementById("achestop9").value=yPos; 
    	            /* if(document.getElementById("draggable14").style.display!="block")
	            	{   
    	            	alert("9");
	            	document.getElementById("draggable14").style.display="block";
	                $("#draggable14").offset({ left:183.5, top:296})   
	            	} */
    	          /*    $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  */
    	       }, revert: 'invalid'
    	    });   
    
    $('#numbness').draggable(
    	    {
    	        drag: function(){
    	        	
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("numbleft").value=xPos;
    	            document.getElementById("numbtop").value=yPos;    
    	           /*  $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	            /* if(document.getElementById("numbness5").style.display!="block")
	            	{
    	           
	            	document.getElementById("numbness5").style.display="block";
	                $("#numbness5").offset({ left:386, top:296})   
	            	}  */
    	        }, revert: 'invalid'
    	    });
    $('#numbness1').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("numbleft1").value=xPos;
    	            document.getElementById("numbtop1").value=yPos;    
    	        /*     $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  */
    	           /*  if(document.getElementById("numbness6").style.display!="block")
	            	{
    	            
	            	document.getElementById("numbness6").style.display="block";
	                $("#numbness6").offset({ left:401, top:296})   
	            	}  */
    	        }, revert: 'invalid'
    	    });
    $('#numbness2').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("numbleft2").value=xPos;
    	            document.getElementById("numbtop2").value=yPos;    
    	         /*    $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  */
    	           /*  if(document.getElementById("numbness7").style.display!="block")
	            	{
    	            
	            	document.getElementById("numbness7").style.display="block";
	                $("#numbness7").offset({ left:418, top:296})   
	            	}  */
    	        }, revert: 'invalid'
    	    });
    $('#numbness3').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("numbleft3").value=xPos;
    	            document.getElementById("numbtop3").value=yPos;    
    	         /*    $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	           /*  if(document.getElementById("numbness8").style.display!="block")
	            	{
    	          
	            	document.getElementById("numbness8").style.display="block";
	                $("#numbness8").offset({ left:434, top:296})   
	            	}  */
    	        }, revert: 'invalid'
    	    });
    $('#numbness4').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("numbleft4").value=xPos;
    	            document.getElementById("numbtop4").value=yPos;    
    	        /*     $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	           /*  if(document.getElementById("numbness9").style.display!="block")
	            	{
    	        
	            	document.getElementById("numbness9").style.display="block";
	                $("#numbness9").offset({ left:450, top:296})   
	            	}  */
    	        }, revert: 'invalid'
    	    });
    $('#numbness5').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("numbleft5").value=xPos;
    	            document.getElementById("numbtop5").value=yPos;    
    	          /* /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */ 
    	        }, revert: 'invalid'
    	    });
    $('#numbness6').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("numbleft6").value=xPos;
    	            document.getElementById("numbtop6").value=yPos;    
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    });
    $('#numbness7').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("numbleft7").value=xPos;
    	            document.getElementById("numbtop7").value=yPos;    
    	        /*     $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    });
    $('#numbness8').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("numbleft8").value=xPos;
    	            document.getElementById("numbtop8").value=yPos;    
    	            /* $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    });
    $('#numbness9').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("numbleft9").value=xPos;
    	            document.getElementById("numbtop9").value=yPos;    
    	        /*     $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    });
    
    $('#pins').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("pinleft").value=xPos;
    	            document.getElementById("pintop").value=yPos;
    	            /* if(document.getElementById("pins5").style.display!="block")
	            	{    	           
	            	document.getElementById("pins5").style.display="block";
	                $("#pins5").offset({ left:634, top:296})   
	            	}  */
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    });
    $('#pins1').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("pinleft1").value=xPos;
    	            document.getElementById("pintop1").value=yPos;  
    	            /* if(document.getElementById("pins6").style.display!="block")
	            	{    	           
	            	document.getElementById("pins6").style.display="block";
	                $("#pins6").offset({ left:649, top:296})   
	            	}  */
    	           /*  $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    });
    $('#pins2').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("pinleft2").value=xPos;
    	            document.getElementById("pintop2").value=yPos;  
    	           /*  if(document.getElementById("pins7").style.display!="block")
	            	{    	           
	            	document.getElementById("pins7").style.display="block";
	                $("#pins7").offset({ left:666, top:296})   
	            	} */
    	         /*    $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    });
    $('#pins3').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("pinleft3").value=xPos;
    	            document.getElementById("pintop3").value=yPos; 
    	           /*  if(document.getElementById("pins8").style.display!="block")
	            	{    	           
	            	document.getElementById("pins8").style.display="block";
	                $("#pins8").offset({ left:682, top:296})   
	            	} */
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    });
    $('#pins4').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("pinleft4").value=xPos;
    	            document.getElementById("pintop4").value=yPos;    
    	           /*  if(document.getElementById("pins9").style.display!="block")
	            	{  
	            	alert("pin5");  	           
	            	document.getElementById("pins9").style.display="block";
	                $("#pins9").offset({ left:698, top:296})   
	            	} */
    	        /*     $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    }); 
   
    $('#pins5').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("pinleft5").value=xPos;
    	            document.getElementById("pintop5").value=yPos;    
    	            /* $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    });
    $('#pins6').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("pinleft6").value=xPos;
    	            document.getElementById("pintop6").value=yPos;    
    	            /* $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    });
    $('#pins7').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("pinleft7").value=xPos;
    	            document.getElementById("pintop7").value=yPos;    
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    });
    $('#pins8').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("pinleft8").value=xPos;
    	            document.getElementById("pintop8").value=yPos;    
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    });
    $('#pins9').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("pinleft9").value=xPos;
    	            document.getElementById("pintop9").value=yPos;    
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    }); 
   
    $('#burn').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("burnleft").value=xPos;
    	            document.getElementById("burntop").value=yPos;    
    	           /*  if(document.getElementById("burn5").style.display!="block")
	            	{    	           
	            	document.getElementById("burn5").style.display="block";
	                $("#burn5").offset({ left:893, top:296})   
	                document.getElementById("burnleft5").value="893";
    	            document.getElementById("burntop5").value="296";
	            	} */
    	           /*  $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    }); 
    $('#burn1').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("burnleft1").value=xPos;
    	            document.getElementById("burntop1").value=yPos;    
    	          /*    $('#position').text('x: ' + xPos); 
    	            $('#position1').text('y: ' + yPos); */
    	          /*   if(document.getElementById("burn6").style.display!="block")
	            	{    	           
	            	document.getElementById("burn6").style.display="block";
	                $("#burn6").offset({ left:908, top:296})   
	                document.getElementById("burnleft6").value="908";
    	            document.getElementById("burntop6").value="296";
	            	} */
    	        }, revert: 'invalid'
    	    }); 
    $('#burn2').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("burnleft2").value=xPos;
    	            document.getElementById("burntop2").value=yPos;    
    	         /*    $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  */
    	           /*  if(document.getElementById("burn7").style.display!="block")
	            	{    	           
	            	document.getElementById("burn7").style.display="block";
	                $("#burn7").offset({ left:924, top:296})   
	                document.getElementById("burnleft7").value="924";
    	            document.getElementById("burntop7").value="296";
	            	} */
    	        }, revert: 'invalid'
    	    }); 
    $('#burn3').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("burnleft3").value=xPos;
    	            document.getElementById("burntop3").value=yPos;  
    	           /*  if(document.getElementById("burn8").style.display!="block")
	            	{    	           
	            	document.getElementById("burn8").style.display="block";
	                $("#burn8").offset({ left:941, top:296})   
	                document.getElementById("burnleft8").value="941";
    	            document.getElementById("burntop8").value="296";
	            	} */
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    }); 
    $('#burn4').draggable(
    	    {  containment: $('body'),    
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("burnleft4").value=xPos;
    	            document.getElementById("burntop4").value=yPos;    
    	            /* if(document.getElementById("burn8").style.display!="block")
	            	{    	           
	            	document.getElementById("burn9").style.display="block";
	                $("#burn9").offset({ left:956, top:296})   
	                document.getElementById("burnleft9").value="956";
    	            document.getElementById("burntop9").value="296";
	            	}
    	             */
    	         /*    $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); */
    	                   
    	           
    	        },
    	       
        revert: 'invalid'
        
       
        
    	    });
    $('#burn5').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("burnleft5").value=xPos;
    	            document.getElementById("burntop5").value=yPos;    
    	           /*  $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    }); 
    $('#burn6').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("burnleft6").value=xPos;
    	            document.getElementById("burntop6").value=yPos;    
    	           /*  $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    }); 
    $('#burn7').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("burnleft7").value=xPos;
    	            document.getElementById("burntop7").value=yPos;    
    	         /*    $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    }); 
    $('#burn8').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("burnleft8").value=xPos;
    	            document.getElementById("burntop8").value=yPos;    
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    }); 
    $('#burn9').draggable(
    	    {  containment: $('body'),    
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("burnleft9").value=xPos;
    	            document.getElementById("burntop9").value=yPos;    
    	         /*    $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);
    	                    */
    	           
    	        },
    	       
        revert: 'invalid'
        
       
        
    	    }); 

    $('#stabbing').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("stableft").value=xPos;
    	            document.getElementById("stabtop").value=yPos;    
    	         /*    $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); */
    	            
    	           /*  if(document.getElementById("stabbing5").style.display!="block")
	            	{    	           
	            	document.getElementById("stabbing5").style.display="block";
	                $("#stabbing5").offset({ left:1160, top:296})   
	                document.getElementById("stableft5").value="1160";
    	            document.getElementById("stabtop5").value="296";
	            	} */
    	        }, revert: 'invalid'
    	    }); 
    $('#stabbing1').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("stableft1").value=xPos;
    	            document.getElementById("stabtop1").value=yPos;    
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); */
    	           /*  if(document.getElementById("stabbing6").style.display!="block")
	            	{    	           
	            	document.getElementById("stabbing6").style.display="block";
	                $("#stabbing6").offset({ left:1175, top:296})   
	                document.getElementById("stableft6").value="1175";
    	            document.getElementById("stabtop6").value="296";
	            	} */
    	        }, revert: 'invalid'
    	    }); 
    $('#stabbing2').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("stableft2").value=xPos;
    	            document.getElementById("stabtop2").value=yPos;    
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); */
    	           /*  if(document.getElementById("stabbing7").style.display!="block")
	            	{    	           
	            	document.getElementById("stabbing7").style.display="block";
	                $("#stabbing7").offset({ left:1192, top:296})   
	                document.getElementById("stableft7").value="1192";
    	            document.getElementById("stabtop7").value="296";
	            	} */
    	        }, revert: 'invalid'
    	    }); 
    $('#stabbing3').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("stableft3").value=xPos;
    	            document.getElementById("stabtop3").value=yPos;    
    	            /* if(document.getElementById("stabbing8").style.display!="block")
	            	{    	           
	            	document.getElementById("stabbing8").style.display="block";
	                $("#stabbing8").offset({ left:1208, top:296})   
	                document.getElementById("stableft8").value="1208";
    	            document.getElementById("stabtop8").value="296";
	            	} */
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    }); 
    $('#stabbing4').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("stableft4").value=xPos;
    	            document.getElementById("stabtop4").value=yPos; 
    	           /*  if(document.getElementById("stabbing9").style.display!="block")
	            	{    	           
	            	document.getElementById("stabbing9").style.display="block";
	                $("#stabbing9").offset({ left:1224, top:296})   
	                document.getElementById("stableft9").value="1224";
    	            document.getElementById("stabtop9").value="296";
	            	} */
    	           /*  $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        },
    	         revert: 'invalid'
    	    });
    

    $('#stabbing5').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("stableft5").value=xPos;
    	            document.getElementById("stabtop5").value=yPos;    
    	         /*    $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	           
    	        }, revert: 'invalid'
    	    }); 
    $('#stabbing6').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("stableft6").value=xPos;
    	            document.getElementById("stabtop6").value=yPos;    
    	         /*    $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    }); 
    $('#stabbing7').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("stableft7").value=xPos;
    	            document.getElementById("stabtop7").value=yPos;    
    	         /*    $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    }); 
    $('#stabbing8').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("stableft8").value=xPos;
    	            document.getElementById("stabtop8").value=yPos;    
    	            /* $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        }, revert: 'invalid'
    	    }); 
    $('#stabbing9').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("stableft9").value=xPos;
    	            document.getElementById("stabtop9").value=yPos;    
    	          /*   $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);   */
    	        },
    	         revert: 'invalid'
    	    }); 
    	 
    	  
    	   /* drop: function( event, ui ) {
    	
    } */
    
    $( "#snaptarget" ).droppable({
     
      drop: function( event, ui ) {
    	
    	  
      var $check=document.getElementById("burntop4").value;
     var $check1=document.getElementById("burntop4").value; 
        	      /*  if($check1>299  ) 
    	            {   	             
    	           $("#burn4").offset({ left:657.5, top: 334})
    	           
    	                      
    	            }  	  */           
    	           
       
      }
    });
    /*  $( "#bodyfront" ).droppable({
      
      drop: function( event, ui ) { 
    	 
    	  var $check=document.getElementById("burnleft4").value;
     var $check1=document.getElementById("burntop4").value; 
        	        if($check>=502.5 &&$check<=517.5 && $check1>=292 && $check1<=400 ) 
    	            {   	             
    	           $("#burn4").offset({ left:901.5, top: 266})   	           
    	                      
    	            }  
    	            else if($check==513.5 && $check1==411)	
    	            {
    	              $("#burn4").offset({ left:901.5, top: 266})
    	            } 
    	            else if($check==504.5 && $check1>=406 && $check1<=429)	
    	            {
    	              $("#burn4").offset({ left:901.5, top: 266})
    	            } 
    	            else if($check==505.5 && $check1>=406 && $check1<=429)	
    	            {
    	              $("#burn4").offset({ left:901.5, top: 266})
    	            } 
    	            else if($check==503.5 && $check1>=406 && $check1<=429)	
    	            {
    	              $("#burn4").offset({ left:901.5, top: 266})
    	            } 
    	            else if($check==502.5 && $check1>=400 && $check1<=429)	
    	            {
    	              $("#burn4").offset({ left:901.5, top: 266})
    	            } 
    	            else if($check==506.5 && $check1>=406 && $check1<=429)	
    	            {
    	              $("#burn4").offset({ left:901.5, top: 266})
    	            } 
    	            else if($check==504.5 && $check1==429)	
    	            {
    	              $("#burn4").offset({ left:901.5, top: 266})
    	            } 
    	                      
    	                      
    	           
       
      }
    }); */
    $( "#bodyback" ).droppable({
     
   	 
  	  
  	    drop: function( event, ui ) {
    	 
  	 
  	    	  
     var $check=document.getElementById("burntop4").value;
     var $check1=document.getElementById("burntop4").value; 
        	      /*  if($check1>299  ) 
    	            {   	             
    	           $("#burn4").offset({ left:657.5, top: 334})
    	           
    	                      
    	            }  	 */            
    	           
       
      }
    });
    
   /*  $( "#droppable" ).droppable({
    	/*  activeClass: "ui-state-hover",
         hoverClass: "ui-state-active", */
     /*  drop: function( event, ui ) {
    	  var $image_src = $(ui).attr('src');
    	  alert("image"+$image_src); */
    	  /* /* $( "#draggable" ).draggable({ */
     		/*  handle: ".dragableHandler", 
     		    start: function(e, ui) {
     		       alert("draggableids" +e.originalEvent.target.id);
     		    } */
     /* });   */
    	 /*  var $draggableId = ui.draggable.attr("draggable");
    	  var $droppableId = $(this).attr("draggable");
    	  alert("droppableid"+$droppableId);
    	  $( this )
          .addClass( "ui-state-highlight" )
          .find( "p" )
            .html( "Dropped!" );
    	  console.log("Dragged: " + $(ui.draggable).attr("draggable1")); */
        
       /*  var originalPosition = ui.originalPosition;
        
       var $draggable = ui.offset.left - $(this).offset().left;
       var $newPosY = ui.offset.top - $(this).offset().top;
        var $imgBottom = $(this).offset().top + $(this).height() - ui.offset.top;
    var $imgRight = $(this).offset().left + $(this).width() - ui.offset.left;
    
    if(temp1=='')
    	{
    	var temp1=$draggable;
    	}
    
    //$temp=$temp+$draggable;
       
       alert("pos"+temp1+"position"+$newPosY+"bottom"+$imgBottom+"right"+$imgRight);
      
       /* $( this )         
          .find( "achespos" )
            .html($draggable); */ 
           /*  if(document.getElementById("achespos").value=='1')
            {
            alert("true");
            document.getElementById("achesleft").value=$draggable;
            document.getElementById("achestop").value=$newPosY;
            document.getElementById("achesbottom").value=$imgBottom;
            document.getElementById("achesright").value=$imgRight;
            }
           /*  else if(document.getElementById("aches1pos").value=='2')
            {
            document.getElementById("aches1left").value=$draggable;
            document.getElementById("aches1top").value=$newPosY;
            document.getElementById("aches1bottom").value=$imgBottom;
            document.getElementById("aches1right").value=$imgRight; */
           // }
            
       // var pos = $("#draggable").getAbsolutePosition().x(); 
  	 // alert("pos"+pos);
    /*   }
    }); */
  });

  </script>

<script>

	function checkSubmit()
	{
document.getElementById("pnameerror").innerHTML=" ";
		
		if(document.getElementById("pname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required Field Should not be Empty ";
		
		return false;
		}
		
		
		document.getElementById("numbererror").innerHTML="";
	
		if(isNaN(document.getElementById("number").value))
		{
		document.getElementById("numbererror").innerHTML="Enter Numbers Only";
		return false;
		}
		
document.getElementById("datepickererror").innerHTML=" ";
		
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		}
</script>
   
  

</head>
<body>
<br><br>

	     
<form action="insertsymptom" method="POST">  
	      <div id="right_content">
	
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>PAIN DIAGRAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	      <c:choose>
		 <c:when test="${empty symptoms}">
	 
          <table cellpadding="0" cellspacing="0" border="0" width="100%" height="20" >
          <tr><td width="5%"><span class="err">*</span>Name</td><td><input type="text" name="pname" value="${name}" id="pname"><span id="pnameerror" style="color: red;font-style:italic;"><form:errors path="symptom.pname"></form:errors></td>
<td  width="5%">Number</td><td><input type="text" name="number" id="number"> <span id="numbererror" style="color: red;font-style:italic;" > </span></td>
<td  width="5%" ><span class="err">*</span>Date </td><td ><input type="text" name="date" id="datepicker"><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="symptom.date"></form:errors></td>
</tr></table>
</br>
<p>Please be sure to fill this form out extremely accurately.Mark the area(s) on your body where you feel the described sensation(s).Use the appropriate symbol(s).Mark areas of radiating pain, and include all affected areas.You may draw on the face as well.</p>
 

 <!-- <!-- <div class="ui-widget-content">
    <p> <img id="snaptarget" alt="" src="resources/images/bodyfront.png">.SDAMDPSADSANDKSND.dragmesnaptargetimagewhose z-indexes are controlled automatically..</p>
  </div> --> 

  <div style="width: 320;height:300;border-bottom-color: red;;border-color: black;" class="ui-widget-content"  id="snaptarget"><table width="98%"><tr><td align="right">
    <img  alt="" src="resources/images/bodyfront.png"> </td><td align="left" valign="top" width="55"><img   alt="" src="resources/images/face.png" >
 </td><td align="left">
    <img   alt="" src="resources/images/bodyback.png"> </td></tr> </table> </div>
 
 <table border="0"><tr>
 <td width="100">
 <b>Aches:</b></td>
 <td >
<div id="draggable" class="ui-widget-content">
<img id="1"  src="resources/images/aches.jpg" width="10px" height="10px" >
 <input type="hidden" name="achepath" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft" id="achesleft" value="0" >
<input type="hidden" name="achetop" id="achestop" value="0">
</div>
</td>
<td >
<div id="draggable1" class="ui-widget-content">
 <img id="1"  src="resources/images/aches.jpg" width="10px" height="10px" >
  <input type="hidden" name="achepath1" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft1" id="achesleft1" value="0" >
<input type="hidden" name="achetop1" id="achestop1" value="0" >  
</div></td>
<td >
<div id="draggable2" class="ui-widget-content">
 <img alt=""   src="resources/images/aches.jpg" width="10px" height="10px" > 
 <input type="hidden" name="achepath2" value="resources/images/aches.jpg">
 <input type="hidden" name="acheleft2" id="achesleft2" value="0" >
<input type="hidden" name="achetop2" id="achestop2" value="0" >
</div></td>
<td>
<div id="draggable3" class="ui-widget-content" >
 <img alt=""  src="resources/images/aches.jpg" width="10px" height="10px" > 
 <input type="hidden" name="achepath3" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft3" id="achesleft3" value="0">
<input type="hidden" name="achetop3" id="achestop3" value="0" >
</div></td>
<td>
<div id="draggable4" class="ui-widget-content"  >
 <img alt=""  src="resources/images/aches.jpg" width="10px" height="10px" > 
<input type="hidden" name="achepath4" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft4" id="achesleft4" value="0" >
<input type="hidden" name="achetop4" id="achestop4" value="0"> 
</div></td>

 <td>
 <div id="draggable5" >
<img  alt=""  class="ui-widget-content" src="resources/images/aches.jpg" width="10px" height="10px" > 
<input type="hidden" name="achepath5" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft5" id="achesleft5" value="0" >
<input type="hidden" name="achetop5" id="achestop5" value="0">
</div></td>
<td >
<div id="draggable6" >
<img  class="ui-widget-content" src="resources/images/aches.jpg" width="10px" height="10px" > 
<input type="hidden" name="achepath6" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft6" id="achesleft6" value="0" >
<input type="hidden" name="achetop6" id="achestop6" value="0">
</div>
</td>
<td >
<div id="draggable7" >
 <img alt=""  class="ui-widget-content" src="resources/images/aches.jpg" width="10px" height="10px" > 
 <input type="hidden" name="achepath7" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft7" id="achesleft7" value="0" >
<input type="hidden" name="achetop7" id="achestop7" value="0" >
</div></td>
<td >
<div id="draggable8" >
 <img alt="" class="ui-widget-content" src="resources/images/aches.jpg" width="10px" height="10px" >  
 <input type="hidden" name="achepath8" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft8" id="achesleft8" value="0">
<input type="hidden" name="achetop8" id="achestop8" value="0" >
</div></td>
<td >
<div id="draggable9" class="ui-widget-content">
 <img alt=""  src="resources/images/aches.jpg" width="10px" height="10px" > 
 <input type="hidden" name="achepath9" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft9" id="achesleft9" value="0" >
<input type="hidden" name="achetop9" id="achestop9" value="0"> 
</div></td>

 
 
 <td width="60"></td>

 <td width="100"><b>Numbness:</b></td>
<td><div id="numbness" class="ui-widget-content">
 <img alt="" src="resources/images/numb.png" width="10px" height="10px" > 
 <input type="hidden" name="numbpath" value="resources/images/numb.png">
<input type="hidden" name="numbleft" id="numbleft" value="0" >
<input type="hidden" name="numbtop" id="numbtop" value="0" > 
</div></td>
<td><div id="numbness1" class="ui-widget-content">
 <img alt="" src="resources/images/numb.png" width="10px" height="10px" >  
 <input type="hidden" name="numbpath1" value="resources/images/numb.png">
<input type="hidden" name="numbleft1" id="numbleft1" value="0">
<input type="hidden" name="numbtop1" id="numbtop1" value="0"> 
</div></td>
<td><div id="numbness2" class="ui-widget-content">
 <img alt="" src="resources/images/numb.png" width="10px" height="10px" > 
 <input type="hidden" name="numbpath2" value="resources/images/numb.png">
<input type="hidden" name="numbleft2" id="numbleft2" value="0">
<input type="hidden" name="numbtop2" id="numbtop2" value="0">  
</div></td>
<td><div id="numbness3" class="ui-widget-content">
 <img alt="" src="resources/images/numb.png" width="10px" height="10px" >  
 <input type="hidden" name="numbpath3" id="numbpath3" value="resources/images/numb.png">
<input type="hidden" name="numbleft3" id="numbleft3" value="0">
<input type="hidden" name="numbtop3" id="numbtop3" value="0"> 
</div></td>
<td><div id="numbness4" class="ui-widget-content">
 <img alt="" src="resources/images/numb.png" width="10px" height="10px" >  
 <input type="hidden" name="numbpath4" id="numbpath4" value="resources/images/numb.png">
<input type="hidden" name="numbleft4" id="numbleft4" value="0">
<input type="hidden" name="numbtop4" id="numbtop4" value="0" > 
</div></td>
<td ><div id="numbness5">
 <img alt=""  class="ui-widget-content" src="resources/images/numb.png" width="10px" height="10px">  
 <input type="hidden" name="numbpath5" id="numbpath5" value="resources/images/numb.png">
<input type="hidden" name="numbleft5" id="numbleft5" value="0">
<input type="hidden" name="numbtop5" id="numbtop5" value="0" > 
</div></td>
<td ><div id="numbness6"  >
 <img alt="" class="ui-widget-content" src="resources/images/numb.png" width="10" height="10" >  
 <input type="hidden" name="numbpath6" id="numbpath6" value="resources/images/numb.png">
<input type="hidden" name="numbleft6" id="numbleft6" value="0">
<input type="hidden" name="numbtop6" id="numbtop6" value="0" > 
</div></td>
<td width="10"><div id="numbness7" >
 <img alt="" class="ui-widget-content" src="resources/images/numb.png" width="10px" height="10px" >  
 <input type="hidden" name="numbpath7" id="numbpath7" value="resources/images/numb.png">
<input type="hidden" name="numbleft7" id="numbleft7" value="0">
<input type="hidden" name="numbtop7" id="numbtop7" value="0" > 
</div></td>
<td width="10"><div id="numbness8" >
 <img alt="" class="ui-widget-content" src="resources/images/numb.png" width="10px" height="10px" >  
 <input type="hidden" name="numbpath8" id="numbpath8" value="resources/images/numb.png">
<input type="hidden" name="numbleft8" id="numbleft8" value="0">
<input type="hidden" name="numbtop8" id="numbtop8" value="0" > 
</div></td>
<td width="10"><div id="numbness9"  >
 <img alt="" class="ui-widget-content" src="resources/images/numb.png" width="10px" height="10px" >  
 <input type="hidden" name="numbpath9" id="numbpath9" value="resources/images/numb.png">
<input type="hidden" name="numbleft9" id="numbleft9" value="0">
<input type="hidden" name="numbtop9" id="numbtop9" value="0" > 
</div></td>


<td width="60"></td>
<td width="100" ><b>Pins/Needles:</b></td>
<td ><div id="pins" class="ui-widget-content">
 <img alt="" src="resources/images/pin.png" width="10px" height="10px" > 
 <input type="hidden" name="pinpath" id="pinpath" value="resources/images/pin.png">
<input type="hidden" name="pinleft" id="pinleft" value="0">
<input type="hidden" name="pintop" id="pintop" value="0" >  
</div></td>
<td><div id="pins1" class="ui-widget-content">
 <img alt="" src="resources/images/pin.png" width="10px" height="10px" >
   <input type="hidden" name="pinpath1" id="pinpath1" value="resources/images/pin.png">
<input type="hidden" name="pinleft1" id="pinleft1" value="0">
<input type="hidden" name="pintop1" id="pintop1" value="0" > 
 
</div></td>
<td><div id="pins2" class="ui-widget-content">
 <img alt="" src="resources/images/pin.png" width="10px" height="10px" >
  <input type="hidden" name="pinpath2" id="pinpath2" value="resources/images/pin.png">
<input type="hidden" name="pinleft2" id="pinleft2" value="0">
<input type="hidden" name="pintop2" id="pintop2" value="0" >   
</div></td>
<td><div id="pins3" class="ui-widget-content">
 <img alt="" src="resources/images/pin.png" width="10px" height="10px" >  
 <input type="hidden" name="pinpath3" id="pinpath3" value="resources/images/pin.png">
<input type="hidden" name="pinleft3" id="pinleft3" value="0">
<input type="hidden" name="pintop3" id="pintop3" value="0"> 
</div></td>
<td><div id="pins4" class="ui-widget-content">
 <img alt="" src="resources/images/pin.png" width="10px" height="10px" > 
  <input type="hidden" name="pinpath4" id="pinpath4" value="resources/images/pin.png">
<input type="hidden" name="pinleft4" id="pinleft4" value="0">
<input type="hidden" name="pintop4" id="pintop4" value="0">  
</div></td>
<td width="10"><div id="pins5"  >
 <img alt="" class="ui-widget-content" src="resources/images/pin.png" width="10px" height="10px" > 
 <input type="hidden" name="pinpath5" id="pinpath5" value="resources/images/pin.png">
<input type="hidden" name="pinleft5" id="pinleft5" value="0">
<input type="hidden" name="pintop5" id="pintop5" value="0" >  
</div></td>
<td width="10"><div id="pins6" >
 <img alt=""  class="ui-widget-content" src="resources/images/pin.png" width="10px" height="10px" >
   <input type="hidden" name="pinpath6" id="pinpath6" value="resources/images/pin.png">
<input type="hidden" name="pinleft6" id="pinleft6" value="0">
<input type="hidden" name="pintop6" id="pintop6" value="0" > 
 
</div></td>
<td width="10"><div id="pins7" >
 <img alt="" class="ui-widget-content" src="resources/images/pin.png" width="10px" height="10px" >
  <input type="hidden" name="pinpath7" id="pinpath7" value="resources/images/pin.png">
<input type="hidden" name="pinleft7" id="pinleft7" value="0">
<input type="hidden" name="pintop7" id="pintop7" value="0" >   
</div></td>
<td width="10"><div id="pins8"  >
 <img alt="" src="resources/images/pin.png" class="ui-widget-content" width="10px" height="10px" >  
 <input type="hidden" name="pinpath8" id="pinpath8" value="resources/images/pin.png">
<input type="hidden" name="pinleft8" id="pinleft8" value="0">
<input type="hidden" name="pintop8" id="pintop8" value="0"> 
</div></td>
<td width="10"><div id="pins9"  >
 <img alt="" src="resources/images/pin.png" class="ui-widget-content" width="10px" height="10px" > 
  <input type="hidden" name="pinpath9" id="pinpath9" value="resources/images/pin.png">
<input type="hidden" name="pinleft9" id="pinleft9" value="0">
<input type="hidden" name="pintop9" id="pintop9" value="0">  
</div></td>

<td width="70"></td>
<td width="100"><b>Burning</b></td>
<td><div id="burn" class="ui-widget-content">
 <img alt="" src="resources/images/burn.png" width="10px" height="10px" > 
  <input type="hidden" name="burnpath" id="burnpath" value="resources/images/burn.png">
<input type="hidden" name="burnleft" id="burnleft" value="0">
<input type="hidden" name="burntop" id="burntop" value="0">  
</div></td>
<td><div id="burn1" class="ui-widget-content">
 <img alt="" src="resources/images/burn.png" width="10px" height="10px" >  
 <input type="hidden" name="burnpath1" id="burnpath1" value="resources/images/burn.png">
<input type="hidden" name="burnleft1" id="burnleft1" value="0">
<input type="hidden" name="burntop1" id="burntop1" value="0"> 
</div></td>
<td><div id="burn2" class="ui-widget-content">
 <img alt="" src="resources/images/burn.png" width="10px" height="10px" >  
 <input type="hidden" name="burnpath2" id="burnpath2" value="resources/images/burn.png">
<input type="hidden" name="burnleft2" id="burnleft2" value="0" >
<input type="hidden" name="burntop2" id="burntop2" value="0">
</div></td>
<td><div id="burn3" class="ui-widget-content">
 <img alt="" src="resources/images/burn.png" width="10px" height="10px" > 
 <input type="hidden" name="burnpath3" id="burnpath3" value="resources/images/burn.png">
<input type="hidden" name="burnleft3" id="burnleft3" value="0">
<input type="hidden" name="burntop3" id="burntop3" value="0"> 
</div></td>
<td><div id="burn4" class="ui-widget-content">
 <img alt="" src="resources/images/burn.png" width="10px" height="10px" >
 <input type="hidden" name="burnpath4" id="burnpath4" value="resources/images/burn.png">
<input type="hidden" name="burnleft4" id="burnleft4" value="0">
<input type="hidden" name="burntop4" id="burntop4" value="0" >  
</div></td>
<td width="10"><div id="burn5">
 <img alt="" src="resources/images/burn.png" class="ui-widget-content" width="10px" height="10px" > 
  <input type="hidden" name="burnpath5" id="burnpath5" value="resources/images/burn.png">
<input type="hidden" name="burnleft5" id="burnleft5" value="0">
<input type="hidden" name="burntop5" id="burntop5" value="0">  
</div></td>
<td width="10"><div id="burn6" >
 <img alt="" src="resources/images/burn.png"  class="ui-widget-content" width="10px" height="10px" >  
 <input type="hidden" name="burnpath6" id="burnpath6" value="resources/images/burn.png">
<input type="hidden" name="burnleft6" id="burnleft6" value="0">
<input type="hidden" name="burntop6" id="burntop6" value="0"> 
</div></td>
<td width="10"><div id="burn7"  >
 <img alt="" src="resources/images/burn.png" class="ui-widget-content" width="10px" height="10px" >  
 <input type="hidden" name="burnpath7" id="burnpath7" value="resources/images/burn.png">
<input type="hidden" name="burnleft7" id="burnleft7" value="0" >
<input type="hidden" name="burntop7" id="burntop7" value="0">
</div></td>
<td width="10"><div id="burn8"  >
 <img alt="" src="resources/images/burn.png" class="ui-widget-content" width="10px" height="10px" > 
 <input type="hidden" name="burnpath8" id="burnpath8" value="resources/images/burn.png">
<input type="hidden" name="burnleft8" id="burnleft8" value="0">
<input type="hidden" name="burntop8" id="burntop8" value="0"> 
</div></td>
<td width="10"><div id="burn9"  >
 <img alt="" src="resources/images/burn.png" class="ui-widget-content" width="10px" height="10px" >
 <input type="hidden" name="burnpath9" id="burnpath9" value="resources/images/burn.png">
<input type="hidden" name="burnleft9" id="burnleft9" value="0">
<input type="hidden" name="burntop9" id="burntop9" value="0" >  
</div></td>

<td width="80"></td>
<td width="100"><b>Stabbing</b></td>
<td><div id="stabbing" class="ui-widget-content">
 <img alt="" src="resources/images/stabbing.png" width="10px" height="10px" >  
 <input type="hidden" name="stabpath" id="stabpath" value="resources/images/stabbing.png">
<input type="hidden" name="stableft" id="stableft" value="0" >
<input type="hidden" name="stabtop" id="stabtop" value="0">  
</div></td>
<td><div id="stabbing1" class="ui-widget-content">
 <img alt="" src="resources/images/stabbing.png" width="10px" height="10px" >
 <input type="hidden" name="stabpath1" id="stabpath1" value="resources/images/stabbing.png">
<input type="hidden" name="stableft1" id="stableft1" value="0">
<input type="hidden" name="stabtop1" id="stabtop1" value="0">  
</div></td>
<td><div id="stabbing2" class="ui-widget-content">
 <img alt="" src="resources/images/stabbing.png" width="10px" height="10px" > 
 <input type="hidden" name="stabpath2" id="stabpath2" value="resources/images/stabbing.png">
<input type="hidden" name="stableft2" id="stableft2" value="0" >
<input type="hidden" name="stabtop2" id="stabtop2" value="0">   
 
</div></td>
<td><div id="stabbing3" class="ui-widget-content">
 <img alt="" src="resources/images/stabbing.png" width="10px" height="10px" > 
 <input type="hidden" name="stabpath3" id="stabpath3" value="resources/images/stabbing.png">
<input type="hidden" name="stableft3" id="stableft3" value="0">
<input type="hidden" name="stabtop3" id="stabtop3" value="0">   
</div></td>
<td><div id="stabbing4" class="ui-widget-content">
 <img alt="" src="resources/images/stabbing.png" width="10px" height="10px" >  
 <input type="hidden" name="stabpath4" id="stabpath4" value="resources/images/stabbing.png">
<input type="hidden" name="stableft4" id="stableft4" value="0">
<input type="hidden" name="stabtop4" id="stabtop4" value="0">  
</div></td>  
<td width="10"><div id="stabbing5" >
 <img alt="" src="resources/images/stabbing.png"  class="ui-widget-content" width="10px" height="10px" >  
 <input type="hidden" name="stabpath5" id="stabpath5" value="resources/images/stabbing.png">
<input type="hidden" name="stableft5" id="stableft5" value="0" >
<input type="hidden" name="stabtop5" id="stabtop5" value="0">  
</div></td>
<td width="10"><div id="stabbing6" >
 <img alt="" src="resources/images/stabbing.png"  class="ui-widget-content" width="10px" height="10px" >
 <input type="hidden" name="stabpath6" id="stabpath6" value="resources/images/stabbing.png">
<input type="hidden" name="stableft6" id="stableft6" value="0">
<input type="hidden" name="stabtop6" id="stabtop6" value="0">  
</div></td>
<td width="10"><div id="stabbing7" >
 <img alt="" src="resources/images/stabbing.png"  class="ui-widget-content" width="10px" height="10px" > 
 <input type="hidden" name="stabpath7" id="stabpath7" value="resources/images/stabbing.png">
<input type="hidden" name="stableft7" id="stableft7" value="0" >
<input type="hidden" name="stabtop7" id="stabtop7" value="0">   
 
</div></td>
<td width="10"><div id="stabbing8" class="ui-widget-content" >
 <img alt="" src="resources/images/stabbing.png" width="10px" height="10px" > 
 <input type="hidden" name="stabpath8" id="stabpath8" value="resources/images/stabbing.png">
<input type="hidden" name="stableft8" id="stableft8" value="0">
<input type="hidden" name="stabtop8" id="stabtop8" value="0">   
</div></td>
<td width="10"><div id="stabbing9" class="ui-widget-content" >
 <img alt="" src="resources/images/stabbing.png" width="10px" height="10px" >  
 <input type="hidden" name="stabpath9" id="stabpath9" value="resources/images/stabbing.png">
<input type="hidden" name="stableft9" id="stableft9" value="0">
<input type="hidden" name="stabtop9" id="stabtop9" value="0">  
</div></td> 
   
          
          
          
        
          
          
          
           </tr></table>           </br>
           
         
    
 </br>
</br>
    </c:when>
    <c:otherwise>
 
  <%-- <table cellpadding="0" cellspacing="0" border="0" width="98%" >
          <tr><td width="100"><span class="err">*</span>Name</td><td><input type="hidden" name="symptomno" value="${symptoms.symptomno} "><input type="text" name="pname" value="${symptoms.pname} "><span class="err"><form:errors path="symptom.pname"></form:errors></td><td width="40"></td>
<td  width="100">Number</td><td><input type="text" name="number" value="${symptoms.number}"></td><td width="100"></td>
<td  width="100"><span class="err">*</span>Date</td><td><input type="text" name="date" value="${symptoms.date}" id="datepicker"><span class="err"><form:errors path="symptom.date"></form:errors></td>
</tr></table>
</br>
<p>Please be sure to fill this form out extremely accurately.Mark the area(s) on your body where you feel the described sensation(s).Use the appropriate symbol(s).Mark areas of radiating pain, and include all affected areas.You may draw on the face as well.</p>
 <table><tr><td width="100"><b>Aches:</b></td><td>
<div id="draggable" >
<img id="1" class="ui-widget-content" src="${symptoms.achepath}" width="10px" height="10px" > 
<input type="hidden" name="achepath" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft" id="achesleft" value="${symptoms.acheleft}" >
<input type="hidden" name="achetop" id="achestop" value="${symptoms.achetop}">
</div></td>
<td>
<div id="draggable1">
 <img id="1" class="ui-widget-content" src="${symptoms.achepath1}" width="10px" height="10px" >  
<input type="hidden" name="achepath1" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft1" id="achesleft1" value="${symptoms.acheleft1}" >
<input type="hidden" name="achetop1" id="achestop1" value="${symptoms.achetop1}" >  
</div></td>
<td>
<div id="draggable2" >
 <img alt=""  class="ui-widget-content" src="${symptoms.achepath2}" width="10px" height="10px" > 
 <input type="hidden" name="achepath2" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft2" id="achesleft2" value="${symptoms.acheleft2}" >
<input type="hidden" name="achetop2" id="achestop2" value="${symptoms.achetop2}" >
</div></td>
<td>
<div id="draggable3">
 <img alt="" class="ui-widget-content" src="${symptoms.achepath3}" width="10px" height="10px" >  
 <input type="hidden" name="achepath3" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft3" id="achesleft3" value="${symptoms.acheleft3}">
<input type="hidden" name="achetop3" id="achestop3" value="${symptoms.achetop3}"  >
</div></td>
<td>
<div id="draggable4" >
 <img alt="" class="ui-widget-content" src="${symptoms.achepath4}" width="10px" height="10px" > 
 <input type="hidden" name="achepath4" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft4" id="achesleft4" value="${symptoms.acheleft4}" >
<input type="hidden" name="achetop4" id="achestop4" value="${symptoms.achetop4}" > 
</div></td>
<td width="70"></td>
<td width="100"><b>Numbness:</b></td>
<td><div id="numbness" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath}" width="10px" height="10px" > 
 <input type="hidden" name="numbpath" value="resources/images/numb.png">
<input type="hidden" name="numbleft" id="numbleft" value="${symptoms.numbleft}" >
<input type="hidden" name="numbtop" id="numbtop" value="${symptoms.numbtop}" > 
</div></td>
<td><div id="numbness1" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath1}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath1" value="resources/images/numb.png">
<input type="hidden" name="numbleft1" id="numbleft1" value="${symptoms.numbleft1}">
<input type="hidden" name="numbtop1" id="numbtop1" value="${symptoms.numbtop1}"> 
</div></td>
<td><div id="numbness2" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath2}"  width="10px" height="10px" > 
 <input type="hidden" name="numbpath2" value="resources/images/numb.png">
<input type="hidden" name="numbleft2" id="numbleft2" value="${symptoms.numbleft2}">
<input type="hidden" name="numbtop2" id="numbtop2" value="${symptoms.numbtop2}">  
</div></td>
<td><div id="numbness3" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath3}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath3" id="numbpath3" value="resources/images/numb.png">
<input type="hidden" name="numbleft3" id="numbleft3" value="${symptoms.numbleft3}">
<input type="hidden" name="numbtop3" id="numbtop3" value="${symptoms.numbtop3}"> 
</div></td>
<td><div id="numbness4" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath4}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath4" id="numbpath4" value="resources/images/numb.png">
<input type="hidden" name="numbleft4" id="numbleft4" value="${symptoms.numbleft4}">
<input type="hidden" name="numbtop4" id="numbtop4" value="${symptoms.numbtop4}" > 
</div></td>

<td width="60"></td>
<td width="100" ><b>Pins/Needles:</b></td>
<td ><div id="pins" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath}"  width="10px" height="10px" > 
 <input type="hidden" name="pinpath" id="pinpath" value="resources/images/pin.png">
<input type="hidden" name="pinleft" id="pinleft"  value="${symptoms.pinleft}">
<input type="hidden" name="pintop" id="pintop"  value="${symptoms.pintop}">  
</div></td>
<td><div id="pins1" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath1}"  width="10px" height="10px" >
   <input type="hidden" name="pinpath1" id="pinpath1" value="resources/images/pin.png">
<input type="hidden" name="pinleft1" id="pinleft1" value="${symptoms.pinleft1}">
<input type="hidden" name="pintop1" id="pintop1" value="${symptoms.pintop1}" > 
 
</div></td>
<td><div id="pins2" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath2}"  width="10px" height="10px" >
  <input type="hidden" name="pinpath2" id="pinpath2" value="resources/images/pin.png">
<input type="hidden" name="pinleft2" id="pinleft2" value="${symptoms.pinleft2}">
<input type="hidden" name="pintop2" id="pintop2" value="${symptoms.pintop2}">   
</div></td>
<td><div id="pins3" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath3}"  width="10px" height="10px" >  
 <input type="hidden" name="pinpath3" id="pinpath3" value="resources/images/pin.png">
<input type="hidden" name="pinleft3" id="pinleft3" value="${symptoms.pinleft3}">
<input type="hidden" name="pintop3" id="pintop3" value="${symptoms.pintop3}"> 
</div></td>
<td><div id="pins4" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath4}"  width="10px" height="10px" > 
  <input type="hidden" name="pinpath4" id="pinpath4" value="resources/images/pin.png">
<input type="hidden" name="pinleft4" id="pinleft4" value="${symptoms.pinleft4}">
<input type="hidden" name="pintop4" id="pintop4" value="${symptoms.pintop4}">  
</div></td>
<td width="70"></td>
<td width="100"><b>Burning</b></td>
<td><div id="burn" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath}"  width="10px" height="10px" > 
  <input type="hidden" name="burnpath" id="burnpath" value="resources/images/burn.png">
<input type="hidden" name="burnleft" id="burnleft" value="${symptoms.burnleft}">
<input type="hidden" name="burntop" id="burntop" value="${symptoms.burntop}">  
</div></td>
<td><div id="burn1" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath1}" width="10px" height="10px" >  
 <input type="hidden" name="burnpath1" id="burnpath1" value="resources/images/burn.png">
<input type="hidden" name="burnleft1" id="burnleft1" value="${symptoms.burnleft1}">
<input type="hidden" name="burntop1" id="burntop1" value="${symptoms.burntop1}"> 
</div></td>
<td><div id="burn2" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath2}" width="10px" height="10px" >  
 <input type="hidden" name="burnpath2" id="burnpath2" value="resources/images/burn.png">
<input type="hidden" name="burnleft2" id="burnleft2" value="${symptoms.burnleft2}">
<input type="hidden" name="burntop2" id="burntop2" value="${symptoms.burntop2}">
</div></td>
<td><div id="burn3" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath3}" width="10px" height="10px" > 
 <input type="hidden" name="burnpath3" id="burnpath3" value="resources/images/burn.png">
<input type="hidden" name="burnleft3" id="burnleft3" value="${symptoms.burnleft3}">
<input type="hidden" name="burntop3" id="burntop3" value="${symptoms.burntop3}"> 
</div></td>
<td><div id="burn4" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath4}" width="10px" height="10px" >
 <input type="hidden" name="burnpath4" id="burnpath4" value="resources/images/burn.png">
<input type="hidden" name="burnleft4" id="burnleft4" value="${symptoms.burnleft4}">
<input type="hidden" name="burntop4" id="burntop4" value="${symptoms.burntop4}" >  
</div></td>
<td width="80"></td>
<td width="100"><b>Stabbing</b></td>
<td><div id="stabbing" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath}" width="10px" height="10px" >  
 <input type="hidden" name="stabpath" id="stabpath" value="resources/images/stabbing.png">
<input type="hidden" name="stableft" id="stableft" value="${symptoms.stableft}" >
<input type="hidden" name="stabtop" id="stabtop" value="${symptoms.stabtop}">  
</div></td>
<td><div id="stabbing1" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath1}" width="10px" height="10px" >
 <input type="hidden" name="stabpath1" id="stabpath1" value="resources/images/stabbing.png">
<input type="hidden" name="stableft1" id="stableft1"  value="${symptoms.stableft1}">
<input type="hidden" name="stabtop1" id="stabtop1" value="${symptoms.stabtop1}">  
</div></td>
<td><div id="stabbing2" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath2}" width="10px" height="10px" > 
 <input type="hidden" name="stabpath2" id="stabpath2" value="resources/images/stabbing.png">
<input type="hidden" name="stableft2" id="stableft2"  value="${symptoms.stableft2}">
<input type="hidden" name="stabtop2" id="stabtop2" value="${symptoms.stabtop2}">   
 
</div></td>
<td><div id="stabbing3" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath3}" width="10px" height="10px" > 
 <input type="hidden" name="stabpath3" id="stabpath3" value="resources/images/stabbing.png">
<input type="hidden" name="stableft3" id="stableft3"  value="${symptoms.stableft3}">
<input type="hidden" name="stabtop3" id="stabtop3" value="${symptoms.stabtop3}">   
</div></td>
<td><div id="stabbing4" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath4}" width="10px" height="10px" >  
 <input type="hidden" name="stabpath4" id="stabpath4" value="resources/images/stabbing.png">
<input type="hidden" name="stableft4" id="stableft4"  value="${symptoms.stableft4}">
<input type="hidden" name="stabtop4" id="stabtop4" value="${symptoms.stabtop4}">  
</div></td>      
          
          
        
          
          
          
           </tr></table>
 --%>   
   <table cellpadding="0" cellspacing="0" border="0" width="98%" >
          <tr><td width="100"><span class="err">*</span>Name</td><td width="300"><input type="hidden" name="symptomno" value="${symptoms.symptomno} "><input type="text" name="pname" value="${symptoms.pname} " id="pname"><span id="pnameerror" style="color: red;font-style:italic;"><form:errors path="symptom.pname"></form:errors></td>
<td  width="100">Number</td><td width="100"><input type="text" name="number" value="${symptoms.number}" id="number"></td><span id="numbererror" style="color: red;font-style:italic;"></span>
<td width="100" align="right"><span class="err">*</span>Date</td><td width="300"><input type="text" name="date" value="${symptoms.date}" id="datepicker"><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="symptom.date"></form:errors></td>
</tr></table>
</br>
<table cellpadding="0" cellspacing="0" border="0" width="98%" >
<tr><td width="100">
<p>Please be sure to fill this form out extremely accurately.Mark the area(s) on your body where you feel the described sensation(s).Use the appropriate symbol(s).Mark areas of radiating pain, and include all affected areas.You may draw on the face as well.</p>
</td></tr></table>
 <div style="width: 320;height:300;border-bottom-color: red;;border-color: black;" class="ui-widget-content"  id="snaptarget"><table width="98%"><tr><td align="right">
    <img  alt="" src="resources/images/bodyfront.png"> </td><td align="left" valign="top" width="55"><img   alt="" src="resources/images/face.png" >
 </td><td align="left">
    <img   alt="" src="resources/images/bodyback.png"> </td></tr> </table> </div>
 
 <table><tr><td width="100"><b>Aches:</b></td><td>
<div id="draggable" >
<img id="1" class="ui-widget-content" src="${symptoms.achepath}" width="10px" height="10px" > 
<input type="hidden" name="achepath" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft" id="achesleft" value="${symptoms.acheleft}" >
<input type="hidden" name="achetop" id="achestop" value="${symptoms.achetop}">
</div></td>
<td>
<div id="draggable1">
 <img id="1" class="ui-widget-content" src="${symptoms.achepath1}" width="10px" height="10px" >  
<input type="hidden" name="achepath1" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft1" id="achesleft1" value="${symptoms.acheleft1}" >
<input type="hidden" name="achetop1" id="achestop1" value="${symptoms.achetop1}" >  
</div></td>
<td>
<div id="draggable2" >
 <img alt=""  class="ui-widget-content" src="${symptoms.achepath2}" width="10px" height="10px" > 
 <input type="hidden" name="achepath2" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft2" id="achesleft2" value="${symptoms.acheleft2}" >
<input type="hidden" name="achetop2" id="achestop2" value="${symptoms.achetop2}" >
</div></td>
<td>
<div id="draggable3">
 <img alt="" class="ui-widget-content" src="${symptoms.achepath3}" width="10px" height="10px" >  
 <input type="hidden" name="achepath3" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft3" id="achesleft3" value="${symptoms.acheleft3}">
<input type="hidden" name="achetop3" id="achestop3" value="${symptoms.achetop3}"  >
</div></td>
<td>
<div id="draggable4" >
 <img alt="" class="ui-widget-content" src="${symptoms.achepath4}" width="10px" height="10px" > 
 <input type="hidden" name="achepath4" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft4" id="achesleft4" value="${symptoms.acheleft4}" >
<input type="hidden" name="achetop4" id="achestop4" value="${symptoms.achetop4}" > 
</div></td>
<td>
<div id="draggable5" >
 <img alt="" class="ui-widget-content" src="${symptoms.achepath5}" width="10px" height="10px" > 
 <input type="hidden" name="achepath5" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft5" id="achesleft5" value="${symptoms.acheleft5}" >
<input type="hidden" name="achetop5" id="achestop5" value="${symptoms.achetop5}" > 
</div></td>
<td>
<div id="draggable6" >
 <img alt="" class="ui-widget-content" src="${symptoms.achepath6}" width="10px" height="10px" > 
 <input type="hidden" name="achepath6" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft6" id="achesleft6" value="${symptoms.acheleft6}" >
<input type="hidden" name="achetop6" id="achestop6" value="${symptoms.achetop6}" > 
</div></td>
<td>
<div id="draggable7" >
 <img alt="" class="ui-widget-content" src="${symptoms.achepath7}" width="10px" height="10px" > 
 <input type="hidden" name="achepath7" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft7" id="achesleft7" value="${symptoms.acheleft7}" >
<input type="hidden" name="achetop7" id="achestop7" value="${symptoms.achetop7}" > 
</div></td>
<td>
<div id="draggable8" >
 <img alt="" class="ui-widget-content" src="${symptoms.achepath8}" width="10px" height="10px" > 
 <input type="hidden" name="achepath8" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft8" id="achesleft8" value="${symptoms.acheleft8}" >
<input type="hidden" name="achetop8" id="achestop8" value="${symptoms.achetop8}" > 
</div></td>
<td>
<div id="draggable9" >
 <img alt="" class="ui-widget-content" src="${symptoms.achepath9}" width="10px" height="10px" > 
 <input type="hidden" name="achepath9" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft9" id="achesleft9" value="${symptoms.acheleft9}" >
<input type="hidden" name="achetop9" id="achestop9" value="${symptoms.achetop9}" > 
</div></td>
<td width="60"></td>
<td width="100"><b>Numbness:</b></td>
<td><div id="numbness" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath}" width="10px" height="10px" > 
 <input type="hidden" name="numbpath" value="resources/images/numb.png">
<input type="hidden" name="numbleft" id="numbleft" value="${symptoms.numbleft}" >
<input type="hidden" name="numbtop" id="numbtop" value="${symptoms.numbtop}" > 
</div></td>
<td><div id="numbness1" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath1}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath1" value="resources/images/numb.png">
<input type="hidden" name="numbleft1" id="numbleft1" value="${symptoms.numbleft1}">
<input type="hidden" name="numbtop1" id="numbtop1" value="${symptoms.numbtop1}"> 
</div></td>
<td><div id="numbness2" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath2}"  width="10px" height="10px" > 
 <input type="hidden" name="numbpath2" value="resources/images/numb.png">
<input type="hidden" name="numbleft2" id="numbleft2" value="${symptoms.numbleft2}">
<input type="hidden" name="numbtop2" id="numbtop2" value="${symptoms.numbtop2}">  
</div></td>
<td><div id="numbness3" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath3}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath3" id="numbpath3" value="resources/images/numb.png">
<input type="hidden" name="numbleft3" id="numbleft3" value="${symptoms.numbleft3}">
<input type="hidden" name="numbtop3" id="numbtop3" value="${symptoms.numbtop3}"> 
</div></td>
<td><div id="numbness4" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath4}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath4" id="numbpath4" value="resources/images/numb.png">
<input type="hidden" name="numbleft4" id="numbleft4" value="${symptoms.numbleft4}">
<input type="hidden" name="numbtop4" id="numbtop4" value="${symptoms.numbtop4}" > 
</div></td>
<td><div id="numbness5" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath5}" width="10px" height="10px" > 
 <input type="hidden" name="numbpath5" value="resources/images/numb.png">
<input type="hidden" name="numbleft5" id="numbleft5" value="${symptoms.numbleft5}" >
<input type="hidden" name="numbtop5" id="numbtop5" value="${symptoms.numbtop5}" > 
</div></td>
<td><div id="numbness6" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath6}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath6" value="resources/images/numb.png">
<input type="hidden" name="numbleft6" id="numbleft6" value="${symptoms.numbleft6}">
<input type="hidden" name="numbtop6" id="numbtop6" value="${symptoms.numbtop6}"> 
</div></td>
<td><div id="numbness7" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath7}"  width="10px" height="10px" > 
 <input type="hidden" name="numbpath7" value="resources/images/numb.png">
<input type="hidden" name="numbleft7" id="numbleft7" value="${symptoms.numbleft7}">
<input type="hidden" name="numbtop7" id="numbtop7" value="${symptoms.numbtop7}">  
</div></td>
<td><div id="numbness8" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath8}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath8" id="numbpath8" value="resources/images/numb.png">
<input type="hidden" name="numbleft8" id="numbleft8" value="${symptoms.numbleft8}">
<input type="hidden" name="numbtop8" id="numbtop8" value="${symptoms.numbtop8}"> 
</div></td>
<td><div id="numbness9" class="ui-widget-content">
 <img alt="" src="${symptoms.numbpath9}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath9" id="numbpath9" value="resources/images/numb.png">
<input type="hidden" name="numbleft9" id="numbleft9" value="${symptoms.numbleft9}">
<input type="hidden" name="numbtop9" id="numbtop9" value="${symptoms.numbtop9}" > 
</div></td>


<td width="60"></td>
<td width="100" ><b>Pins/Needles:</b></td>
<td ><div id="pins" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath}"  width="10px" height="10px" > 
 <input type="hidden" name="pinpath" id="pinpath" value="resources/images/pin.png">
<input type="hidden" name="pinleft" id="pinleft"  value="${symptoms.pinleft}">
<input type="hidden" name="pintop" id="pintop"  value="${symptoms.pintop}">  
</div></td>
<td><div id="pins1" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath1}"  width="10px" height="10px" >
   <input type="hidden" name="pinpath1" id="pinpath1" value="resources/images/pin.png">
<input type="hidden" name="pinleft1" id="pinleft1" value="${symptoms.pinleft1}">
<input type="hidden" name="pintop1" id="pintop1" value="${symptoms.pintop1}" > 
 
</div></td>
<td><div id="pins2" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath2}"  width="10px" height="10px" >
  <input type="hidden" name="pinpath2" id="pinpath2" value="resources/images/pin.png">
<input type="hidden" name="pinleft2" id="pinleft2" value="${symptoms.pinleft2}">
<input type="hidden" name="pintop2" id="pintop2" value="${symptoms.pintop2}">   
</div></td>
<td><div id="pins3" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath3}"  width="10px" height="10px" >  
 <input type="hidden" name="pinpath3" id="pinpath3" value="resources/images/pin.png">
<input type="hidden" name="pinleft3" id="pinleft3" value="${symptoms.pinleft3}">
<input type="hidden" name="pintop3" id="pintop3" value="${symptoms.pintop3}"> 
</div></td>
<td><div id="pins4" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath4}"  width="10px" height="10px" > 
  <input type="hidden" name="pinpath4" id="pinpath4" value="resources/images/pin.png">
<input type="hidden" name="pinleft4" id="pinleft4" value="${symptoms.pinleft4}">
<input type="hidden" name="pintop4" id="pintop4" value="${symptoms.pintop4}">  
</div></td>
<td ><div id="pins5" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath5}"  width="10px" height="10px" > 
 <input type="hidden" name="pinpath5" id="pinpath5" value="resources/images/pin.png">
<input type="hidden" name="pinleft5" id="pinleft5"  value="${symptoms.pinleft5}">
<input type="hidden" name="pintop5" id="pintop5"  value="${symptoms.pintop5}">  
</div></td>
<td><div id="pins6" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath6}"  width="10px" height="10px" >
   <input type="hidden" name="pinpath6" id="pinpath6" value="resources/images/pin.png">
<input type="hidden" name="pinleft6" id="pinleft6" value="${symptoms.pinleft6}">
<input type="hidden" name="pintop6" id="pintop6" value="${symptoms.pintop6}" > 
 
</div></td>
<td><div id="pins7" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath7}"  width="10px" height="10px" >
  <input type="hidden" name="pinpath7" id="pinpath7" value="resources/images/pin.png">
<input type="hidden" name="pinleft7" id="pinleft7" value="${symptoms.pinleft7}">
<input type="hidden" name="pintop7" id="pintop7" value="${symptoms.pintop7}">   
</div></td>
<td><div id="pins8" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath8}"  width="10px" height="10px" >  
 <input type="hidden" name="pinpath8" id="pinpath8" value="resources/images/pin.png">
<input type="hidden" name="pinleft8" id="pinleft8" value="${symptoms.pinleft8}">
<input type="hidden" name="pintop8" id="pintop8" value="${symptoms.pintop8}"> 
</div></td>
<td><div id="pins9" class="ui-widget-content">
 <img alt="" src="${symptoms.pinpath9}"  width="10px" height="10px" > 
  <input type="hidden" name="pinpath9" id="pinpath9" value="resources/images/pin.png">
<input type="hidden" name="pinleft9" id="pinleft9" value="${symptoms.pinleft9}">
<input type="hidden" name="pintop9" id="pintop9" value="${symptoms.pintop9}">  
</div></td>

<td width="70"></td>
<td width="100"><b>Burning</b></td>
<td><div id="burn" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath}"  width="10px" height="10px" > 
  <input type="hidden" name="burnpath" id="burnpath" value="resources/images/burn.png">
<input type="hidden" name="burnleft" id="burnleft" value="${symptoms.burnleft}">
<input type="hidden" name="burntop" id="burntop" value="${symptoms.burntop}">  
</div></td>
<td><div id="burn1" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath1}" width="10px" height="10px" >  
 <input type="hidden" name="burnpath1" id="burnpath1" value="resources/images/burn.png">
<input type="hidden" name="burnleft1" id="burnleft1" value="${symptoms.burnleft1}">
<input type="hidden" name="burntop1" id="burntop1" value="${symptoms.burntop1}"> 
</div></td>
<td><div id="burn2" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath2}" width="10px" height="10px" >  
 <input type="hidden" name="burnpath2" id="burnpath2" value="resources/images/burn.png">
<input type="hidden" name="burnleft2" id="burnleft2" value="${symptoms.burnleft2}">
<input type="hidden" name="burntop2" id="burntop2" value="${symptoms.burntop2}">
</div></td>
<td><div id="burn3" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath3}" width="10px" height="10px" > 
 <input type="hidden" name="burnpath3" id="burnpath3" value="resources/images/burn.png">
<input type="hidden" name="burnleft3" id="burnleft3" value="${symptoms.burnleft3}">
<input type="hidden" name="burntop3" id="burntop3" value="${symptoms.burntop3}"> 
</div></td>
<td><div id="burn4" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath4}" width="10px" height="10px" >
 <input type="hidden" name="burnpath4" id="burnpath4" value="resources/images/burn.png">
<input type="hidden" name="burnleft4" id="burnleft4" value="${symptoms.burnleft4}">
<input type="hidden" name="burntop4" id="burntop4" value="${symptoms.burntop4}" >  
</div></td>
<td><div id="burn5" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath5}"  width="10px" height="10px" > 
  <input type="hidden" name="burnpath5" id="burnpath5" value="resources/images/burn.png">
<input type="hidden" name="burnleft5" id="burnleft5" value="${symptoms.burnleft5}">
<input type="hidden" name="burntop5" id="burntop5" value="${symptoms.burntop5}">  
</div></td>
<td><div id="burn6" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath6}" width="10px" height="10px" >  
 <input type="hidden" name="burnpath6" id="burnpath6" value="resources/images/burn.png">
<input type="hidden" name="burnleft6" id="burnleft6" value="${symptoms.burnleft6}">
<input type="hidden" name="burntop6" id="burntop6" value="${symptoms.burntop6}"> 
</div></td>
<td><div id="burn7" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath7}" width="10px" height="10px" >  
 <input type="hidden" name="burnpath7" id="burnpath7" value="resources/images/burn.png">
<input type="hidden" name="burnleft7" id="burnleft7" value="${symptoms.burnleft7}">
<input type="hidden" name="burntop7" id="burntop7" value="${symptoms.burntop7}">
</div></td>
<td><div id="burn8" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath8}" width="10px" height="10px" > 
 <input type="hidden" name="burnpath8" id="burnpath8" value="resources/images/burn.png">
<input type="hidden" name="burnleft8" id="burnleft8" value="${symptoms.burnleft8}">
<input type="hidden" name="burntop8" id="burntop8" value="${symptoms.burntop8}"> 
</div></td>
<td><div id="burn9" class="ui-widget-content">
 <img alt="" src="${symptoms.burnpath9}" width="10px" height="10px" >
 <input type="hidden" name="burnpath9" id="burnpath9" value="resources/images/burn.png">
<input type="hidden" name="burnleft9" id="burnleft9" value="${symptoms.burnleft9}">
<input type="hidden" name="burntop9" id="burntop9" value="${symptoms.burntop9}" >  
</div></td>

<td width="80"></td>
<td width="100"><b>Stabbing</b></td>
<td><div id="stabbing" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath}" width="10px" height="10px" >  
 <input type="hidden" name="stabpath" id="stabpath" value="resources/images/stabbing.png">
<input type="hidden" name="stableft" id="stableft" value="${symptoms.stableft}" >
<input type="hidden" name="stabtop" id="stabtop" value="${symptoms.stabtop}">  
</div></td>
<td><div id="stabbing1" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath1}" width="10px" height="10px" >
 <input type="hidden" name="stabpath1" id="stabpath1" value="resources/images/stabbing.png">
<input type="hidden" name="stableft1" id="stableft1"  value="${symptoms.stableft1}">
<input type="hidden" name="stabtop1" id="stabtop1" value="${symptoms.stabtop1}">  
</div></td>
<td><div id="stabbing2" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath2}" width="10px" height="10px" > 
 <input type="hidden" name="stabpath2" id="stabpath2" value="resources/images/stabbing.png">
<input type="hidden" name="stableft2" id="stableft2"  value="${symptoms.stableft2}">
<input type="hidden" name="stabtop2" id="stabtop2" value="${symptoms.stabtop2}">   
 
</div></td>
<td><div id="stabbing3" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath3}" width="10px" height="10px" > 
 <input type="hidden" name="stabpath3" id="stabpath3" value="resources/images/stabbing.png">
<input type="hidden" name="stableft3" id="stableft3"  value="${symptoms.stableft3}">
<input type="hidden" name="stabtop3" id="stabtop3" value="${symptoms.stabtop3}">   
</div></td>
<td><div id="stabbing4" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath4}" width="10px" height="10px" >  
 <input type="hidden" name="stabpath4" id="stabpath4" value="resources/images/stabbing.png">
<input type="hidden" name="stableft4" id="stableft4"  value="${symptoms.stableft4}">
<input type="hidden" name="stabtop4" id="stabtop4" value="${symptoms.stabtop4}">  
</div></td>      
          
  <td><div id="stabbing5" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath5}" width="10px" height="10px" >  
 <input type="hidden" name="stabpath5" id="stabpath5" value="resources/images/stabbing.png">
<input type="hidden" name="stableft5" id="stableft5" value="${symptoms.stableft5}" >
<input type="hidden" name="stabtop5" id="stabtop5" value="${symptoms.stabtop5}">  
</div></td>
<td><div id="stabbing6" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath6}" width="10px" height="10px" >
 <input type="hidden" name="stabpath6" id="stabpath6" value="resources/images/stabbing.png">
<input type="hidden" name="stableft6" id="stableft6"  value="${symptoms.stableft6}">
<input type="hidden" name="stabtop6" id="stabtop6" value="${symptoms.stabtop6}">  
</div></td>
<td><div id="stabbing7" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath7}" width="10px" height="10px" > 
 <input type="hidden" name="stabpath7" id="stabpath7" value="resources/images/stabbing.png">
<input type="hidden" name="stableft7" id="stableft7"  value="${symptoms.stableft7}">
<input type="hidden" name="stabtop7" id="stabtop7" value="${symptoms.stabtop7}">   
 
</div></td>
<td><div id="stabbing8" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath8}" width="10px" height="10px" > 
 <input type="hidden" name="stabpath8" id="stabpath8" value="resources/images/stabbing.png">
<input type="hidden" name="stableft8" id="stableft8"  value="${symptoms.stableft8}">
<input type="hidden" name="stabtop8" id="stabtop8" value="${symptoms.stabtop8}">   
</div></td>
<td><div id="stabbing9" class="ui-widget-content">
 <img alt="" src="${symptoms.stabpath9}" width="10px" height="10px" >  
 <input type="hidden" name="stabpath9" id="stabpath9" value="resources/images/stabbing.png">
<input type="hidden" name="stableft9" id="stableft9"  value="${symptoms.stableft9}">
<input type="hidden" name="stabtop9" id="stabtop9" value="${symptoms.stabtop9}">  
</div></td>      
          
        
          
          
          
           </tr></table>
 
 
 
 
 
 
         </br>
        <!--  <table width="98%"><tr><td align="right">
    <img alt="" src="resources/images/bodyfront.png"> </td><td align="left" valign="top" width="55"><img   alt="" src="resources/images/face.png" >
 </td><td align="left">
    <img   alt="" src="resources/images/bodyback.png"> </td></tr> </table>
     -->
    
    
    
    
    </c:otherwise>
    </c:choose>
</br>
</br>
<table width="100" align="right"><tr ><td  ><input  type="submit" value="Save" class="submit_btn" onclick="return checkSubmit('this');"></td><td ><a href="viewsymptom" style="color: white" class="submit_btn">Cancel</a></td></tr>
</table>
</form>

<!-- <div id="position"></div><div id="position1"></div> -->

 
     
         	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            