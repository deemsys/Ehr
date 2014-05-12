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
  #droppable { width:55px; height:81px;}
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
  
  $(function() {
    //$( "#draggable" ).draggable({ revert: "not valid" });
    
    $(window).load(function(){
    	 $("#snaptarget").offset({left:479,top:286})    	
var oldValue = "";
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
$("#bodyfront").offset({left:108,top:330})
    });   
    
    $('#draggable').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("achesleft").value=xPos;
    	            document.getElementById("achestop").value=yPos;    
    	             $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); 
    	            
    	       },stack: "#draggable",revert: 'invalid'
    	    });   
    
 
    $('#draggable1').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("achesleft1").value=xPos;
    	            document.getElementById("achestop1").value=yPos;    
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); 
    	        },stack: "#draggable1", revert: 'invalid'
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); 
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); 
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); 
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
    	             $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); 
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
    	             $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); 
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
    	             $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); 
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
    	             $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); 
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
    	          
    	             $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); 
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
    	        }, revert: 'invalid'
    	    }); 
    $('#burn4').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("burnleft4").value=xPos;
    	            document.getElementById("burntop4").value=yPos;    
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
    	        }, revert: 'invalid'
    	    }); 
    	    $('#burn5').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("burnleft5").value=xPos;
    	            document.getElementById("burntop5").value=yPos;    
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);
    	                   
    	           
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
    	        }, revert: 'invalid'
    	    }); 
    	    $('#stabbing5').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("stableft5").value=xPos;
    	            document.getElementById("stabtop5").value=yPos;    
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
    	           
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
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
    	            $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos);  
    	        },
    	         revert: 'invalid'
    	    }); 
    
    	    
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
     $( "#bodyfront" ).droppable({
      
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
    });
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
   
    /* drop: function( event, ui ) {
    	
    } */
    
    /* $( "#droppable" ).droppable({
    	/*  activeClass: "ui-state-hover",
         hoverClass: "ui-state-active", */
     /*  drop: function( event, ui ) {
    	  var $image_src = $(ui).attr('src');
    	  alert("image"+$image_src); */
    	  /* $( "#draggable" ).draggable({
     		 handle: ".dragableHandler", 
     		    start: function(e, ui) {
     		       alert("draggableids" +e.originalEvent.target.id);
     		    }
     });   */
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
      /* }
    }); */
  });
  /* function randomFromTo(from, to){
       return Math.floor(Math.random() * (to - from + 1) + from);
    }

jQuery(document).ready(function () { 
var tmp;
var x;
var y;
var x_margin;
var y_margin;

for(var i=0;i<=1;i++) {
tmp=jQuery('#droppable').html(); //the map itself



x=0;
y=0;
z=0;
w=0;
//jQuery('#droppable').html(tmp+'<a href="#" style="display:block;position:relative;margin-left:-'+x+'px; margin-top:-'+y+'px;margin-bottom:-'+z+'px;margin-right:-'+w+'px;left:'+x+'px; top:'+y+'px;bottom:'+z+'px;right:'+w+'px; "><img src="resources/images/burn4.png" border="0" width="10" height="10"></a>');

}

}); */
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
			document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty ";
			
			return false;
			}
			}
</script>
  

</head>
<body>
<br><br>
	     
<form action="updatesymptom" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>EDIT SYMPTOM DIAGRAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	  <c:set value="${symptomform.symptomdetails[0]}" var="symptomdetails"/>
          <table cellpadding="0" cellspacing="0" border="0" width="100%" height="20">
          <tr><td width="5%" ><span class="err">*</span>Name</td><td ><input type="hidden" name="symptomno" value="${symptomdetails.symptomno} "><input type="text" name="pname" id="pname" value="${symptomdetails.pname} "><span id="pnameerror" style="color: red;font-style:italic;"><form:errors path="symptom.pname"></form:errors></td>
