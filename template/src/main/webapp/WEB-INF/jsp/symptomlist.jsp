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
     /* #bottom{ 
    background: url("resources/images/sym.png"); 
    position:relative; 
    width: 330; 
    height: 330;
    } */
     
  </style>
  <script> 
  
  $(function() {
    //$( "#draggable" ).draggable({ revert: "not valid" });
    
    $(window).load(function(){
var oldValue = "";
$("#draggable").offset({ left:  document.getElementById("achesleft").value, top:  document.getElementById("achestop").value})
$("#draggable1").offset({ left:  document.getElementById("achesleft1").value, top:  document.getElementById("achestop1").value})
$("#draggable2").offset({ left:  document.getElementById("achesleft2").value, top:  document.getElementById("achestop2").value})
$("#draggable3").offset({ left:  document.getElementById("achesleft3").value, top:  document.getElementById("achestop3").value})
$("#draggable4").offset({ left:  document.getElementById("achesleft4").value, top:  document.getElementById("achestop4").value})

$("#numbness").offset({ left:  document.getElementById("numbleft").value, top:  document.getElementById("numbtop").value})
$("#numbness1").offset({ left:  document.getElementById("numbleft1").value, top:  document.getElementById("numbtop1").value})
$("#numbness2").offset({ left:  document.getElementById("numbleft2").value, top:  document.getElementById("numbtop2").value})
$("#numbness3").offset({ left:  document.getElementById("numbleft3").value, top:  document.getElementById("numbtop3").value})
$("#numbness4").offset({ left:  document.getElementById("numbleft4").value, top:  document.getElementById("numbtop4").value})

$("#pins").offset({ left:  document.getElementById("pinleft").value, top:  document.getElementById("pintop").value})
$("#pins1").offset({ left:  document.getElementById("pinleft1").value, top:  document.getElementById("pintop1").value})
$("#pins2").offset({ left:  document.getElementById("pinleft2").value, top:  document.getElementById("pintop2").value})
$("#pins3").offset({ left:  document.getElementById("pinleft3").value, top:  document.getElementById("pintop3").value})
$("#pins4").offset({ left:  document.getElementById("pinleft4").value, top:  document.getElementById("pintop4").value})

$("#burn").offset({ left:  document.getElementById("burnleft").value, top:  document.getElementById("burntop").value})
$("#burn1").offset({ left:  document.getElementById("burnleft1").value, top:  document.getElementById("burntop1").value})
$("#burn2").offset({ left:  document.getElementById("burnleft2").value, top:  document.getElementById("burntop2").value})
$("#burn3").offset({ left:  document.getElementById("burnleft3").value, top:  document.getElementById("burntop3").value})
$("#burn4").offset({ left:  document.getElementById("burnleft4").value, top:  document.getElementById("burntop4").value})

$("#stabbing").offset({ left:  document.getElementById("stableft").value, top:  document.getElementById("stabtop").value})
$("#stabbing1").offset({ left:  document.getElementById("stableft1").value, top:  document.getElementById("stabtop1").value})
$("#stabbing2").offset({ left:  document.getElementById("stableft2").value, top:  document.getElementById("stabtop2").value})
$("#stabbing3").offset({ left:  document.getElementById("stableft3").value, top:  document.getElementById("stabtop3").value})
$("#stabbing4").offset({ left:  document.getElementById("stableft4").value, top:  document.getElementById("stabtop4").value})
    });

    
    
  /*   $('#draggable').draggable(
    	    {
    	        drag: function(){
    	            var offset = $(this).offset();
    	            var xPos = offset.left;
    	            var yPos = offset.top;
    	            document.getElementById("achesleft").value=xPos;
    	            document.getElementById("achestop").value=yPos;    
    	             $('#position').text('x: ' + xPos);
    	            $('#position1').text('y: ' + yPos); 
    	            
    	       }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
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
    	        }
    	    }); 
     *//* drop: function( event, ui ) {
    	
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


   
  

</head>
<body>

	     
<form action="updatesymptom" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>VIEW SYMPTOM DIAGRAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	  <c:set value="${symptomform.symptomdetails[0]}" var="symptomdetails"/>
          <table cellpadding="0" cellspacing="0" border="0" width="98%" >
          <tr><td width="100"><span class="err">*</span>Name</td><td width="300"><c:out value="${symptomdetails.pname} "/><span class="err"><form:errors path="symptom.pname"></form:errors></td>
<td  width="100">Number</td><td width="100"><c:out value="${symptomdetails.number}"/></td>
<td  width="100" align="right"><span class="err">*</span>Date</td><td width="300"><input type="text" name="date" value="${symptomdetails.date}" id="datepicker"><span class="err"><form:errors path="symptom.date"></form:errors></td>
</tr></table>
</br>
<p>Please be sure to fill this form out extremely accurately.Mark the area(s) on your body where you feel the described sensation(s).Use the appropriate symbol(s).Mark areas of radiating pain, and include all affected areas.You may draw on the face as well.</p>
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
<td width="70"></td>
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
          
          
        
          
          
          
           </tr></table>
           </br>
         <table width="98%"><tr><td align="right">
    <img id= "bodyfront" alt="" src="resources/images/bodyfront.png"> </td><td align="left" valign="top" width="55"><img  id= "droppable" alt="" src="resources/images/face.png" >
 </td><td align="left">
    <img  id= "bodyback" alt="" src="resources/images/bodyback.png"> </td></tr> </table>
</br>
</br>
<table width="100" align="right"><tr ><td  ><input  type="submit" value="Save" class="submit_btn"></td><td  ><a href="viewsymptom" style="color: white" class="submit_btn">Cancel</a></td></tr>
</table>
</form>
<!-- <div id="position"></div><div id="position1"></div> -->
 
     
         	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            