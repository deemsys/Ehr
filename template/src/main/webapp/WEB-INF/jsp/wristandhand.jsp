<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<c:if test="${wrist=='1'}">
<script>
window.close();
</script>
</c:if>
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
   /*  $("#btnPrevious").live("click", function () {
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
    }); */
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
	$("#otherdefict").on("keypress", function(e) {
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
	$("#diagnosis6").on("keypress", function(e) {
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
</script>
<script>
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}



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
          function isNumberKey(evt)
          {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

             return true;
          }  
          
          </script> 
  
<script>
  function printPage(id)
  {
	
	        document.getElementById('print').style.visibility = 'hidden';
	         document.getElementById('print1').style.visibility = 'hidden';
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
      document.getElementById('print1').style.visibility = 'visible';
     document.getElementById('saveid').style.visibility = 'visible';
     document.getElementById('cancelid').style.visibility = 'visible';
	  
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
	function check(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength(){
    var fieldVal = document.getElementById('shdleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('shdleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('shdleft').value = str;
    }
     
    }
	</script>
	<script>
	function check1(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength1(){
    var fieldVal = document.getElementById('shdright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('shdright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('shdright').value = str;
    }
     
    }
	</script>
	
	<script>
	function check2(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength2(){
    var fieldVal = document.getElementById('elbflexleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('elbflexleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('elbflexleft').value = str;
    }
     
    }
	</script>
	<script>
	function check3(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength3(){
    var fieldVal = document.getElementById('elbflexright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('elbflexright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('elbflexright').value = str;
    }
     
    }
	</script>
	
	<script>
	function check4(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength4(){
    var fieldVal = document.getElementById('elbextleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('elbextleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('elbextleft').value = str;
    }
     
    }
	</script>
	
	<script>
	function check5(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength5(){
    var fieldVal = document.getElementById('elbextright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('elbextright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('elbextright').value = str;
    }
     
    }
	</script>
	
	<script>
	function check6(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength6(){
    var fieldVal = document.getElementById('digitflexionleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('digitflexionleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('digitflexionleft').value = str;
    }
     
    }
	</script>
	
	<script>
	function check7(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength7(){
    var fieldVal = document.getElementById('digitflexionright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('digitflexionright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('digitflexionright').value = str;
    }
     
    }
	</script>
	
	<script>
	function check8(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength8(){
    var fieldVal = document.getElementById('digitabdleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('digitabdleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('digitabdleft').value = str;
    }
     
    }
	</script>
	<script>
	function check9(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength9(){
    var fieldVal = document.getElementById('digitabdright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('digitabdright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('digitabdright').value = str;
    }
     
    }
	</script>
	
	<script>
	function check10(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength10(){
    var fieldVal = document.getElementById('bicepsleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('bicepsleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('bicepsleft').value = str;
    }
     
    }
	</script>
	
	<script>
	function check11(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength11(){
    var fieldVal = document.getElementById('bicepsright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('bicepsright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('bicepsright').value = str;
    }
     
    }
	</script>
	
	<script>
	function check12(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength12(){
    var fieldVal = document.getElementById('brachioradleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('brachioradleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('brachioradleft').value = str;
    }
     
    }
	</script>
	<script>
	function check13(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength13(){
    var fieldVal = document.getElementById('brachioradright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('brachioradright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('brachioradright').value = str;
    }
     
    }
	</script>
	<script>
	function check14(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength14(){
    var fieldVal = document.getElementById('tricepsleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('tricepsleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('tricepsleft').value = str;
    }
     
    }
	</script>
	<script>
	function check15(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength15(){
    var fieldVal = document.getElementById('tricepsright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('tricepsright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('tricepsright').value = str;
    }
     
    }
	</script>
</head>
<body>
<br><br>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2" onclick="return checkSubmit('this');">2</a></li>    
  </ul>  
	     <div id="tabs-1">
	     
<form action="insertwristexam" method="POST">  
<input type="hidden" name="username" value="${username}">
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div id="block1">
	            <div class="headings altheading">
	                <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	            <center> <h2>WRIST AND HAND INITIAL EXAM </h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	     <c:choose>
<c:when test="${empty wristdetails}">
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><span class="err">*</span>&nbsp;&nbsp;Patient Name:</td>
           <td width="200"><input type="text" name="pname" id="pname" onInput="return validatename(id)";><br><span class="err" id="pnameerror"><form:errors path="wristexamdetails.pname"></form:errors></td><td width="650"></td>
           <td width="50"><span class="err">*</span>&nbsp;&nbsp;Date:&nbsp;</td> <td width="200"><input type="text" name="date" id="datepicker"><br><span class="err" id="datepickererror"><form:errors path="wristexamdetails.date"></form:errors></td>
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION </b></div>
           <table >
           <tr>      
           
            
           
           </tr>
<tr height="10"></tr>
           <tr>
           <td style="width: 123px; ">Muscle Symmetry:</td>
           <td><input type="text" name="muscle" id="muscle" onInput="return validatename(id)";></td>
             <td width="135" style="width: 159px; ">Swelling  / Discoloration:</td>
             <td width="40"><input type="text" name="swelling" id="swelling" onInput="return validatename(id)";></td>
           
           
           <td width="139" style="width: 125px; ">Dominant Hand</td><td style="width: 143px; "><input type="radio" value="Left" name="dominanthand">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;<input type="radio" value="right" name="dominanthand">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="130" style="width: 102px; ">A & O:</td><td><select name="ao"><option value="excellent">excellent</option><option value="good"> good</option><option value="fair"> fair</option><option value="severe"> severe</option></select></td>
           </tr>  
           </table> 
          <br> 
          <table  style="border:10">      
         <tr><td style="width: 371px; "> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION
 </b></td>
         
         <td align="left" style="width: 349px; "><input type="checkbox" id="softtissuess" onclick="softtissuevalidate()" name="dysfunction" value="All Soft Tissue Unremarkable">All Soft Tissue Unremarkable</td>
         
          </tr>  </table>
           <table>
           <tr>
           <td width="129" style="width: 104px; ">Thenar Eminence:</td><td style="width: 89px; "><input type="radio" value="Left" name="thenareminence">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td> <td width="140" style="width: 93px; "><input type="radio" value="Right" name="thenareminence">&nbsp;&nbsp;&nbsp;Right</td>
                     
           <td width="130" style="width: 141px; ">Flexor Carpi Radialis:</td><td style="width: 76px; "><input type="radio" value="Left" name="flexorcarpiradialis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>&nbsp;&nbsp;&nbsp;<td width="110" style="width: 75px; "> <input type="radio" value="Right" name="flexorcarpiradialis">&nbsp;&nbsp;&nbsp;Right</td>
           
           <td width="120">Common Flexors:</td><td style="width: 156px; height: 46px"><input type="radio" value="Left" name="commonflexors">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="Right" name="commonflexors">&nbsp;&nbsp;&nbsp;Right</td>
           
           <td width="120" style="width: 143px; ">Hypothenar Eminence:</td><td style="width: 174px; "><input type="radio" value="Left" name="hypothenareminence">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="Right" name="hypothenareminence">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
           <tr height="10"></tr>
           <tr>
           <td width="129" style="width: 160px; height: 58px">Extensor Carpi Radialis:</td><td><input type="radio" value="Left" name="extensorcarpiradialis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110" style="width: 96px; "> <input type="radio" value="Right" name="extensorcarpiradialis">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="130" style="width: 127px; ">Common Extensor:	</td><td><input type="radio" value="Left" name="commonextensor">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="Right" name="commonextensor">&nbsp;&nbsp;&nbsp;Right</td>
           <td>Abductor Pollius Longus:</td><td><input type="radio" value="Left" name="abductorpolliuslongus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="Right" name="abductorpolliuslongus">&nbsp;&nbsp;&nbsp;Right</td>
           <td>Abductor Pollicis Brevis:</td><td><input type="radio" value="Left" name="abductorpollicisbrevis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="Right" name="abductorpollicisbrevis">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
               
           </table>
           </br>           
         
                 

<table>	
	<tr><td width="129" style="width: 161px; ">Extensor Pollicis Brevis:</td><td><input type="radio" value="Left" name="extensorpollicisbrevis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="140" style="width: 113px; "> <input type="radio" value="Right" name="extensorpollicisbrevis">&nbsp;&nbsp;&nbsp;Right</td><td  width="130">	Other / Note: </td>
<td><textarea rows="5" cols="50" name="note" id="note" onInput="return validatename(id)";></textarea></td>	
	
	</tr></table>
	</br>
	<table  style="border:10">      
         <tr>
         <td style="width: 297px; "> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional">Unremarkable
         
         </td>
         
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td>
         <td><input type="checkbox" name="orthotpedic" value="unremarkable">Unremarkable
        
         </td>  </tr></table>
         </br>
         <table >
         <tr>
         <td width="140" valign="top">
         (*  Pain Elicited)	
         </td>   
         <td width="180" valign="top" style="width: 73px; ">Normal </td><td align="center">Actual</br></br>
          Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right
         </td>
         <td style="width: 80px; "></td> <td style="width: 154px; "></td> <td style="width: 228px; ">Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
               
         
         </tr>
         <tr height="10"></tr>
         <tr><td style="width: 123px; ">Wrist Flexion:</td><td style="width: 49px; ">80</td><td><input type="text" size="5" name="flexionleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="flexionright" onkeypress="return validate(event)"></td><td width="210" style="width: 59px; "></td><td>Allen's (Vasculature):	</td><td><input size="5" type="text"  name="allenleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="allenright" onkeypress="return validate(event)"></td></tr>
         <tr><td>Wrist Extension:</td><td>80</td><td><input size="5" type="text" name="extensionleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="extensionright" onkeypress="return validate(event)"></td><td width="90"></td><td>Phalen's (Median N):</td><td><input type="text"  size="5" name="phalenleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  name="phalenright" onkeypress="return validate(event)"></td></tr>
         <tr><td>Wrist Ulnar Deviation:</td><td>90</td><td><input size="5" type="text" name="ulnarleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5" type="text" name="ulnarright" onkeypress="return validate(event)"></td><td width="90"></td><td>Reverse Phalens (Median N):</td><td><input type="text" size="5"  name="reverseleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="reverseright" onkeypress="return validate(event)"></td></tr>
         <tr><td>Wrist Radial Deviation:</td><td>90</td><td><input size="5" type="text" name="radialleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="radialright" onkeypress="return validate(event)"></td><td width="90"></td><td>Finkelstein's (Tenosynovitis):</td><td><input type="text" size="5"  name="tenosynovitisleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="tenosynovitisright" onkeypress="return validate(event)"></td></tr></tr>
         <tr><td>Pronation / Supination	:</td><td>180</td><td><input type="text" size="5" name="pronationleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="pronationright" onkeypress="return validate(event)"><td width="90"></td><td>Tinnel's:</td><td><input type="text" size="5"  name="tinnelsleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="tinnelsright" onkeypress="return validate(event)"></td></tr>
         <tr><td></td><td></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td width="90"></td><td>ULTT:</td><td><input type="text" size="5" name="ulttleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="ulttright" onkeypress="return validate(event)"></td></tr>
          <tr><td id="tblbtn"><input type="button" id="btnNext" class="submit_btn" value="Next" onmouseover="checkValid(event);"/></tr>
         
         </table>
         </td></tr></table></div></div>
        <div id="tabs-2">     

	    <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div id="block2">
	            <div class="headings altheading">
	                <img  src="resources/images/print.png" id="print1" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block2');" >
	            <center> <h2>
	            WRIST AND HAND INITIAL EXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr>
         <td width="130"><b style="font-size:14px">NEUROLOGICAL</b></td>
         <td width="246"><input type="checkbox" id=neurologicalunremarkable name="neurological" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td width="250">  <b> Sensory	</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Motor / Strength		</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Reflexes</b> (Muscle Spindles)	</td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td> </tr>
          <tr height="10"></tr>
           
           <tr><td>C5</td><td><input size="5" type="text" name="latdeltoidleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="latdeltoidright" onkeypress="return validate(event)">&nbsp;&nbsp;(Lat deltoid)</td><td>C5</td><td><input type="text" name="shdleft" id="shdleft" maxlength="1" onKeyPress="return check(event,value)" onInput="checkLength()" style="width: 53px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input maxlength="1" type="text" name="shdright" id="shdright" onKeyPress="return check1(event,value)" onInput="checkLength1()" style="width: 50px; ">/5&nbsp;&nbsp;(Shd ABD)</td><td>C5</td><td><input type="text" name="bicepsleft" id="bicepsleft" maxlength="1" onKeyPress="return check10(event,value)" onInput="checkLength10()" style="width: 54px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="bicepsright" id="bicepsright" maxlength="1" onKeyPress="return check11(event,value)" onInput="checkLength11()" style="width: 49px; ">/5&nbsp;&nbsp;(Biceps)</td></tr>
           <tr><td>C6</td><td><input type="text" name="latarmleft" size="5" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="latarmright" onkeypress="return validate(event)">&nbsp;&nbsp;(Lat arm/hand)</td><td>C6</td><td><input type="text" name="elbflexleft" id="elbflexleft" maxlength="1" onKeyPress="return check2(event,value)" onInput="checkLength2()" style="width: 52px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input maxlength="1" type="text" name="elbflexright" id="elbflexright" onKeyPress="return check3(event,value)" onInput="checkLength3()" style="width: 51px; ">/5&nbsp;&nbsp;(Elb flex/wrist ext)</td><td>C6</td><td><input type="text" name="brachioradleft" id="brachioradleft" maxlength="1" onKeyPress="return check12(event,value)" onInput="checkLength12()" style="width: 52px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="brachioradright" id="brachioradright" maxlength="1" onKeyPress="return check13(event,value)" onInput="checkLength13()" style="width: 50px; ">/5&nbsp;&nbsp;(Brachiorad)</td></tr>
           <tr><td>C7</td><td><input type="text" size="5" name="thirdleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="thirdright" onkeypress="return validate(event)">&nbsp;&nbsp;(3rd digit)</td><td>C7</td><td><input type="text" name="elbextleft" id="elbextleft" maxlength="1" onKeyPress="return check4(event,value)" onInput="checkLength4()" style="width: 50px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input maxlength="1" type="text" name="elbextright" id="elbextright" onKeyPress="return check5(event,value)" onInput="checkLength5()" style="width: 51px; ">/5&nbsp;&nbsp;(Elb ext/wrist flex)</td><td>C7</td><td><input type="text" name="tricepsleft" id="tricepsleft" maxlength="1" onKeyPress="return check14(event,value)" onInput="checkLength14()" style="width: 52px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input maxlength="1" type="text" name="tricepsright" id="tricepsright" onKeyPress="return check15(event,value)" onInput="checkLength15()" style="width: 50px; ">/5&nbsp;&nbsp;(Triceps)</td></tr>
            <tr><td>C8</td><td><input type="text" size="5" name="medforearmleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="medforearmright" onkeypress="return validate(event)">&nbsp;&nbsp;(Med forearm/hand)</td><td>C8</td><td><input type="text" name="digitflexionleft" id="digitflexionleft" maxlength="1" onKeyPress="return check6(event,value)" onInput="checkLength6()" style="width: 54px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input maxlength="1"  type="text" name="digitflexionright" id="digitflexionright" onKeyPress="return check7(event,value)" onInput="checkLength7()" style="width: 46px; ">/5&nbsp;&nbsp;(Digit flexion)</td><td></td></tr>
            <tr><td>T1</td><td><input size="5" type="text" name="medelbowleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="medelbowright" onkeypress="return validate(event)">&nbsp;&nbsp;(Med elbow/arm)</td><td>T1</td><td><input type="text" name="digitabdleft" id="digitabdleft" maxlength="1" onKeyPress="return check8(event,value)" onInput="checkLength8()" style="width: 55px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  maxlength="1" type="text" name="digitabdright" id="digitabdright" onKeyPress="return check9(event,value)" onInput="checkLength9()" style="width: 49px; ">/5&nbsp;&nbsp;(Digit abd/add)	</td><td><td>&nbsp;(2+/5 is Normal)</td></td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100" style="width: 272px; "><input type="checkbox" name="typing" value="Typing / Writing">Typing / Writing&nbsp;<input type="checkbox" name="driving" value="Driving"> Driving&nbsp;<input type="checkbox" id="other" name="other" value="Other"  onclick="visible('this.value')">Other</td><td style="width: 239px; "><input type="text" name="otherdefict" id="otherdefict" style="display:none " onInput="return validatename(id)";></td></tr>
           
           </table>
           <table>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><textarea rows="5" cols="50" name="comments" id="comments" onInput="return validatename(id)";></textarea>   </td></tr>
           <tr height="10"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td><select name="patientstatus">
               <option>Excellent</option>   <option> Good</option>   <option> Fair</option>   <option>Poor</option>               
               </select></td></tr>      
                </table>
                </br>
                <table width="100%">
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis1" id="diagnosis1" onInput="return validatename(id)";></td><td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis2" id="diagnosis2" onInput="return validatename(id)";></td><td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis3" id="diagnosis3" onInput="return validatename(id)";></td><td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis4" id="diagnosis4" onInput="return validatename(id)";></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis5" id="diagnosis5" onInput="return validatename(id)";></td><td width="250">6)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis6" id="diagnosis6" onInput="return validatename(id)";></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" name="times" id="times" onInput="return validatename(id)";>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text" name="weeks" id="weeks" onInput="return validatename(id)";>&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><input type="checkbox" name="spinaldecompression" value="Spinal Decompression">Spinal Decompression</td><td width="100"><input type="checkbox" name="chiropractic" value="Chiropractic">Chiropractic</td>
           <td width="150"><input type="checkbox" name="physicaltherapy" value="Physical Therapy">Physical Therapy</td><td width="150"><input type="checkbox" name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
           <td width="150"><input type="checkbox" name="modalities" value="Modalities">Modalities</td> <td width="150"><input type="checkbox" name="supplementation" value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep" value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic" value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri" value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan" value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction" value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg" value="EMG">EMG</td> <td width="150"><input type="checkbox" name="outsiderefferal" value="Outside Referral">Outside Referral</td><td><input type="checkbox" name="dc" value="D/C">D/C</td>
           </tr>   
            <tr height="10"></tr>
           <tr><td width="95"></td><td width="160">
           <input type="checkbox" id="others" name="others" value="Other" onclick="othervisible('this.value')">Other</td><td><input type="text" name="othervalue" id="othervalue" style="display:none " onInput="return validatename(id)";>
           </td></tr>   
                      
           </table>
           </br>
           <div><B style="font-size:14px"><span class="err">*</span>&nbsp;&nbsp;PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="signature" id="sign" onInput="return validatename(id)";><br><span class="err" id="signerror"><form:errors path="wristexamdetails.signature"></form:errors></div>
           </c:when>
           <c:otherwise>
           <table cellpadding="0" cellspacing="0" border="0">
											<tr>
												<td width="130"><span class="err">*</span>Patient Name:</td>
												<td width="200"><input type="hidden" name="wristexamno"
													value="${wristdetails.wristexamno}" /><input
													type="text" value="${wristdetails.pname}" name="pname">
													<br><span class="err"><form:errors path="wristexamdetails.pname"></form:errors>
													</td>
												<td width="650"></td>
												<td width="50"><span class="err" >*</span>Date:&nbsp;</td>
												<td width="200"><input type="text" name="date"
													value="${wristdetails.date}" id="datepicker"><br><span class="err"><form:errors path="wristexamdetails.date"></form:errors></td>
											</tr>
										</table>
										</br>
										<div>
											<b style="font-size: 14px">OBSERVATION / APPEARANCE /
												MOOD / ORIENTATION </b>
										</div>
										<table>
											<tr>



											</tr>
											<tr height="10"></tr>
											<tr>
												<td>Muscle Symmetry:</td>
												<td width="28"></td>
												<td ><input type="text"
													value="${wristdetails.muscle}" name="muscle"></td>
												<td width="48"></td>
												<td width="135">Swelling / Discoloration:</td>
												<td width="40"><input type="text"
													value="${wristdetails.swelling}" name="swelling"></td>

												<td width="49"></td>
												<td width="139">Dominant Hand</td>
												<td><input type="radio" value="left"
													name="dominanthand"
													<c:if test="${wristdetails.dominanthand=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;<input
													type="radio" value="right" name="dominanthand"
													<c:if test="${wristdetails.dominanthand=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
												<td width="75"></td>
												<td width="130">A & O:</td>
												<td><select name="ao"><option
															<c:if test="${wristdetails.ao=='excellent'}"></c:if>
															<c:out value="selected"></c:out>>excellent</option>
														<option
															<c:if test="${wristdetails.ao=='good'}"></c:if>
															<c:out value="selected"></c:out>>good</option>
														<option
															<c:if test="${wristdetails.ao=='fair'}"></c:if>
															<c:out value="selected"></c:out>>fair</option>
														<option
															<c:if test="${wristdetails.ao=='severe'}"></c:if>
															<c:out value="selected"></c:out>>severe</option></select></td>
											</tr>
										</table>
										<br>
										<table style="border: 10">
											<tr>
												<td><b style="font-size: 14px">PALPATION / SOFT
														TISSUE DYSFUNCTION </b></td>
												<td width="40"></td>
												<td align="left"><input type="checkbox"
													value="Unremarkable" name="dysfunction" id="functional"
													<c:if test="${wristdetails.dysfunction=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>All
													Soft Tissue Unremarkable</td>
												<td width="180"></td>
											</tr>
										</table>
										
										<table>
											<tr>
												<td width="129">Thenar Eminence:</td>
												<td><input type="radio" value="left" <c:if test="${wristdetails.thenareminence=='left'}"> <c:out value="checked"></c:out></c:if>="" name="thenareminence">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>
												<td width="140"><input type="radio" value="right" <c:if test="${wristdetails.thenareminence=='left'}"> <c:out value="checked"></c:out></c:if>="" name="thenareminence">&nbsp;&nbsp;&nbsp;Right</td>

												<td width="130">Flexor Carpi Radialis:</td>
												<td><input type="radio" value="left" <c:if test="${wristdetails.flexorcarpiradialis=='left'}"> <c:out value="checked"></c:out></c:if>="" name="flexorcarpiradialis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>&nbsp;&nbsp;&nbsp;
												<td width="110"><input type="radio" value="right" <c:if test="${wristdetails.flexorcarpiradialis=='right'}"> <c:out value="checked"></c:out></c:if>="" name="flexorcarpiradialis">&nbsp;&nbsp;&nbsp;Right</td>
												<td width="35"></td>
												<td width="120">Common Flexors:</td>
												<td><input type="radio" value="left" <c:if test="${wristdetails.commonflexors=='left'}"> <c:out value="checked"></c:out></c:if>="" name="commonflexors">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;
													<input type="radio" value="right" <c:if test="${wristdetails.commonflexors=='right'}"> <c:out value="checked"></c:out></c:if>="" name="commonflexors">&nbsp;&nbsp;&nbsp;Right</td>
												<td width="73"></td>
												<td width="120">Hypothenar Eminence:</td>
												<td><input type="radio" value="left" <c:if test="${wristdetails.hypothenareminence=='left'}"> <c:out value="checked"></c:out></c:if>="" name="hypothenareminence">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;
													<input type="radio" value="right" <c:if test="${wristdetails.hypothenareminence=='right'}"> <c:out value="checked"></c:out></c:if>="" name="hypothenareminence">&nbsp;&nbsp;&nbsp;Right</td>
											</tr>
											<tr height="10"></tr>
											<tr>
												<td width="129">Extensor Carpi Radialis:</td>
												<td><input type="radio" value="left" <c:if test="${wristdetails.extensorcarpiradialis=='left'}"> <c:out value="checked"></c:out></c:if>="" name="extensorcarpiradialis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>
												<td width="110"><input type="radio" value="right" <c:if test="${wristdetails.extensorcarpiradialis=='right'}"> <c:out value="checked"></c:out></c:if>="" name="extensorcarpiradialis">&nbsp;&nbsp;&nbsp;Right</td>
												<td width="130">Common Extensor:</td>
												<td><input type="radio" value="left" <c:if test="${wristdetails.commonextensor=='left'}"> <c:out value="checked"></c:out></c:if>="" name="commonextensor">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>
												<td width="110"><input type="radio" value="right" <c:if test="${wristdetails.commonextensor=='right'}"> <c:out value="checked"></c:out></c:if>="" name="commonextensor">&nbsp;&nbsp;&nbsp;Right</td>
												<td></td>
												<td>Abductor Pollius Longus:</td>
												<td><input type="radio" value="left" <c:if test="${wristdetails.abductorpolliuslongus=='left'}"> <c:out value="checked"></c:out></c:if>="" name="abductorpolliuslongus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;
													<input type="radio" value="right" <c:if test="${wristdetails.abductorpolliuslongus=='right'}"> <c:out value="checked"></c:out></c:if>="" name="abductorpolliuslongus">&nbsp;&nbsp;&nbsp;Right</td>
												<td></td>
												<td>Abductor Pollicis Brevis:</td>
												<td><input type="radio" value="left" <c:if test="${wristdetails.abductorpollicisbrevis=='left'}"> <c:out value="checked"></c:out></c:if>="" name="abductorpollicisbrevis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;
													<input type="radio" value="right" <c:if test="${wristdetails.abductorpollicisbrevis=='right'}"> <c:out value="checked"></c:out></c:if>="" name="abductorpollicisbrevis">&nbsp;&nbsp;&nbsp;Right</td>
											</tr>

										</table></br>



										<table>
											<tr>
												<td width="129">Extensor Pollicis Brevis:</td>
												<td><input type="radio" value="left"
													<c:if test="${wristdetails.extensorpollicisbrevis=='left'}"> <c:out value="checked"></c:out></c:if>
													name="extensorpollicisbrevis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>
												<td width="140"><input type="radio" value="right"
													<c:if test="${wristdetails.extensorpollicisbrevis=='right'}"> <c:out value="checked"></c:out></c:if>
													name="extensorpollicisbrevis">&nbsp;&nbsp;&nbsp;Right</td>
												<td width="130">Other / Note:</td>
												<td><textarea rows="5" cols="50" name="note">${wristdetails.note}</textarea></td>

											</tr>
										</table>
										</br>
										<table style="border: 10">
											<tr>
												<td><b style="font-size: 14px">FUNCTIONAL RANGE OF
														MOTION </b></td>
												<td width="98"></td>
												<td><input type="checkbox" value="Unremarkable"
													name="functional" id="functional"
													<c:if test="${wristdetails.functional=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>Unremarkable

												</td>
												<td width="230"></td>
												<td><b style="font-size: 14px">ORTHOTPEDIC TESTING
												</b></td>
												<td width="160"></td>
												<td><input type="checkbox" name="orthotpedic"
													<c:if test="${wristdetails.orthotpedic=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>
													value="Unremarkable">Unremarkable</td>
											</tr>
										</table>
										</br>
										<table>
											<tr>
												<td width="140" valign="top">(* Pain Elicited)</td>
												<td width="180" valign="top">Normal</td>
												<td align="center">Actual</br>
												</br>
													Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right
												</td>
												<td></td>
												<td width="70"></td>
												<td ></td>
												<td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>


											</tr>
											<tr height="10"></tr>
											<tr>
												<td>Wrist Flexion:</td>
												<td>80</td>
												<td><input type="text" size="5"
													value="${wristdetails.flexionleft}" name="flexionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text"
													value="${wristdetails.flexionright}"
													name="flexionright"></td>
												<td width="210"></td>
												<td>Allen's (Vasculature):</td>
												<td width="160"></td>
												<td><input size="5" type="text"
													value="${wristdetails.allenleft}" name="allenleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													type="text" size="5" value="${wristdetails.allenright}"
													name="allenright"></td>
											</tr>
											<tr>
												<td>Wrist Extension:</td>
												<td>80</td>
												<td><input size="5" type="text"
													value="${wristdetails.extensionleft}"
													name="extensionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text"
													value="${wristdetails.extensionright}"
													name="extensionright"></td>
												<td width="90"></td>
												<td>Phalen's (Median N):</td>
												<td width=""></td>
												<td><input type="text" size="5"
													value="${wristdetails.phalenleft}" name="phalenleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													type="text" size="5"
													value="${wristdetails.phalenright}" name="phalenright"></td>
											</tr>
											<tr>
												<td>Wrist Ulnar Deviation:</td>
												<td>90</td>
												<td><input size="5" type="text"
													value="${wristdetails.ulnarleft}" name="ulnarleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text" value="${wristdetails.ulnarright}"
													name="ulnarright"></td>
												<td width="90"></td>
												<td>Reverse Phalens (Median N):</td>
												<td width=""></td>
												<td><input type="text" size="5"
													value="${wristdetails.reverseleft}" name="reverseleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text"
													value="${wristdetails.reverseright}"
													name="reverseright"></td>
											</tr>
											<tr>
												<td>Wrist Radial Deviation:</td>
												<td>90</td>
												<td><input size="5" type="text"
													value="${wristdetails.radialleft}" name="radialleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text"
													value="${wristdetails.radialright}" name="radialright"></td>
												<td width="90"></td>
												<td>Finkelstein's (Tenosynovitis):</td>
												<td ></td>
												<td><input type="text" size="5"
													value="${wristdetails.tenosynovitisleft}"
													name="tenosynovitisleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text"
													value="${wristdetails.tenosynovitisright}"
													name="tenosynovitisright"></td>
											</tr>
											</tr>
											<tr>
												<td>Pronation / Supination :</td>
												<td>180</td>
												<td><input type="text" size="5"
													value="${wristdetails.pronationleft}"
													name="pronationleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text"
													value="${wristdetails.pronationright}"
													name="pronationright">
												<td width="90"></td>
												<td>Tinnel's:</td>
												<td ></td>
												<td><input type="text" size="5"
													value="${wristdetails.tinnelsleft}" name="tinnelsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													type="text" size="5"
													value="${wristdetails.tinnelsright}"
													name="tinnelsright"></td>
												</td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
												<td width="90"></td>
												<td>ULTT:</td>
												<td ></td>
												<td><input type="text" size="5"
													value="${wristdetails.ulttleft}" name="ulttleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text" value="${wristdetails.ulttright}"
													name="ulttright"></td>
											</tr>


										</table>
							</td>
						</tr>
					</table>
				</div>
		</div>
		<div id="tabs-2">

			<div id="right_content">

				<table cellpadding="0" cellspacing="0" border="0" width="100%"
					class="margin_table">
					<tr>
						<td valign="top" align="left">
							<div id="block2">
								<div class="headings altheading">
								     <img  src="resources/images/print.png" id="print1" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block2');" >
									<center>
										<h2>WRIST AND HAND INITIAL EXAM</h2>
									</center>
									<br />

								</div>
								<div class="contentbox">
									<table cellpadding="0" cellspacing="0" border="0">


										<tr>
											<td width="130"><b style="font-size: 14px">NEUROLOGICAL</b></td>
											<td width="246"><input type="checkbox"
												<c:if test="${wristdetails.neurological=='Neurological Testing Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>
												id=neurologicalunremarkable name="neurological"
												value="Neurological Testing Unremarkable">Neurological
												Testing Unremarkable</td>

										</tr>
									</table>
									</br>
									<table id="neurological">
										<tr>
											<td width="120"><b>Level</b></td>
											<td width="250"><b> Sensory </b></td>
											<td width="100"><b>Level</b></td>
											<td width="250"><b> Motor / Strength </b></td>
											<td width="100"><b>Level</b></td>
											<td width="250"><b> Reflexes</b> (Muscle Spindles)</td>
										</tr>
										<tr height="10"></tr>
										<tr>
											<td width="30"></td>
											<td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
											<td width="30"></td>
											<td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
											<td width="30"></td>
											<td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
										</tr>
										<tr height="10"></tr>

										<tr>
											<td>C5</td>
											<td><input size="5" type="text"
												value="${wristdetails.latdeltoidleft}"
												name="latdeltoidleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text"
												value="${wristdetails.latdeltoidright}"
												name="latdeltoidright">&nbsp;&nbsp;(Lat deltoid)</td>
											<td>C5</td>
											<td><input type="text" name="shdleft"
												value="${wristdetails.shdleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text" value="${wristdetails.shdright}"
												name="shdright">/5&nbsp;&nbsp;(Shd ABD)</td>
											<td>C5</td>
											<td><input type="text" name="bicepsleft"
												value="${wristdetails.bicepsleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input
												type="text" value="${wristdetails.bicepsright}"
												name="bicepsright" size="5">/5&nbsp;&nbsp;(Biceps)</td>
										</tr>
										<tr>
											<td>C6</td>
											<td><input type="text" name="latarmleft"
												value="${wristdetails.latarmleft}" size="5">&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text" value="${wristdetails.latarmright}"
												name="latarmright">&nbsp;&nbsp;(Lat arm/hand)</td>
											<td>C6</td>
											<td><input type="text" name="elbflexleft"
												value="${wristdetails.elbflexleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text"
												value="${wristdetails.elbflexright}" name="elbflexright">/5&nbsp;&nbsp;(Elb
												flex/wrist ext)</td>
											<td>C6</td>
											<td><input type="text" name="brachioradleft"
												value="${wristdetails.brachioradleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input
												type="text" value="${wristdetails.brachioradright}"
												name="brachioradright" size="5">/5&nbsp;&nbsp;(Brachiorad)</td>
										</tr>
										<tr>
											<td>C7</td>
											<td><input type="text" size="5"
												value="${wristdetails.thirdleft}" name="thirdleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text" value="${wristdetails.thirdright}"
												name="thirdright">&nbsp;&nbsp;(3rd digit)</td>
											<td>C7</td>
											<td><input type="text"
												value="${wristdetails.elbextleft}" name="elbextleft"
												size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"
												type="text" value="${wristdetails.elbextright}"
												name="elbextright">/5&nbsp;&nbsp;(Elb ext/wrist
												flex)</td>
											<td>C7</td>
											<td><input type="text"
												value="${wristdetails.tricepsleft}" name="tricepsleft"
												size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"
												type="text" value="${wristdetails.tricepsright}"
												name="tricepsright">/5&nbsp;&nbsp;(Triceps)</td>
										</tr>
										<tr>
											<td>C8</td>
											<td><input type="text" size="5"
												value="${wristdetails.medforearmleft}"
												name="medforearmleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
												type="text" size="5"
												value="${wristdetails.medforearmright}"
												name="medforearmright">&nbsp;&nbsp;(Med
												forearm/hand)</td>
											<td>C8</td>
											<td><input type="text" name="digitflexionleft"
												value="${wristdetails.digitflexionleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" value="${wristdetails.digitflexionright}"
												type="text" name="digitflexionright">/5&nbsp;&nbsp;(Digit
												flexion)</td>
											<td></td>
										</tr>
										<tr>
											<td>T1</td>
											<td><input size="5" type="text"
												value="${wristdetails.medelbowleft}" name="medelbowleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text"
												value="${wristdetails.medelbowright}"
												name="medelbowright">&nbsp;&nbsp;(Med elbow/arm)</td>
											<td>T1</td>
											<td><input type="text" name="digitabdleft"
												value="${wristdetails.digitabdleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text"
												value="${wristdetails.digitabdright}"
												name="digitabdright">/5&nbsp;&nbsp;(Digit abd/add)</td>
											<td>
											<td>&nbsp;(2+/5 is Normal)</td>
											</td>
										</tr>
										<tr>
											<td></td>
											<td>(""-"" is Normal)</td>
											<td></td>
											<td>(5/5 is Normal)</td>
											<td></td>
											<td></td>
										</tr>



									</table>
									</br>
									<table width="100%">
										<tr>
											<td width="350"><b style="font-size: 14px">FUNCTIONAL
													DEFICIT: </b></td>
											<td width="100"><input type="checkbox"
												<c:if test="${wristdetails.typing=='Typing / Writing'}"> <c:out value="checked=checked"></c:out></c:if>
												name="typing" value="Typing / Writing">Typing /
												Writing</td>
											<td width="110"><input type="checkbox" name="driving"
												<c:if test="${wristdetails.driving=='Driving'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Driving"> Driving</td>
											<td><input type="checkbox" id="other" name="other"
												value="other" onclick="visible('this.value')"
												<c:if test="${wristdetails.other=='other'}"> <c:out value="checked=checked"></c:out></c:if>>Other</td>
											<td><input type="text" name="otherdefict"
												id="otherdefict" value="${wristdetails.otherdefict}"
												style="display: none"></td>
											<td width="300"></td>
										</tr>

									</table>
									<table>
										<tr>
											<td width="350"><b style="font-size: 14px">ASSESSMENT
													/ ADDITIONAL COMMENTS: </b></td>
											<td><textarea rows="5" cols="50" name="comments">${wristdetails.comments}</textarea>
											</td>
										</tr>
										<tr height="10"></tr>
										<tr>
											<td>Patient's Status for being a candidate for
												conservative care:</td>
											<td><select name="patientstatus">
													<option
														<c:if test="${wristdetails.patientstatus=='Excellent'}"> <c:out value="selected"></c:out></c:if>>Excellent</option>
													<option
														<c:if test="${wristdetails.patientstatus=='Good'}"> <c:out value="selected"></c:out></c:if>>
														Good</option>
													<option
														<c:if test="${wristdetails.patientstatus=='Fair'}"> <c:out value="selected"></c:out></c:if>>
														Fair</option>
													<option
														<c:if test="${wristdetails.patientstatus=='Poor'}"> <c:out value="selected"></c:out></c:if>>Poor</option>
											</select></td>
										</tr>
									</table>
									</br>
									<table width="100%">
										<tr>
											<td width="400"><b style="font-size: 14px">DIAGNOSIS:
											</b></td>
											<td width="250">1)&nbsp;&nbsp;&nbsp;<input type="text"
												value="${wristdetails.diagnosis1}" name="diagnosis1"></td>
											<td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text"
												value="${wristdetails.diagnosis2}" name="diagnosis2"></td>
											<td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text"
												value="${wristdetails.diagnosis3}" name="diagnosis3"></td>
											<td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text"
												value="${wristdetails.diagnosis4}" name="diagnosis4"></td>
										</tr>
										<tr height="10"></tr>
										<tr>
											<td></td>
											<td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text"
												name="diagnosis5" value="${wristdetails.diagnosis5}"></td>
											<td width="250">6)&nbsp;&nbsp;&nbsp;<input type="text"
												value="${wristdetails.diagnosis6}" name="diagnosis6"></td>
										</tr>
									</table>
									</br>
									<div>
										<b style="font-size: 14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input
											type="text" name="times" value="${wristdetails.times}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text"
											value="${wristdetails.weeks}" name="weeks">&nbsp;&nbsp;&nbsp;&nbsp;
										weeks to address the above functional & structural deficits.
										Treatment will consist of the following:
									</div>
									</br>
									<table>
										<tr>
											<td width="95"></td>
											<td width="160"><input type="checkbox"
												<c:if test="${wristdetails.spinaldecompression=='Spinal Decompression'}"> <c:out value="checked=checked"></c:out></c:if>
												name="spinaldecompression" value="Spinal Decompression">Spinal
												Decompression</td>
											<td width="100"><input type="checkbox"
												name="chiropractic"
												<c:if test="${wristdetails.chiropractic=='Chiropractic'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Chiropractic">Chiropractic</td>
											<td width="150"><input type="checkbox"
												name="physicaltherapy"
												<c:if test="${wristdetails.physicaltherapy=='Physical Therapy'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Physical Therapy">Physical Therapy</td>
											<td width="150"><input type="checkbox"
												<c:if test="${wristdetails.bracing=='Orthotics/Bracing'}"> <c:out value="checked=checked"></c:out></c:if>
												name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
											<td width="150"><input type="checkbox" name="modalities"
												<c:if test="${wristdetails.modalities=='Modalities'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Modalities">Modalities</td>
											<td width="150"><input type="checkbox"
												name="supplementation"
												<c:if test="${wristdetails.supplementation=='Supplementation'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Supplementation">Supplementation</td>
											<td><input type="checkbox" name="hep"
												<c:if test="${wristdetails.hep=='HEP'}"> <c:out value="checked=checked"></c:out></c:if>
												value="HEP">HEP</td>
										</tr>
										<tr height="10"></tr>
										<tr>
											<td width="95"></td>
											<td width="160"><input type="checkbox"
												name="radiographic"
												<c:if test="${wristdetails.radiographic=='Radiographic X-Ray'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Radiographic X-Ray">Radiographic X-Ray</td>
											<td width="100"><input type="checkbox" name="mri"
												<c:if test="${wristdetails.mri=='MRI'}"> <c:out value="checked=checked"></c:out></c:if>
												value="MRI">MRI</td>
											<td width="150"><input type="checkbox" name="scan"
												<c:if test="${wristdetails.scan=='CT Scan'}"> <c:out value="checked=checked"></c:out></c:if>
												value="CT Scan">CT Scan</td>
											<td width="150"><input type="checkbox" name="conduction"
												<c:if test="${wristdetails.conduction=='Nerve Conduction'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Nerve Conduction">Nerve Conduction</td>
											<td width="150"><input type="checkbox" name="emg"
												<c:if test="${wristdetails.emg=='EMG'}"> <c:out value="checked=checked"></c:out></c:if>
												value="EMG">EMG</td>
											<td width="150"><input type="checkbox"
												<c:if test="${wristdetails.outsiderefferal=='Outside Referral'}"> <c:out value="checked=checked"></c:out></c:if>
												name="outsiderefferal" value="Outside Referral">Outside
												Referral</td>
											<td><input type="checkbox"
												<c:if test="${wristdetails.dc=='D/C'}"> <c:out value="checked=checked"></c:out></c:if>
												name="dc" value="D/C">D/C</td>
										</tr>
										<tr height="10"></tr>
										<tr>
											<td width="95"></td>
											<td width="160"><input type="checkbox" id="others"
												name="others"
												<c:if test="${wristdetails.others=='other'}"> <c:out value="checked=checked"></c:out></c:if>
												value="other" onclick="othervisible('this.value')">Other</td>
											<td><input type="text" name="othervalue"
												value="${wristdetails.othervalue}" id="othervalue"
												style="display: none"></td>
										</tr>

									</table>
									</br>
									<div>
										<B style="font-size: 14px"><span class="err">*</span>PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="text" value="${wristdetails.signature}"
											name="signature"><span class="err"><form:errors path="wristexamdetails.signature"></form:errors>
									</div>


           
           
           
           
           
           </c:otherwise>
           </c:choose>
         
         <table align="right"><tr><td><input type="button" id="btnPrevious" class="submit_btn" name="Previous1" value="Previous" /></td><td><input type="submit" value="Save" id="saveid" class="submit_btn" onclick="return checkSubmit1('this');"></td><td> <a href="viewwristexamdetails" onclick="myclose()"  style="color: white" class="submit_btn" id="cancelid">Cancel</a></td></tr></table>
         
     <script>
 function myclose()
 {
	 window.close();
 }
 </script>
         </div></td></tr></table></div></div></div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            