<td  width="5%">Number</td><td ><input type="text" name="number" value="${symptomdetails.number}" id="number"><span id="numbererror" style="color: red;font-style:italic;"></span></td>
<td width="5%"><span class="err">*</span>Date</td><td ><input type="text" name="date" value="${symptomdetails.date}" id="datepicker"><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="symptom.date"></form:errors></td>
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
<img id="1" class="ui-widget-content" src="${symptomdetails.achepath}" width="10px" height="10px" > 
<input type="hidden" name="achepath" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft" id="achesleft" value="${symptomdetails.acheleft}" >
<input type="hidden" name="achetop" id="achestop" value="${symptomdetails.achetop}">
</div></td>
<td>
<div id="draggable1">
 <img id="1" class="ui-widget-content" src="${symptomdetails.achepath1}" width="10px" height="10px" >  
<input type="hidden" name="achepath1" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft1" id="achesleft1" value="${symptomdetails.acheleft1}" >
<input type="hidden" name="achetop1" id="achestop1" value="${symptomdetails.achetop1}" >  
</div></td>
<td>
<div id="draggable2" >
 <img alt=""  class="ui-widget-content" src="${symptomdetails.achepath2}" width="10px" height="10px" > 
 <input type="hidden" name="achepath2" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft2" id="achesleft2" value="${symptomdetails.acheleft2}" >
<input type="hidden" name="achetop2" id="achestop2" value="${symptomdetails.achetop2}" >
</div></td>
<td>
<div id="draggable3">
 <img alt="" class="ui-widget-content" src="${symptomdetails.achepath3}" width="10px" height="10px" >  
 <input type="hidden" name="achepath3" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft3" id="achesleft3" value="${symptomdetails.acheleft3}">
<input type="hidden" name="achetop3" id="achestop3" value="${symptomdetails.achetop3}"  >
</div></td>
<td>
<div id="draggable4" >
 <img alt="" class="ui-widget-content" src="${symptomdetails.achepath4}" width="10px" height="10px" > 
 <input type="hidden" name="achepath4" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft4" id="achesleft4" value="${symptomdetails.acheleft4}" >
<input type="hidden" name="achetop4" id="achestop4" value="${symptomdetails.achetop4}" > 
</div></td>
<td>
<div id="draggable5" >
 <img alt="" class="ui-widget-content" src="${symptomdetails.achepath5}" width="10px" height="10px" > 
 <input type="hidden" name="achepath5" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft5" id="achesleft5" value="${symptomdetails.acheleft5}" >
<input type="hidden" name="achetop5" id="achestop5" value="${symptomdetails.achetop5}" > 
</div></td>
<td>
<div id="draggable6" >
 <img alt="" class="ui-widget-content" src="${symptomdetails.achepath6}" width="10px" height="10px" > 
 <input type="hidden" name="achepath6" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft6" id="achesleft6" value="${symptomdetails.acheleft6}" >
<input type="hidden" name="achetop6" id="achestop6" value="${symptomdetails.achetop6}" > 
</div></td>
<td>
<div id="draggable7" >
 <img alt="" class="ui-widget-content" src="${symptomdetails.achepath7}" width="10px" height="10px" > 
 <input type="hidden" name="achepath7" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft7" id="achesleft7" value="${symptomdetails.acheleft7}" >
<input type="hidden" name="achetop7" id="achestop7" value="${symptomdetails.achetop7}" > 
</div></td>
<td>
<div id="draggable8" >
 <img alt="" class="ui-widget-content" src="${symptomdetails.achepath8}" width="10px" height="10px" > 
 <input type="hidden" name="achepath8" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft8" id="achesleft8" value="${symptomdetails.acheleft8}" >
<input type="hidden" name="achetop8" id="achestop8" value="${symptomdetails.achetop8}" > 
</div></td>
<td>
<div id="draggable9" >
 <img alt="" class="ui-widget-content" src="${symptomdetails.achepath9}" width="10px" height="10px" > 
 <input type="hidden" name="achepath9" value="resources/images/aches.jpg">
