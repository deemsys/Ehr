<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<c:if test="${ankle=='1'}">
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
function validatename(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}


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

	function checkSubmit()
	{
/* document.getElementById("pnameerror").innerHTML=" ";
		
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
		} */
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
	function check25(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength25(){
    var fieldVal = document.getElementById('patellarleft').value;
    
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('patellarleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('patellarleft').value = str;
    
  
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
    var fieldVal = document.getElementById('iliopsoasfirstleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('iliopsoasfirstleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('iliopsoasfirstleft').value = str;
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
    var fieldVal = document.getElementById('iliopsoasfirstright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('iliopsoasfirstright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('iliopsoasfirstright').value = str;
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
    var fieldVal = document.getElementById('iliopsoas1left').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('iliopsoas1left').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('iliopsoas1left').value = str;
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
    var fieldVal = document.getElementById('iliopsoas1right').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('iliopsoas1right').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('iliopsoas1right').value = str;
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
    var fieldVal = document.getElementById('kneeextensionleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('kneeextensionleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('kneeextensionleft').value = str;
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
    var fieldVal = document.getElementById('kneeextensionright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('kneeextensionright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('kneeextensionright').value = str;
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
    var fieldVal = document.getElementById('kneeextensionright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('kneeextensionright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('kneeextensionright').value = str;
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
    var fieldVal = document.getElementById('kneeflexionleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('kneeflexionleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('kneeflexionleft').value = str;
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
    var fieldVal = document.getElementById('kneeflexionright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('kneeflexionright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('kneeflexionright').value = str;
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
    var fieldVal = document.getElementById('dorsiflexionleft1').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('dorsiflexionleft1').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('dorsiflexionleft1').value = str;
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
    var fieldVal = document.getElementById('dorsiflexionright1').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('dorsiflexionright1').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('dorsiflexionright1').value = str;
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
    var fieldVal = document.getElementById('pfleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('pfleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('pfleft').value = str;
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
    var fieldVal = document.getElementById('pfright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('pfright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('pfright').value = str;
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
    var fieldVal = document.getElementById('patellarright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('patellarright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('patellarright').value = str;
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
    var fieldVal = document.getElementById('hsleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('hsleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('hsleft').value = str;
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
    var fieldVal = document.getElementById('hsright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('hsright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('hsright').value = str;
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
    var fieldVal = document.getElementById('achillesleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('achillesleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('achillesleft').value = str;
    }
     
    }
	</script>
	
	<script>
	function check16(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength16(){
    var fieldVal = document.getElementById('achillesright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('achillesright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('achillesright').value = str;
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
	     
<form action="insertfootexam" method="POST">  
<input type="hidden" name="username" value="${username}">
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div id="block1">
	            <div class="headings altheading">
	            <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	            <center> <h2>ANKLE / FOOT INITIAL EXAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	     <c:choose>
	     <c:when test="${empty footdetails}">
	     <br>
<br>
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="200"><span class="err">*</span>Patient Name:</td>
           <td width="200"><input type="text" name="pname" id="pname" onInput="return validatename(id)";><br><span class="err" id="pnameerror"><form:errors path="footexamdetails.signature"></form:errors></td><td width="635"></td>
           <td width="50"><span class="err">*</span>Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker"><br><span class="err" id="datepickererror"><form:errors path="footexamdetails.signature"></form:errors></td>
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION </b></div>
           </br>
           <table >
           <tr><td>Gait:&nbsp;</td><td width="30"></td>  <td><select style="width:178" name="gait"><option>normal</option><option>antalogic</option><option>shuffling</option><option>limp</option><option>stagger</option><option>cane assisted</option><option>wheelchair</option></select></td>
          
           
            
           
           </tr>
<tr height="10"></tr>
           <tr>
           <td >Muscle Symmetry:</td><td></td>
           <td><input type="text" name="muscle" id="muscle" onInput="return validatename(id)";></td><td width="10"></td>
             <td width="130">Swelling  / Discoloration</td>
             <td width="40"><input type="text" name="swelling" id="swelling" onInput="return validatename(id)";></td>
           
           <td width="59"></td>
           <td width="120">A & O</td><td><select name="ao"><option>excellent</option><option> good</option><option> fair</option><option> severe</option></select></td>
           </tr>  
           </table> 
           
           <table>
           <tr>
           <td width="129" style="width: 95px; ">Pronation:</td><td style="width: 95px; "><input type="radio" value="left" name="pronation">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td> <td width="140" style="width: 97px; "><input type="radio" value="right" name="pronation">&nbsp;&nbsp;&nbsp;Right</td>
                     
           <td width="130" style="width: 102px; ">Supination:</td><td style="width: 89px; "><input type="radio" value="left" name="supination">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>&nbsp;&nbsp;&nbsp;<td width="110" style="width: 89px; "> <input type="radio" value="right" name="supination">&nbsp;&nbsp;&nbsp;Right</td>
           
           <td width="120">Calcaneus Varus:</td><td style="width: 181px; "><input type="radio" value="left" name="calcaneus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="calcaneus">&nbsp;&nbsp;&nbsp;Right</td>
           
           <td width="120">Calcaneus Valgus:</td><td style="width: 196px; "><input type="radio" value="left" name="valgus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="valgus">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
           <tr height="10"></tr>
           <tr>
           <td width="129">Forefoot Varus:</td><td><input type="radio" value="left" name="forefoot">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="forefoot">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="130">Forefoot Valgus:</td><td><input type="radio" value="left" name="forefootvalgus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="forefootvalgus">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
               
           </table>
           </br>           
         
          <table  style="border:10">      
         <tr><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION
 </b></td>
         <td width="40"></td>
         <td align="left"><input type="checkbox" id="softtissuess" onclick="softtissuevalidate()" name="dysfunction" value="All Soft Tissue Unremarkable">All Soft Tissue Unremarkable</td>
         <td width="180"></td>
          </tr>  </table>       
<br>
<table>	
	<tr><td  width="130">Note  </td>
<td><textarea rows="5" cols="50" name="note" id="note" onInput="return validatename(id)";></textarea></td>	
	
	</tr></table>
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="98"></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional">Unremarkable
         
         </td>
         <td width="230"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td><td width="120"></td>
         <td><input type="checkbox" name="orthotpedic" value="unremarkable">Unremarkable
        
         </td>  </tr></table>
         </br>
         <table >
         <tr>
         <td width="140" valign="top">
         (*  Pain Elicited)	
         </td>   
         <td width="180" valign="top">Normal </td><td align="center" style="width: 269px; ">Actual</br></br>
          Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right
         </td>
         <td></td> <td></td><td style="width: 133px; height: 58px"></td> <td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
               
         
         </tr>
         <tr height="10"></tr>
         <tr><td>Plantar Flexion:		</td><td>50</td><td style="width: 304px; "><input type="text" size="5" name="plantarflexionleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="plantarflexionright" onkeypress="return validate(event)";></td><td width="210" style="width: 88px; "></td><td>Tinel's Tap:	</td><td width="70" style="width: 103px; "></td><td style="width: 232px; "><input size="5" type="text"  name="tinelstapleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="tinelstapright" onkeypress="return validate(event)";></td></tr>
         <tr><td>Dorsiflexion:				</td><td>20</td><td><input size="5" type="text" name="dorsiflexionleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="dorsiflexionright" onkeypress="return validate(event)";></td><td width="90"></td><td>Achilles Tap:</td><td width="150"></td><td><input type="text"  size="5" name="achillestapleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  name="achillestapright" onkeypress="return validate(event)";></td></tr>
         <tr><td>Inversion:				</td><td>35</td><td><input size="5" type="text" name="inversionleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5" type="text" name="inversionright" onkeypress="return validate(event)";></td><td width="90"></td><td>Long / Transv Arch:</td><td width="150"></td><td><input type="text" size="5"  name="longleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="longright" onkeypress="return validate(event)";></td></tr>
         <tr><td>Eversion:					</td><td>15</td><td><input size="5" type="text" name="eversionleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="eversionright" onkeypress="return validate(event)";></td><td width="90"></td><td>Thompson's:	</td><td width="150"></td><td><input type="text" size="5"  name="thompsonsleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="thompsonsright" onkeypress="return validate(event)";></td></tr></tr>
         <tr><td>Great Toe Extension:</td><td>70</td><td><input type="text" size="5" name="greattoeextensionleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="greattoeextensionright" onkeypress="return validate(event)";><td width="90"></td><td>Drawer:		</td><td width="150"></td><td><input type="text" size="5"  name="drawerleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="drawerright" onkeypress="return validate(event)";></td></td></tr>
         <tr><td>Great Toe Flexion:	</td><td>45</td><td><input type="text" size="5" name="greattoeflexionleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="greattoeflexionright" onkeypress="return validate(event)";></td><td width="90"></td><td>Lateral (Varus) Stability:</td><td width="150"></td><td><input type="text" size="5" name="lateralleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="lateralright" onkeypress="return validate(event)";></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Medial (Valgus) Stability:</td><td width="150"></td><td><input type="text" size="5"  name="medialstabilityleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="medialstabilityright" onkeypress="return validate(event)";></td></tr>
         <tr><td id="tblbtn"><input type="button" id="btnNext" class="submit_btn" value="Next" onmouseover="checkValid(event);"/></td></tr>
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
	            ANKLE / FOOT INITIAL EXAM</h2></center><br/>
	             
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
           <tr><td style="width: 74px; ">L1</td><td style="width: 375px; "><input type="text"  size="5" name="inguinalarealeft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="inguinalarearight" onkeypress="return validate(event)";>&nbsp;&nbsp; (Inguinal area)</td><td>L1</td><td style="width: 311px; "><input size="5" type="text" name="iliopsoasfirstleft" id="iliopsoasfirstleft" onKeyPress="return check(event,value)" onInput="checkLength()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  size="5" name="iliopsoasfirstright" id="iliopsoasfirstright" onKeyPress="return check1(event,value)" onInput="checkLength1()">/5&nbsp;&nbsp; (Iliopsoas)</td><td></td><td style="width: 314px; "></td></tr>
           <tr><td>L2</td><td><input size="5" type="text" name="antleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="antright" onkeypress="return validate(event)";>&nbsp;&nbsp;(Ant/med thigh)</td><td>L2</td><td><input type="text" name="iliopsoas1left" id="iliopsoas1left" size="5" onKeyPress="return check2(event,value)" onInput="checkLength2()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="iliopsoas1right" id="iliopsoas1right" onKeyPress="return check3(event,value)" onInput="checkLength3()">/5&nbsp;&nbsp;(Iliopsoas)</td><td></td><td>&nbsp;(2+/5 is Normal)</td></tr>
           <tr><td>L3</td><td><input type="text" name="kneeleft" size="5" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="kneeright" onkeypress="return validate(event)";>&nbsp;&nbsp;(Medial knee)</td><td>L3</td><td><input type="text" name="kneeextensionleft" id="kneeextensionleft" size="5" onKeyPress="return check4(event,value)" onInput="checkLength4()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="kneeextensionright" id="kneeextensionright" onKeyPress="return check5(event,value)" onInput="checkLength5()">/5&nbsp;&nbsp;(Knee extension)</td><td></td><td>&nbsp; </td></tr>
           <tr><td>L4</td><td><input type="text" size="5" name="medialleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="medialright" onkeypress="return validate(event)";>&nbsp;&nbsp;(Medial leg)</td><td>L4</td><td><input type="text" name="kneeflexionleft" id="kneeflexionleft" size="5" onKeyPress="return check6(event,value)" onInput="checkLength6()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="kneeflexionright" id="kneeflexionright" onKeyPress="return check7(event,value)" onInput="checkLength7()">/5&nbsp;&nbsp;(Knee flexion)</td><td>L4</td><td><input type="text" name="patellarleft" id="patellarleft" size="5" onKeyPress="return check25(event,value)" onInput="checkLength25()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="patellarright" id="patellarright" size="5" onKeyPress="return check12(event,value)" onInput="checkLength12()">/5&nbsp;&nbsp;Patellar</td></tr>
            <tr><td>L5</td><td><input type="text" size="5" name="latleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="latright" onkeypress="return validate(event)";>&nbsp;&nbsp;(Ant/lat leg)</td><td>L5</td><td><input type="text" name="dorsiflexionleft1" id="dorsiflexionleft1" size="5" onKeyPress="return check8(event,value)" onInput="checkLength8()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"  type="text" name="dorsiflexionright1" id="dorsiflexionright1" onKeyPress="return check9(event,value)" onInput="checkLength9()">/5&nbsp;&nbsp;(Dorsiflexion)</td><td>L5</td><td><input type="text" name="hsleft" id="hsleft" size="5" onKeyPress="return check13(event,value)" onInput="checkLength13()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="hsright" id="hsright" size="5" onKeyPress="return check14(event,value)" onInput="checkLength14()">/5&nbsp;&nbsp;Med HS</td></tr>
            <tr><td>S1</td><td><input size="5" type="text" name="plantarleft" onkeypress="return validate(event)";>&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="plantarright" onkeypress="return validate(event)";>&nbsp;&nbsp;(Big toe/plantar)</td><td>S1</td><td><input type="text" name="pfleft" id="pfleft" size="5" onKeyPress="return check10(event,value)" onInput="checkLength10()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="pfright" id="pfright" onKeyPress="return check11(event,value)" onInput="checkLength11()">/5&nbsp;&nbsp;(Grt toe ext, PF)</td><td>S1</td><td><input type="text" name="achillesleft" id="achillesleft" size="5" onKeyPress="return check15(event,value)" onInput="checkLength15()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="achillesright" id="achillesright" onKeyPress="return check16(event,value)" onInput="checkLength16()">/5&nbsp;&nbsp;Achilles</td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><input type="checkbox" name="walking" value="walking">Walking</td><td width="110"><input type="checkbox" name="standing" value="standing"> Standing</td><td width="70"><input type="checkbox" name="stairs" value="stairs">Stairs</td><td><input type="checkbox" id="other" name="other" value="other"  onclick="visible('this.value')">Other</td><td><input type="text" name="otherdefict" id="otherdefict" style="display:none "></td><td width="300"></td></tr>
           
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
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis5" id="diagnosis5" onInput="return validatename(id)";></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" name="times" id="times" onInput="return validatename(id)";>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text" name="weeks" id="weeks" onInput="return validatename(id)";>&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><input type="checkbox" name="spinaldecompression" value="Spinal Decompression">Spinal Decompression</td><td width="100"><input type="checkbox" name="chiropractic" value="Chiropractic">Chiropractic</td>
           <td width="150"><input type="checkbox" name="physicaltherapy" value="Physical Therapy">Physical Therapy</td><td width="150"><input type="checkbox" name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
           <td width="150"><input type="checkbox" name="modalities" value="Modalities	">Modalities</td> <td width="150"><input type="checkbox" name="supplementation" value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep" value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic" value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri" value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan" value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction" value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg" value="EMG">EMG	</td> <td width="150"><input type="checkbox" name="outsidereferral" value="Outside Referral ">Outside Referral 	</td><td><input type="checkbox" name="dc" value="D/C">D/C</td>
           </tr>   
            <tr height="10"></tr>
           <tr><td width="95"></td><td width="160">
           <input type="checkbox" id="others" name="others" value="other" onclick="othervisible('this.value')">Other</td><td><input type="text" name="othervalue" id="othervalue" style="display:none " onInput="return validatename(id)";>
           </td></tr>   
                      
           </table>
           </br>
           <div><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="sign" name="signature" onInput="return validatename(id)";><br><span class="err" id="signerror"><form:errors path="footexamdetails.signature"></form:errors></div>
           
         </c:when>
         <c:otherwise>
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><span class="err">*</span>Patient Name:</td>
           <td width="200"><input type="hidden" value="${footdetails.footexamno}" name="footexamno"><input type="text" value="${footdetails.pname}" name="pname"><br><span class="err"><form:errors path="footexamdetails.pname"></form:errors></td><td width="635"></td>
           <td width="50"><span class="err">*</span>Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker" value="${footdetails.date}"><br><span class="err"><form:errors path="footexamdetails.date"></form:errors></td>
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION </b></div>
           </br>
           <table >
           <tr><td>Gait:&nbsp;</td><td width="30"></td>  <td><select style="width:178" name="gait">
           <option <c:if test="${footdetails.gait=='normal'}"></c:if> <c:out value="selected"></c:out>>normal</option>
           <option <c:if test="${footdetails.gait=='antalogic'}"></c:if> <c:out value="selected"></c:out>>antalogic</option>
           <option <c:if test="${footdetails.gait=='shuffling'}"></c:if> <c:out value="selected"></c:out>>shuffling</option>
           <option <c:if test="${footdetails.gait=='limp'}"></c:if> <c:out value="selected"></c:out>>limp</option>
           <option <c:if test="${footdetails.gait=='stagger'}"></c:if> <c:out value="selected"></c:out>>stagger</option>
           <option <c:if test="${footdetails.gait=='cane assisted'}"></c:if> <c:out value="selected"></c:out>>cane assisted</option>
           <option <c:if test="${footdetails.gait=='wheelchair'}"></c:if> <c:out value="selected"></c:out>>wheelchair</option></select></td>
          
           
            
           
           </tr>
<tr height="10"></tr>
           <tr>
           <td >Muscle Symmetry:</td><td></td>
           <td><input type="text" name="muscle" value="${footdetails.muscle}" ></td><td width="10"></td>
             <td width="130">Swelling  / Discoloration</td>
             <td width="40"><input type="text" name="swelling" value="${footdetails.swelling}" ></td>
           
           <td width="59"></td>
           <td width="120">A & O</td><td><select name="ao" ><option <c:if test="${footdetails.ao=='excellent'}"></c:if> <c:out value="selected"></c:out>>excellent</option>
           <option <c:if test="${footdetails.ao=='good'}"></c:if> <c:out value="selected"></c:out>> good</option>
           <option <c:if test="${footdetails.ao=='fair'}"></c:if> <c:out value="selected"></c:out>> fair</option>
           <option <c:if test="${footdetails.ao=='severe'}"></c:if> <c:out value="selected"></c:out>> severe</option></select></td>
           </tr>  
           </table> 
           
           <table>
           <tr>
           <td width="129">Pronation:</td><td><input type="radio" value="left" name="pronation" <c:if test="${footdetails.pronation=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td> <td width="140"><input type="radio" <c:if test="${footdetails.pronation=='right'}"> <c:out value="checked"></c:out></c:if> value="right" name="pronation">&nbsp;&nbsp;&nbsp;Right</td>
                     
           <td width="130">Supination:</td><td><input type="radio" value="left" <c:if test="${footdetails.supination=='left'}"> <c:out value="checked"></c:out></c:if> name="supination">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>&nbsp;&nbsp;&nbsp;<td width="110"> <input type="radio" value="right"  <c:if test="${footdetails.supination=='right'}"> <c:out value="checked"></c:out></c:if> name="supination">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="35"></td>
           <td width="120">Calcaneus Varus:</td><td><input type="radio" value="left" name="calcaneus" <c:if test="${footdetails.calcaneus=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="calcaneus" <c:if test="${footdetails.calcaneus=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
           <td width="73"></td>
           <td width="120">Calcaneus Valgus:</td><td><input type="radio" value="left" name="valgus" <c:if test="${footdetails.valgus=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="valgus" <c:if test="${footdetails.valgus=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
           </tr><tr>
           <tr height="10"></tr>
           <td width="129">Forefoot Varus:</td><td><input type="radio" value="left" name="forefoot" <c:if test="${footdetails.forefoot=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="forefoot" <c:if test="${footdetails.forefoot=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
           <td width="130">Forefoot Valgus:</td><td><input type="radio" value="left" name="forefootvalgus" <c:if test="${footdetails.forefootvalgus=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="forefootvalgus" <c:if test="${footdetails.forefootvalgus=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
               
           </table>
           </br>           
         
          <table  style="border:10">      
         <tr><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION
 </b></td>
         <td width="40"></td>
         <td align="left"><input type="checkbox" value="Unremarkable" name="dysfunction" id="functional" <c:if test="${footdetails.dysfunction=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>All Soft Tissue Unremarkable</td>
         <td width="180"></td>
          </tr>  </table>       
<br>
<table>	
	<tr><td  width="130">Note  </td>
<td><textarea rows="5" cols="50" name="note" ><c:out value="${footdetails.note}"></c:out></textarea></td>	
	
	</tr></table>
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="98"></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional" <c:if test="${footdetails.functional=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>Unremarkable
         
         </td>
         <td width="230"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td><td width="145"></td>
         <td><input type="checkbox" name="orthotpedic" <c:if test="${footdetails.orthotpedic=='unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> value="unremarkable">Unremarkable
        
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
         <tr><td>Plantar Flexion:		</td><td>50</td><td><input type="text" size="5" name="plantarflexionleft" value="${footdetails.plantarflexionleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="plantarflexionright" value="${footdetails.plantarflexionright}"></td><td width="210"></td><td>Tinel's Tap:	</td><td width="150"></td><td><input size="5" type="text" value="${footdetails.tinelstapleft}" name="tinelstapleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" value="${footdetails.tinelstapright}" name="tinelstapright"></td></tr>
         <tr><td>Dorsiflexion:				</td><td>20</td><td><input size="5" type="text" name="dorsiflexionleft" value="${footdetails.dorsiflexionleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.dorsiflexionright}" name="dorsiflexionright"></td><td width="90"></td><td>Achilles Tap:</td><td width="150"></td><td><input type="text"  size="5" name="achillestapleft" value="${footdetails.achillestapleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  name="achillestapright" value="${footdetails.achillestapright}"></td></tr>
         <tr><td>Inversion:				</td><td>35</td><td><input size="5" type="text"  value="${footdetails.inversionleft}" name="inversionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5" type="text" value="${footdetails.inversionright}" name="inversionright"></td><td width="90"></td><td>Long / Transv Arch:</td><td width="150"></td><td><input type="text" size="5" value="${footdetails.longleft}"  name="longleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${footdetails.longright}" name="longright"></td></tr>
         <tr><td>Eversion:					</td><td>15</td><td><input size="5" type="text" value="${footdetails.eversionleft}" name="eversionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${footdetails.eversionright}" name="eversionright"></td><td width="90"></td><td>Thompson's:	</td><td width="150"></td><td><input type="text" size="5"  name="thompsonsleft" value="${footdetails.thompsonsleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.thompsonsright}" name="thompsonsright"></td></tr></tr>
         <tr><td>Great Toe Extension:</td><td>70</td><td><input type="text" size="5" value="${footdetails.greattoeextensionleft}" name="greattoeextensionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.greattoeextensionright}" name="greattoeextensionright"><td width="90"></td><td>Drawer:		</td><td width="150"></td><td><input type="text" size="5" value="${footdetails.drawerleft}" name="drawerleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" value="${footdetails.drawerright}" name="drawerright"></td></td></tr>
         <tr><td>Great Toe Flexion:	</td><td>45</td><td><input type="text" size="5" value="${footdetails.greattoeflexionleft}" name="greattoeflexionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.greattoeflexionright}" name="greattoeflexionright"></td><td width="90"></td><td>Lateral (Varus) Stability:</td><td width="150"></td><td><input type="text" size="5" value="${footdetails.lateralleft}" name="lateralleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.lateralright}"  name="lateralright"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Medial (Valgus) Stability:</td><td width="150"></td><td><input type="text" size="5"  name="medialstabilityleft" value="${footdetails.medialstabilityleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="medialstabilityright" value="${footdetails.medialstabilityright}"></td></tr>
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
	            ANKLE / FOOT INITIAL EXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr>
         <td width="130"><b style="font-size:14px">NEUROLOGICAL</b></td>
         <td width="246"><input type="checkbox"   <c:if test="${footdetails.neurological=='Neurological Testing Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> id=neurologicalunremarkable name="neurological" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td width="250">  <b> Sensory	</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Motor / Strength		</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Reflexes</b> (Muscle Spindles)	</td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td> </tr>
          <tr height="10"></tr>
           <tr><td>L1</td><td><input type="text"  size="5" name="inguinalarealeft" value="${footdetails.inguinalarealeft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="inguinalarearight" value="${footdetails.inguinalarearight}">&nbsp;&nbsp; (Inguinal area)</td><td>L1</td><td><input size="5" type="text" name="iliopsoasfirstleft" value="${footdetails.iliopsoasfirstleft}">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  size="5" value="${footdetails.iliopsoasfirstright}" name="iliopsoasfirstright">/5&nbsp;&nbsp; (Iliopsoas)</td><td></td><td></td></tr>
           <tr><td>L2</td><td><input size="5" type="text" name="antleft" value="${footdetails.antleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="antright" value="${footdetails.antright}">&nbsp;&nbsp;(Ant/med thigh)</td><td>L2</td><td><input type="text"  value="${footdetails.iliopsoas1left}" name="iliopsoas1left" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.iliopsoas1right}" name="iliopsoas1right">/5&nbsp;&nbsp;(Iliopsoas)</td><td></td><td>&nbsp;(2+/5 is Normal)</td></tr>
           <tr><td>L3</td><td><input type="text" name="kneeleft" size="5" value="${footdetails.kneeleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="kneeright" value="${footdetails.kneeright}">&nbsp;&nbsp;(Medial knee)</td><td>L3</td><td><input type="text" value="${footdetails.kneeextensionleft}" name="kneeextensionleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.kneeextensionright}" name="kneeextensionright">/5&nbsp;&nbsp;(Knee extension)</td><td></td><td>&nbsp; </td></tr>
           <tr><td>L4</td><td><input type="text" size="5" name="medialleft" value="${footdetails.medialleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="medialright" value="${footdetails.medialright}">&nbsp;&nbsp;(Medial leg)</td><td>L4</td><td><input type="text" value="${footdetails.kneeflexionleft}" name="kneeflexionleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${footdetails.kneeflexionright}"name="kneeflexionright">/5&nbsp;&nbsp;(Knee flexion)</td><td>L4</td><td><input type="text" name="patellarleft" size="5" value="${footdetails.patellarleft}">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  value="${footdetails.patellarright}"name="patellarright" size="5">/5&nbsp;&nbsp;Patellar</td></tr>
            <tr><td>L5</td><td><input type="text" size="5" name="latleft" value="${footdetails.latleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="latright" value="${footdetails.latright}">&nbsp;&nbsp;(Ant/lat leg)</td><td>L5</td><td><input type="text" name="dorsiflexionleft1" value="${footdetails.dorsiflexionleft1}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"  type="text"  value="${footdetails.dorsiflexionright1}" name="dorsiflexionright1">/5&nbsp;&nbsp;(Dorsiflexion)</td><td>L5</td><td><input type="text" name="hsleft" size="5" value="${footdetails.hsleft}">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="hsright"  value="${footdetails.hsright}" size="5">/5&nbsp;&nbsp;Med HS</td></tr>
            <tr><td>S1</td><td><input size="5" type="text" name="plantarleft" value="${footdetails.plantarleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="plantarright" value="${footdetails.plantarright}">&nbsp;&nbsp;(Big toe/plantar)</td><td>S1</td><td><input type="text" name="pfleft" value="${footdetails.pfleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text"  value="${footdetails.pfright}"name="pfright">/5&nbsp;&nbsp;(Grt toe ext, PF)</td><td>S1</td><td><input type="text" name="achillesleft"  value="${footdetails.achillesleft}"size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.achillesright}" name="achillesright">/5&nbsp;&nbsp;Achilles</td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><input type="checkbox"  <c:if test="${footdetails.walking=='walking'}"> <c:out value="checked=checked"></c:out></c:if> name="walking" value="walking">Walking</td><td width="110"><input type="checkbox" name="standing"  <c:if test="${footdetails.standing=='standing'}"> <c:out value="checked=checked"></c:out></c:if> value="standing"> Standing</td><td width="70"><input type="checkbox" name="stairs"  <c:if test="${footdetails.stairs=='stairs'}"> <c:out value="checked=checked"></c:out></c:if> value="stairs">Stairs</td><td><input type="checkbox" id="other" name="other" value="other"  onclick="visible('this.value')" <c:if test="${footdetails.other=='other'}"> <c:out value="checked=checked"></c:out></c:if>>Other</td><td><input type="text" name="otherdefict" id="otherdefict" value="${footdetails.otherdefict}" style="display:none "></td><td width="300"></td></tr>
           
           </table>
           <table>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><textarea rows="5" cols="50" name="comments"><c:out value="${footdetails.comments}"></c:out></textarea>   </td></tr>
           <tr height="10"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td><select name="patientstatus">
               <option  <c:if test="${footdetails.patientstatus=='Excellent'}"> <c:out value="selected"></c:out></c:if>  >Excellent</option> 
                 <option <c:if test="${footdetails.patientstatus=='Good'}"> <c:out value="selected"></c:out></c:if>> Good</option>  
                  <option <c:if test="${footdetails.patientstatus=='Fair'}"> <c:out value="selected"></c:out></c:if>> Fair</option> 
                    <option <c:if test="${footdetails.patientstatus=='Poor'}"> <c:out value="selected"></c:out></c:if>>Poor</option>               
               </select></td></tr>      
                </table>
                </br>
                <table width="100%">
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis1" value="${footdetails.diagnosis1}"></td><td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text" value="${footdetails.diagnosis2}"name="diagnosis2"></td><td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text"  value="${footdetails.diagnosis3}" name="diagnosis3"></td><td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text" value="${footdetails.diagnosis4}" name="diagnosis4"></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" value="${footdetails.diagnosis5}" name="diagnosis5"></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" name="times" value="${footdetails.times}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text" value="${footdetails.weeks}"  name="weeks">&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><input type="checkbox"  <c:if test="${footdetails.spinaldecompression=='Spinal Decompression'}"> <c:out value="checked=checked"></c:out></c:if> name="spinaldecompression" value="Spinal Decompression">Spinal Decompression</td><td width="100"><input type="checkbox" name="chiropractic"  <c:if test="${footdetails.chiropractic=='Chiropractic'}"> <c:out value="checked=checked"></c:out></c:if> value="Chiropractic">Chiropractic</td>
           <td width="150"><input type="checkbox" name="physicaltherapy"   <c:if test="${footdetails.physicaltherapy=='Physical Therapy'}"> <c:out value="checked=checked"></c:out></c:if> value="Physical Therapy">Physical Therapy</td><td width="150"><input type="checkbox"  <c:if test="${footdetails.bracing=='Orthotics/Bracing'}"> <c:out value="checked=checked"></c:out></c:if>  name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
           <td width="150"><input type="checkbox" name="modalities"   <c:if test="${footdetails.modalities=='Modalities'}"> <c:out value="checked=checked"></c:out></c:if> value="Modalities">Modalities</td> <td width="150"><input type="checkbox" name="supplementation"  <c:if test="${footdetails.supplementation=='Supplementation'}"> <c:out value="checked=checked"></c:out></c:if>  value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep"  <c:if test="${footdetails.hep=='HEP'}"> <c:out value="checked=checked"></c:out></c:if>  value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic"   <c:if test="${footdetails.radiographic=='Radiographic X-Ray'}"> <c:out value="checked=checked"></c:out></c:if> value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri"   <c:if test="${footdetails.mri=='MRI'}"> <c:out value="checked=checked"></c:out></c:if> value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan"  <c:if test="${footdetails.scan=='CT Scan'}"> <c:out value="checked=checked"></c:out></c:if> value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction"  <c:if test="${footdetails.conduction=='Nerve Conduction'}"> <c:out value="checked=checked"></c:out></c:if>  value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg"  <c:if test="${footdetails.emg=='EMG'}"> <c:out value="checked=checked"></c:out></c:if> value="EMG"	>EMG	</td> <td width="150"><input type="checkbox"   <c:if test="${footdetails.outsidereferral=='Outside Referral'}"> <c:out value="checked=checked"></c:out></c:if> name="outsidereferral" value="Outside Referral">Outside Referral 	</td><td><input type="checkbox"  <c:if test="${footdetails.dc=='D/C'}"> <c:out value="checked=checked"></c:out></c:if>  name="dc" value="D/C">D/C</td>
           </tr>   
            <tr height="10"></tr>
           <tr><td width="95"></td><td width="160">
           <input type="checkbox" id="others" name="others" <c:if test="${footdetails.others=='other'}"> <c:out value="checked=checked"></c:out></c:if> value="other" onclick="othervisible('this.value')">Other</td><td><input type="text" name="othervalue" value="${footdetails.othervalue}" id="othervalue" style="display:none ">
           </td></tr>   
                      
           </table>
           </br>
           <div><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="signature" value="${footdetails.signature}"><span class="err"><form:errors path="footexamdetails.signature"></form:errors></div>
         
         
         
         
         
         </c:otherwise>
         </c:choose>
        <table align="right"><tr><td><input type="submit" value="Save" id="saveid" class="submit_btn" onclick="return checkSubmit('this');" ></td><td> <a href="viewfootexam" style="color: white" class="submit_btn" id="cancelid" onclick="myclose()">Cancel</a></td></tr></table>
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
				                   
	      
	            
	            