<input type="hidden" name="acheleft9" id="achesleft9" value="${symptomdetails.acheleft9}" >
<input type="hidden" name="achetop9" id="achestop9" value="${symptomdetails.achetop9}" > 
</div></td>
<td width="60"></td>
<td width="100"><b>Numbness:</b></td>
<td><div id="numbness" class="ui-widget-content">
 <img alt="" src="${symptomdetails.numbpath}" width="10px" height="10px" > 
 <input type="hidden" name="numbpath" value="resources/images/numb.png">
<input type="hidden" name="numbleft" id="numbleft" value="${symptomdetails.numbleft}" >
<input type="hidden" name="numbtop" id="numbtop" value="${symptomdetails.numbtop}" > 
</div></td>
<td><div id="numbness1" class="ui-widget-content">
 <img alt="" src="${symptomdetails.numbpath1}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath1" value="resources/images/numb.png">
<input type="hidden" name="numbleft1" id="numbleft1" value="${symptomdetails.numbleft1}">
<input type="hidden" name="numbtop1" id="numbtop1" value="${symptomdetails.numbtop1}"> 
</div></td>
<td><div id="numbness2" class="ui-widget-content">
 <img alt="" src="${symptomdetails.numbpath2}"  width="10px" height="10px" > 
 <input type="hidden" name="numbpath2" value="resources/images/numb.png">
<input type="hidden" name="numbleft2" id="numbleft2" value="${symptomdetails.numbleft2}">
<input type="hidden" name="numbtop2" id="numbtop2" value="${symptomdetails.numbtop2}">  
</div></td>
<td><div id="numbness3" class="ui-widget-content">
 <img alt="" src="${symptomdetails.numbpath3}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath3" id="numbpath3" value="resources/images/numb.png">
<input type="hidden" name="numbleft3" id="numbleft3" value="${symptomdetails.numbleft3}">
<input type="hidden" name="numbtop3" id="numbtop3" value="${symptomdetails.numbtop3}"> 
</div></td>
<td><div id="numbness4" class="ui-widget-content">
 <img alt="" src="${symptomdetails.numbpath4}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath4" id="numbpath4" value="resources/images/numb.png">
<input type="hidden" name="numbleft4" id="numbleft4" value="${symptomdetails.numbleft4}">
<input type="hidden" name="numbtop4" id="numbtop4" value="${symptomdetails.numbtop4}" > 
</div></td>
<td><div id="numbness5" class="ui-widget-content">
 <img alt="" src="${symptomdetails.numbpath5}" width="10px" height="10px" > 
 <input type="hidden" name="numbpath5" value="resources/images/numb.png">
<input type="hidden" name="numbleft5" id="numbleft5" value="${symptomdetails.numbleft5}" >
<input type="hidden" name="numbtop5" id="numbtop5" value="${symptomdetails.numbtop5}" > 
</div></td>
<td><div id="numbness6" class="ui-widget-content">
 <img alt="" src="${symptomdetails.numbpath6}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath6" value="resources/images/numb.png">
<input type="hidden" name="numbleft6" id="numbleft6" value="${symptomdetails.numbleft6}">
<input type="hidden" name="numbtop6" id="numbtop6" value="${symptomdetails.numbtop6}"> 
</div></td>
<td><div id="numbness7" class="ui-widget-content">
 <img alt="" src="${symptomdetails.numbpath7}"  width="10px" height="10px" > 
 <input type="hidden" name="numbpath7" value="resources/images/numb.png">
<input type="hidden" name="numbleft7" id="numbleft7" value="${symptomdetails.numbleft7}">
<input type="hidden" name="numbtop7" id="numbtop7" value="${symptomdetails.numbtop7}">  
</div></td>
<td><div id="numbness8" class="ui-widget-content">
 <img alt="" src="${symptomdetails.numbpath8}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath8" id="numbpath8" value="resources/images/numb.png">
<input type="hidden" name="numbleft8" id="numbleft8" value="${symptomdetails.numbleft8}">
<input type="hidden" name="numbtop8" id="numbtop8" value="${symptomdetails.numbtop8}"> 
</div></td>
<td><div id="numbness9" class="ui-widget-content">
 <img alt="" src="${symptomdetails.numbpath9}"  width="10px" height="10px" >  
 <input type="hidden" name="numbpath9" id="numbpath9" value="resources/images/numb.png">
<input type="hidden" name="numbleft9" id="numbleft9" value="${symptomdetails.numbleft9}">
<input type="hidden" name="numbtop9" id="numbtop9" value="${symptomdetails.numbtop9}" > 
</div></td>


<td width="60"></td>
<td width="100" ><b>Pins/Needles:</b></td>
<td ><div id="pins" class="ui-widget-content">
 <img alt="" src="${symptomdetails.pinpath}"  width="10px" height="10px" > 
 <input type="hidden" name="pinpath" id="pinpath" value="resources/images/pin.png">
<input type="hidden" name="pinleft" id="pinleft"  value="${symptomdetails.pinleft}">
<input type="hidden" name="pintop" id="pintop"  value="${symptomdetails.pintop}">  
</div></td>
<td><div id="pins1" class="ui-widget-content">
 <img alt="" src="${symptomdetails.pinpath1}"  width="10px" height="10px" >
   <input type="hidden" name="pinpath1" id="pinpath1" value="resources/images/pin.png">
<input type="hidden" name="pinleft1" id="pinleft1" value="${symptomdetails.pinleft1}">
<input type="hidden" name="pintop1" id="pintop1" value="${symptomdetails.pintop1}" > 
 
</div></td>
<td><div id="pins2" class="ui-widget-content">
 <img alt="" src="${symptomdetails.pinpath2}"  width="10px" height="10px" >
  <input type="hidden" name="pinpath2" id="pinpath2" value="resources/images/pin.png">
<input type="hidden" name="pinleft2" id="pinleft2" value="${symptomdetails.pinleft2}">
<input type="hidden" name="pintop2" id="pintop2" value="${symptomdetails.pintop2}">   
</div></td>
<td><div id="pins3" class="ui-widget-content">
 <img alt="" src="${symptomdetails.pinpath3}"  width="10px" height="10px" >  
 <input type="hidden" name="pinpath3" id="pinpath3" value="resources/images/pin.png">
<input type="hidden" name="pinleft3" id="pinleft3" value="${symptomdetails.pinleft3}">
<input type="hidden" name="pintop3" id="pintop3" value="${symptomdetails.pintop3}"> 
</div></td>
<td><div id="pins4" class="ui-widget-content">
 <img alt="" src="${symptomdetails.pinpath4}"  width="10px" height="10px" > 
  <input type="hidden" name="pinpath4" id="pinpath4" value="resources/images/pin.png">
<input type="hidden" name="pinleft4" id="pinleft4" value="${symptomdetails.pinleft4}">
<input type="hidden" name="pintop4" id="pintop4" value="${symptomdetails.pintop4}">  
</div></td>
<td ><div id="pins5" class="ui-widget-content">
 <img alt="" src="${symptomdetails.pinpath5}"  width="10px" height="10px" > 
 <input type="hidden" name="pinpath5" id="pinpath5" value="resources/images/pin.png">
<input type="hidden" name="pinleft5" id="pinleft5"  value="${symptomdetails.pinleft5}">
<input type="hidden" name="pintop5" id="pintop5"  value="${symptomdetails.pintop5}">  
</div></td>
<td><div id="pins6" class="ui-widget-content">
 <img alt="" src="${symptomdetails.pinpath6}"  width="10px" height="10px" >
   <input type="hidden" name="pinpath6" id="pinpath6" value="resources/images/pin.png">
<input type="hidden" name="pinleft6" id="pinleft6" value="${symptomdetails.pinleft6}">
<input type="hidden" name="pintop6" id="pintop6" value="${symptomdetails.pintop6}" > 
 
</div></td>
<td><div id="pins7" class="ui-widget-content">
 <img alt="" src="${symptomdetails.pinpath7}"  width="10px" height="10px" >
  <input type="hidden" name="pinpath7" id="pinpath7" value="resources/images/pin.png">
<input type="hidden" name="pinleft7" id="pinleft7" value="${symptomdetails.pinleft7}">
<input type="hidden" name="pintop7" id="pintop7" value="${symptomdetails.pintop7}">   
</div></td>
<td><div id="pins8" class="ui-widget-content">
 <img alt="" src="${symptomdetails.pinpath8}"  width="10px" height="10px" >  
 <input type="hidden" name="pinpath8" id="pinpath8" value="resources/images/pin.png">
<input type="hidden" name="pinleft8" id="pinleft8" value="${symptomdetails.pinleft8}">
<input type="hidden" name="pintop8" id="pintop8" value="${symptomdetails.pintop8}"> 
</div></td>
<td><div id="pins9" class="ui-widget-content">
 <img alt="" src="${symptomdetails.pinpath9}"  width="10px" height="10px" > 
  <input type="hidden" name="pinpath9" id="pinpath9" value="resources/images/pin.png">
<input type="hidden" name="pinleft9" id="pinleft9" value="${symptomdetails.pinleft9}">
<input type="hidden" name="pintop9" id="pintop9" value="${symptomdetails.pintop9}">  
</div></td>

<td width="70"></td>
<td width="100"><b>Burning</b></td>
<td><div id="burn" class="ui-widget-content">
 <img alt="" src="${symptomdetails.burnpath}"  width="10px" height="10px" > 
  <input type="hidden" name="burnpath" id="burnpath" value="resources/images/burn.png">
<input type="hidden" name="burnleft" id="burnleft" value="${symptomdetails.burnleft}">
<input type="hidden" name="burntop" id="burntop" value="${symptomdetails.burntop}">  
</div></td>
<td><div id="burn1" class="ui-widget-content">
 <img alt="" src="${symptomdetails.burnpath1}" width="10px" height="10px" >  
 <input type="hidden" name="burnpath1" id="burnpath1" value="resources/images/burn.png">
<input type="hidden" name="burnleft1" id="burnleft1" value="${symptomdetails.burnleft1}">
<input type="hidden" name="burntop1" id="burntop1" value="${symptomdetails.burntop1}"> 
</div></td>
<td><div id="burn2" class="ui-widget-content">
 <img alt="" src="${symptomdetails.burnpath2}" width="10px" height="10px" >  
 <input type="hidden" name="burnpath2" id="burnpath2" value="resources/images/burn.png">
<input type="hidden" name="burnleft2" id="burnleft2" value="${symptomdetails.burnleft2}">
<input type="hidden" name="burntop2" id="burntop2" value="${symptomdetails.burntop2}">
</div></td>
<td><div id="burn3" class="ui-widget-content">
 <img alt="" src="${symptomdetails.burnpath3}" width="10px" height="10px" > 
 <input type="hidden" name="burnpath3" id="burnpath3" value="resources/images/burn.png">
<input type="hidden" name="burnleft3" id="burnleft3" value="${symptomdetails.burnleft3}">
<input type="hidden" name="burntop3" id="burntop3" value="${symptomdetails.burntop3}"> 
</div></td>
<td><div id="burn4" class="ui-widget-content">
 <img alt="" src="${symptomdetails.burnpath4}" width="10px" height="10px" >
 <input type="hidden" name="burnpath4" id="burnpath4" value="resources/images/burn.png">
<input type="hidden" name="burnleft4" id="burnleft4" value="${symptomdetails.burnleft4}">
<input type="hidden" name="burntop4" id="burntop4" value="${symptomdetails.burntop4}" >  
</div></td>
<td><div id="burn5" class="ui-widget-content">
 <img alt="" src="${symptomdetails.burnpath5}"  width="10px" height="10px" > 
  <input type="hidden" name="burnpath5" id="burnpath5" value="resources/images/burn.png">
<input type="hidden" name="burnleft5" id="burnleft5" value="${symptomdetails.burnleft5}">
<input type="hidden" name="burntop5" id="burntop5" value="${symptomdetails.burntop5}">  
</div></td>
<td><div id="burn6" class="ui-widget-content">
 <img alt="" src="${symptomdetails.burnpath6}" width="10px" height="10px" >  
 <input type="hidden" name="burnpath6" id="burnpath6" value="resources/images/burn.png">
<input type="hidden" name="burnleft6" id="burnleft6" value="${symptomdetails.burnleft6}">
<input type="hidden" name="burntop6" id="burntop6" value="${symptomdetails.burntop6}"> 
</div></td>
<td><div id="burn7" class="ui-widget-content">
 <img alt="" src="${symptomdetails.burnpath7}" width="10px" height="10px" >  
 <input type="hidden" name="burnpath7" id="burnpath7" value="resources/images/burn.png">
<input type="hidden" name="burnleft7" id="burnleft7" value="${symptomdetails.burnleft7}">
<input type="hidden" name="burntop7" id="burntop7" value="${symptomdetails.burntop7}">
</div></td>
<td><div id="burn8" class="ui-widget-content">
 <img alt="" src="${symptomdetails.burnpath8}" width="10px" height="10px" > 
 <input type="hidden" name="burnpath8" id="burnpath8" value="resources/images/burn.png">
<input type="hidden" name="burnleft8" id="burnleft8" value="${symptomdetails.burnleft8}">
<input type="hidden" name="burntop8" id="burntop8" value="${symptomdetails.burntop8}"> 
</div></td>
<td><div id="burn9" class="ui-widget-content">
 <img alt="" src="${symptomdetails.burnpath9}" width="10px" height="10px" >
 <input type="hidden" name="burnpath9" id="burnpath9" value="resources/images/burn.png">
<input type="hidden" name="burnleft9" id="burnleft9" value="${symptomdetails.burnleft9}">
<input type="hidden" name="burntop9" id="burntop9" value="${symptomdetails.burntop9}" >  
</div></td>

<td width="80"></td>
<td width="100"><b>Stabbing</b></td>
<td><div id="stabbing" class="ui-widget-content">
 <img alt="" src="${symptomdetails.stabpath}" width="10px" height="10px" >  
 <input type="hidden" name="stabpath" id="stabpath" value="resources/images/stabbing.png">
<input type="hidden" name="stableft" id="stableft" value="${symptomdetails.stableft}" >
<input type="hidden" name="stabtop" id="stabtop" value="${symptomdetails.stabtop}">  
</div></td>
<td><div id="stabbing1" class="ui-widget-content">
 <img alt="" src="${symptomdetails.stabpath1}" width="10px" height="10px" >
 <input type="hidden" name="stabpath1" id="stabpath1" value="resources/images/stabbing.png">
<input type="hidden" name="stableft1" id="stableft1"  value="${symptomdetails.stableft1}">
<input type="hidden" name="stabtop1" id="stabtop1" value="${symptomdetails.stabtop1}">  
</div></td>
<td><div id="stabbing2" class="ui-widget-content">
 <img alt="" src="${symptomdetails.stabpath2}" width="10px" height="10px" > 
 <input type="hidden" name="stabpath2" id="stabpath2" value="resources/images/stabbing.png">
<input type="hidden" name="stableft2" id="stableft2"  value="${symptomdetails.stableft2}">
<input type="hidden" name="stabtop2" id="stabtop2" value="${symptomdetails.stabtop2}">   
 
</div></td>
<td><div id="stabbing3" class="ui-widget-content">
 <img alt="" src="${symptomdetails.stabpath3}" width="10px" height="10px" > 
 <input type="hidden" name="stabpath3" id="stabpath3" value="resources/images/stabbing.png">
<input type="hidden" name="stableft3" id="stableft3"  value="${symptomdetails.stableft3}">
<input type="hidden" name="stabtop3" id="stabtop3" value="${symptomdetails.stabtop3}">   
</div></td>
<td><div id="stabbing4" class="ui-widget-content">
 <img alt="" src="${symptomdetails.stabpath4}" width="10px" height="10px" >  
 <input type="hidden" name="stabpath4" id="stabpath4" value="resources/images/stabbing.png">
<input type="hidden" name="stableft4" id="stableft4"  value="${symptomdetails.stableft4}">
<input type="hidden" name="stabtop4" id="stabtop4" value="${symptomdetails.stabtop4}">  
</div></td>      
          
  <td><div id="stabbing5" class="ui-widget-content">
 <img alt="" src="${symptomdetails.stabpath5}" width="10px" height="10px" >  
 <input type="hidden" name="stabpath5" id="stabpath5" value="resources/images/stabbing.png">
<input type="hidden" name="stableft5" id="stableft5" value="${symptomdetails.stableft5}" >
<input type="hidden" name="stabtop5" id="stabtop5" value="${symptomdetails.stabtop5}">  
</div></td>
<td><div id="stabbing6" class="ui-widget-content">
 <img alt="" src="${symptomdetails.stabpath6}" width="10px" height="10px" >
 <input type="hidden" name="stabpath6" id="stabpath6" value="resources/images/stabbing.png">
<input type="hidden" name="stableft6" id="stableft6"  value="${symptomdetails.stableft6}">
<input type="hidden" name="stabtop6" id="stabtop6" value="${symptomdetails.stabtop6}">  
</div></td>
<td><div id="stabbing7" class="ui-widget-content">
 <img alt="" src="${symptomdetails.stabpath7}" width="10px" height="10px" > 
 <input type="hidden" name="stabpath7" id="stabpath7" value="resources/images/stabbing.png">
<input type="hidden" name="stableft7" id="stableft7"  value="${symptomdetails.stableft7}">
<input type="hidden" name="stabtop7" id="stabtop7" value="${symptomdetails.stabtop7}">   
 
</div></td>
<td><div id="stabbing8" class="ui-widget-content">
 <img alt="" src="${symptomdetails.stabpath8}" width="10px" height="10px" > 
 <input type="hidden" name="stabpath8" id="stabpath8" value="resources/images/stabbing.png">
<input type="hidden" name="stableft8" id="stableft8"  value="${symptomdetails.stableft8}">
<input type="hidden" name="stabtop8" id="stabtop8" value="${symptomdetails.stabtop8}">   
</div></td>
<td><div id="stabbing9" class="ui-widget-content">
 <img alt="" src="${symptomdetails.stabpath9}" width="10px" height="10px" >  
 <input type="hidden" name="stabpath9" id="stabpath9" value="resources/images/stabbing.png">
<input type="hidden" name="stableft9" id="stableft9"  value="${symptomdetails.stableft9}">
<input type="hidden" name="stabtop9" id="stabtop9" value="${symptomdetails.stabtop9}">  
</div></td>      
          
        
          
          
          
           </tr></table>
           </br>
         <!-- <table width="98%"><tr><td align="right">
    <img id= "bodyfront" alt="" src="resources/images/bodyfront.png"> </td><td align="left" valign="top" width="55"><img  id= "droppable" alt="" src="resources/images/face.png" >
 </td><td align="left">
    <img  id= "bodyback" alt="" src="resources/images/bodyback.png"> </td></tr> </table>
 --></br>
</br>
<table width="100" align="right"><tr ><td  ><input  type="submit" value="Update" class="submit_btn" onclick="return checkSubmit('this');"></td><td  ><a href="deletesymptomdetails" style="color: white" class="submit_btn" onclick="return confirmation()">Delete</a></td></tr>
</table>
</form>
<!-- <div id="position"></div><div id="position1"></div> -->
 
     
        <script type="text/javascript">
	function confirmation() 
	{
	var answer = confirm("Are you Sure You Want to Delete Participant ?")
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
	</script> 	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            