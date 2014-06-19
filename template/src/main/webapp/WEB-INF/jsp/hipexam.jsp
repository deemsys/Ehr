<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>

<c:if test="${hip=='1'}">
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

	function checkSubmit()
	{
document.getElementById("pnameerror").innerHTML=" ";
		
		if(document.getElementById("pname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required Field Should not be Empty";
		
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
			
	document.getElementById("signerror").innerHTML="";
	if(document.getElementById("sign").value=="")
	{
	document.getElementById("signerror").innerHTML="Required Field Should not be Empty";
	
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
    var fieldVal = document.getElementById('iliopsoas2left').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('iliopsoas2left').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('iliopsoas2left').value = str;
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
    var fieldVal = document.getElementById('iliopsoas2right').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('iliopsoas2right').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('iliopsoas2right').value = str;
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
    var fieldVal = document.getElementById('femleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('femleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('femleft').value = str;
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
    var fieldVal = document.getElementById('femright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('femright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('femright').value = str;
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
    var fieldVal = document.getElementById('medleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('medleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('medleft').value = str;
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
    var fieldVal = document.getElementById('medright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('medright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('medright').value = str;
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
    var fieldVal = document.getElementById('maxleft').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('maxleft').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('maxleft').value = str;
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
    var fieldVal = document.getElementById('maxright').value;
    //Suppose u want 3 number of character
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById('maxright').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('maxright').value = str;
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
	function check13(id,e,value){
    //Check Charater
    	
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength13(id){
   
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
</head>
<body>

<br><br>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">2</a></li>    
  </ul>  
	     <div id="tabs-1">
	     
<form action="inserthipexam" method="POST">  
<input type="hidden" name="username" value="${username}">
 	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div id="block1">
	            <div class="headings altheading">
	            <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	            <center> <h2>
	            HIP	INITIAL EXAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	     <c:choose>
	     <c:when test="${empty hipdetails}">
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><span class="err">*</span>Patient Name:</td>
           <td><input type="text" name="pname" id="pname"><br><span class="err" id="pnameerror"><form:errors path="hipexamdetails.pname"></form:errors></td><td width="480"></td>
           <td ><span class="err">*</span>Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker"><br><span class="err" id="datepickererror"><form:errors path="hipexamdetails.date"></form:errors></td>
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
           <td>Pelvic Unleveling:</td><td></td>
           <td><select name="pelvic"><option>none</option><option>superior illiac crest right</option><option>superior iliac crest left</option></select></td>
             <td width="80"></td>
           
           
           <td width="80">A & O</td><td><select name="ao"><option>excellent</option><option> good</option><option> fair</option><option> severe</option></select></td>
           </tr>  
           </table> 
           </br>           
         
          <table  style="border:10">      
         <tr><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION
 </b></td>
         <td width="100"></td>
         <td align="left"><input type="checkbox" id="softtissuess" name="dysfunction" value="All Soft Tissue Unremarkable">All Soft Tissue Unremarkable</td>
         <td width="180"></td>
          </tr>  </table>       
<br>
<table id="softtissue" ">	
	<tr><td  width="300">Leg Length Discrepancy:  Short Leg-  </td>

	<td ><input type="checkbox" id="leftvalue" onclick="shortlegvalidate(this.value)" name="shortlegleft" value="left">&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<td><select style="display:none" id="shortlegleft" name="shortlegleftvalue" onchange='Checksymptom(this.value)'>	
	<option>1/8	</option>
	<option>1/4	</option>
	<option>3/8	</option>
	<option>1/2</option>
	<option>5/8	</option>
	<option>	3/4</option>
	<option>7/8</option>
	<option>1</option>
	<option >other</option>
	</select></td><td align="right"><input type="text" size="9" name="shortlegleftother" id="legother" style="display: none" ></td>
	<td width="112"></td>
	<td>
	<input type="checkbox" id="shortlegcheck" name="shortlegright" onclick= "shortlegvalidate1(this.value)" value="right">&nbsp;&nbsp;Right &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	<td><select style="display:none" id="shortlegright" name="shortlegrightvalue" onchange='Checksymptom1(this.value)'>	
	<option>1/8	</option>
	<option>1/4	</option>
	<option>3/8	</option>
	<option>1/2</option>
	<option>5/8	</option>
	<option>	3/4</option>
	<option>7/8</option>
	<option>1</option>
	<option>other</option>
	</select></td>&nbsp;<td><input type="text" id="legother1" size="9" name="shortlegrightother" style="display: none" >
	
	</td>
	
	
	
	</tr></table>
	<table >
	<tr height="10"></tr>
	<tr ><td width="300">Piriformis:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="left" name="piriformisleft">Left&nbsp;&nbsp;<input type="radio" value="right" name="piriformisleft">Right</td>
	
	<td width="210">Gluteus Medius:&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="left" name="gluteusleft">Left&nbsp;&nbsp;<input type="radio" name="gluteusleft" value="right">Right</td>
	<td></td>
	<td width="230">Iliopsoas:&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="iliopsoasleft" value="left">Left&nbsp;&nbsp;<input type="radio" name="iliopsoasleft" value="right">Right</td>
	
	<td>Hamstrings:&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="hamstringsleft" value="left">Left&nbsp;&nbsp;<input type="radio" value="right" name="hamstringsleft">Right</td>
	
	</tr>
	<tr height="10"></tr></table>
	<table ><tr><td valign="top">Other / Note:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="5" cols="50" name="note"></textarea></td></tr>
	
	</table>	
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="70"></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional">Unremarkable
         
         </td>
         <td width="120"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td><td width="70"></td>
         <td><input type="checkbox" name="orthotpedic" value="unremarkable">Unremarkable
        
         </td>  </tr></table>
         </br>
         <table >
         <tr>
         <td width="140" valign="top">
         (*  Pain Elicited)	
         </td>   
         <td width="160" valign="top">Normal </td><td align="center">Actual</br></br>
          Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right
         </td>
         <td></td> <td></td><td></td> <td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
          <script>
          function isNumberKey(evt)
          {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

             return true;
          }  
          
          </script>     
         
         </tr>
         <tr height="10"></tr>
         <tr><td>Flexion123:		</td><td>100</td><td><input type="text" size="5" name="flexionleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="flexionright" onkeypress="return validate(event)"></td><td width="90"></td><td>Patrick Fabere:	</td><td width="150"></td><td><input size="5" type="text"  name="fabereleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="fabereright" onkeypress="return validate(event)"></td></tr>
         <tr><td>Extension:			</td><td>30</td><td><input size="5" type="text" name="extensionleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="extensionright" onkeypress="return validate(event)"></td><td width="90"></td><td>Nachlas:</td><td width="150"></td><td><input type="text"  size="5" name="nachlasleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  name="nachlasright" onkeypress="return validate(event)"></td></tr>
         <tr><td>Abduction:				</td><td>45</td><td><input size="5" type="text" name="abductionleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5" type="text" name="abductionright" onkeypress="return validate(event)"></td><td width="90"></td><td>Ely's:</td><td width="150"></td><td><input type="text" size="5"  name="elysleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="elysright" onkeypress="return validate(event)"></td></tr>
         <tr><td>Adduction:				</td><td>30</td><td><input size="5" type="text" name="adductionleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="adductionright" onkeypress="return validate(event)"></td><td width="90"></td><td>Yeoman's:</td><td width="150"></td><td><input type="text" size="5"  name="yeomansleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="yeomansright" onkeypress="return validate(event)"></td></tr></tr>
         <tr><td>Internal Rotation:</td><td>40</td><td><input type="text" size="5" name="internalrotationleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="internalrotationright" onkeypress="return validate(event)"><td width="90"></td><td>Ober's:	</td><td width="150"></td><td><input type="text" size="5"  name="obersleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="obersright" onkeypress="return validate(event)"></td></td></tr>
         <tr><td>External Rotation:</td><td>45</td><td><input type="text" size="5" name="externalrotationleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="externalrotationright" onkeypress="return validate(event)"></td><td width="90"></td><td>	Hibbs:</td><td width="150"></td><td><input type="text" size="5" name="hibbsleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="hibbsright" onkeypress="return validate(event)"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Thomas:</td><td width="150"></td><td><input type="text" size="5"  name="thomasleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="thomasright" onkeypress="return validate(event)"></td></tr>
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
	            HIP	INITIAL EXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr>
         <td width="130"><b style="font-size:14px">NEUROLOGICAL</b></td>
         <td width="246"><input type="checkbox"  id=neurologicalunremarkable name="neurological" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td width="250">  <b> Sensory	</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Motor / Strength		</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Reflexes</b> (Muscle Spindles)	</td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td> </tr>
          <tr height="10"></tr>
           <tr><td>L1</td><td><input type="text"  size="5" name="inguinalarealeft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="inguinalarearight" onkeypress="return validate(event)">&nbsp;&nbsp; (Inguinal area)</td><td>L1</td><td><input size="5" type="text" name="iliopsoasfirstleft" id="iliopsoasfirstleft" onKeyPress="return check(event,value)" onInput="checkLength()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  size="5" name="iliopsoasfirstright" id="iliopsoasfirstright" onKeyPress="return check1(event,value)" onInput="checkLength1()">/5&nbsp;&nbsp; Iliopsoas</td><td></td><td></td></tr>
           <tr><td>L2</td><td><input size="5" type="text" name="antleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="antright" onkeypress="return validate(event)">&nbsp;&nbsp;Ant/med thigh</td><td>L2</td><td><input type="text" name="iliopsoas1left" id="iliopsoas1left" size="5" onKeyPress="return check2(event,value)" onInput="checkLength2()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="iliopsoas1right" id="iliopsoas1right" onKeyPress="return check3(event,value)" onInput="checkLength3()">/5&nbsp;&nbsp;Iliopsoas</td><td></td><td>&nbsp;(2+/5 is Normal)</td></tr>
           <tr><td>L3</td><td><input type="text" name="kneeleft" size="5" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="kneeright" onkeypress="return validate(event)">&nbsp;&nbsp;Medial knee</td><td>L3</td><td><input type="text" name="iliopsoas2left" id="iliopsoas2left" size="5" onKeyPress="return check4(event,value)" onInput="checkLength4()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="iliopsoas2right" id="iliopsoas2right" onKeyPress="return check5(event,value)" onInput="checkLength5()">/5&nbsp;&nbsp;Iliopsoas</td><td></td><td>&nbsp; </td></tr>
           <tr><td>L4</td><td><input type="text" size="5" name="medialleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="medialright" onkeypress="return validate(event)">&nbsp;&nbsp;Medial leg</td><td>L4</td><td><input type="text" name="femleft" id="femleft" size="5" onKeyPress="return check6(event,value)" onInput="checkLength6()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="femright" id="femright" onKeyPress="return check7(event,value)" onInput="checkLength7()">/5&nbsp;&nbsp;Rectus Fem</td><td>L4</td><td><input type="text" name="patellarleft" id="patellarleft" size="5" onKeyPress="return check13(id,event,value)" onInput="checkLength13(id)">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="patellarright" id="patellarright" size="5" onKeyPress="return check13(id,event,value)" onInput="checkLength13(id)">/5&nbsp;&nbsp;Patellar</td></tr>
            <tr><td>L5</td><td><input type="text" size="5" name="latleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="latright" onkeypress="return validate(event)">&nbsp;&nbsp;Ant/lat leg</td><td>L5</td><td><input type="text" name="medleft" id="medleft" size="5" onKeyPress="return check8(event,value)" onInput="checkLength8()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"  type="text" name="medright" id="medright" onKeyPress="return check9(event,value)" onInput="checkLength9()">/5&nbsp;&nbsp;Glut Med</td><td>L5</td><td><input type="text" name="hsleft" id="hsleft" size="5" onKeyPress="return check13(id,event,value)" onInput="checkLength13(id)">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="hsright" id="hsright" size="5" onKeyPress="return check13(id,event,value)" onInput="checkLength13(id)">/5&nbsp;&nbsp;Med HS</td></tr>
            <tr><td>S1</td><td><input size="5" type="text" name="plantarleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="plantarright" onkeypress="return validate(event)">&nbsp;&nbsp;Big toe/plantar</td><td>S1</td><td><input type="text" name="maxleft" id="maxleft" size="5" onKeyPress="return check10(event,value)" onInput="checkLength10()">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="maxright" id="maxright" onKeyPress="return check11(event,value)" onInput="checkLength11()">/5&nbsp;&nbsp;Glut Max</td><td>S1</td><td><input type="text" name="achillesleft" id="achillesleft" size="5" onKeyPress="return check13(id,event,value)" onInput="checkLength13(id)">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="achillesright" id="achillesright" onKeyPress="return check13(id,event,value)" onInput="checkLength13(id)">/5&nbsp;&nbsp;Achilles</td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><input type="checkbox" name="walking" value="walking">Walking</td><td width="110"><input type="checkbox" name="standing" value="standing"> Standing</td><td width="70"><input type="checkbox" name="stairs" value="stairs">Stairs</td><td><input type="checkbox" id="other" name="other" value="other"  onclick="visible('this.value')">Other</td><td><input type="text" name="otherdefict" id="otherdefict" style="display:none "></td><td width="300"></td></tr>
           
           </table>
           <table>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><textarea rows="5" cols="50" name="comments"></textarea>   </td></tr>
           <tr height="10"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td><select name="patientstatus">
               <option>Excellent</option>   <option> Good</option>   <option> Fair</option>   <option>Poor</option>               
               </select></td></tr>      
                </table>
                </br>
                <table width="100%">
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis1"></td><td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis2"></td><td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis3"></td><td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis4"></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis5"></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" name="times">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text" name="weeks">&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><input type="checkbox" name="spinaldecompression" value="Spinal Decompression">Spinal Decompression</td><td width="100"><input type="checkbox" name="chiropractic" value="Chiropractic">Chiropractic</td>
           <td width="150"><input type="checkbox" name="physicaltherapy" value="Physical Therapy">Physical Therapy</td><td width="150"><input type="checkbox" name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
           <td width="150"><input type="checkbox" name="modalities" value="Modalities	">Modalities</td> <td width="150"><input type="checkbox" name="supplementation" value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep" value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic" value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri" value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan" value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction" value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg" value="EMG		">EMG	</td> <td width="150"><input type="checkbox" name="outsidereferral" value="Outside Referral ">Outside Referral 	</td><td><input type="checkbox" name="dc" value="D/C">D/C</td>
           </tr>         
                      
           </table>
           </br>
           <div><span class="err">*</span><B style="font-size:14px">PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="signature" id="sign"><span class="err" id="signerror"><form:errors path="hipexamdetails.signature"></form:errors></div>
          </c:when>
          <c:otherwise>
                    <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><span class="err">*</span>Patient Name:</td>
          
          
           <td><input type="hidden" value="${hipdetails.hipexamno}" name="hipexamno"><input type="text" name="pname" value="${hipdetails.pname}"><br><span class="err"><form:errors path="hipexamdetails.pname"></form:errors></td><td width="480"></td>
           <td ><span class="err">*</span>Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker" value="${hipdetails.date}"><br><span class="err"><form:errors path="hipexamdetails.date"></form:errors></td>
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION </b></div>
           </br>
           <table >
           <tr><td>Gait:&nbsp;</td><td width="30"></td>  <td><select style="width:178"  name="gait"><option <c:if test="${hipdetails.gait=='normal'}"></c:if> <c:out value="selected"></c:out>>normal</option>
           <option <c:if test="${hipdetails.gait=='antalogic'}"></c:if> <c:out value="selected"></c:out>>antalogic</option>
           <option <c:if test="${hipdetails.gait=='shuffling'}"></c:if> <c:out value="selected"></c:out>>shuffling</option>
           <option <c:if test="${hipdetails.gait=='limp'}"></c:if> <c:out value="selected"></c:out>>limp</option>
           <option <c:if test="${hipdetails.gait=='stagger'}"></c:if> <c:out value="selected"></c:out>>stagger</option>
           <option <c:if test="${hipdetails.gait=='cane assisted'}"></c:if> <c:out value="selected"></c:out>>cane assisted</option>
           <option <c:if test="${hipdetails.gait=='wheelchair'}"></c:if> <c:out value="selected"></c:out>>wheelchair</option></select></td>
          
           
            
           
           </tr>
<tr height="10"></tr>
           <tr>
           <td>Pelvic Unleveling:</td><td></td>
           <td><select name="pelvic">
           <option <c:if test="${hipdetails.pelvic=='none'}"></c:if> <c:out value="selected"></c:out>>none</option>
           <option<c:if test="${hipdetails.pelvic=='superior illiac crest right'}"></c:if> <c:out value="selected"></c:out>>superior illiac crest right</option>
           <option <c:if test="${hipdetails.pelvic=='superior iliac crest left'}"></c:if> <c:out value="selected"></c:out>>superior iliac crest left</option></select></td>
             <td width="80"></td>
           
           
           <td width="80">A & O</td><td><select name="ao" ><option <c:if test="${hipdetails.ao=='excellent'}"></c:if> <c:out value="selected"></c:out>>excellent</option>
           <option <c:if test="${hipdetails.ao=='good'}"></c:if> <c:out value="selected"></c:out>> good</option>
           <option <c:if test="${hipdetails.ao=='fair'}"></c:if> <c:out value="selected"></c:out>> fair</option>
           <option <c:if test="${hipdetails.ao=='severe'}"></c:if> <c:out value="selected"></c:out>> severe</option></select></td>
           </tr>  
           </table> 
           </br>           
         
          <table  style="border:10">      
         <tr><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION
 </b></td>
         <td width="100"></td>
         <td align="left"><input type="checkbox" value="All Soft Tissue Unremarkable" <c:if test="${hipdetails.dysfunction=='All Soft Tissue Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> onclick="softtissuevalidate()" name="dysfunction" >All Soft Tissue Unremarkable</td>
         <td width="180"></td>
          </tr>  </table>       
<br>
<table id="softtissue" >	
	<tr><td  width="300">Leg Length Discrepancy:  Short Leg-  </td>

	<td ><input type="checkbox" id="leftvalue"  <c:if test="${hipdetails.shortlegleft=='left'}"> <c:out value="checked=checked"></c:out></c:if> onclick="shortlegvalidate(this.value)" name="shortlegleft" value="left">&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<td><select  id="shortlegleft" style="display: none"name="shortlegleftvalue" onchange='Checksymptom(this.value)'>	
	<option value="1/8"  <c:if test="${hipdetails.shortlegleftvalue=='1/8'}"> <c:out value="selected"></c:out></c:if>>1/8</option>
	<option  value="1/4"<c:if test="${hipdetails.shortlegleftvalue=='1/4'}"><c:out value="selected"></c:out></c:if>>1/4</option>
	<option  value="3/8"<c:if test="${hipdetails.shortlegleftvalue=='3/8'}"> <c:out value="selected"></c:out></c:if>>3/8</option>
	<option  value="1/2"<c:if test="${hipdetails.shortlegleftvalue=='1/2'}"> <c:out value="selected"></c:out></c:if>>1/2</option>
	<option  value="5/8"<c:if test="${hipdetails.shortlegleftvalue=='5/8'}"> <c:out value="selected"></c:out></c:if>>5/8</option>
	<option  value="3/4"<c:if test="${hipdetails.shortlegleftvalue=='3/4'}"> <c:out value="selected"></c:out></c:if>>3/4</option>
	<option  value="7/8"<c:if test="${hipdetails.shortlegleftvalue=='7/8'}"> <c:out value="selected"></c:out></c:if>>7/8</option>
	<option  value="1"<c:if test="${hipdetails.shortlegleftvalue=='1'}"> <c:out value="selected"></c:out></c:if>>1</option>
	<option  value="other"<c:if test="${hipdetails.shortlegleftvalue=='other'}"><c:out value="selected"></c:out></c:if>>other</option>
	</select></td><td align="right"><input type="text" size="9" value="${hipdetails.shortlegleftother}" name="shortlegleftother" id="legother" style="display: none"  ></td>
	<td width="112"></td>
	<td>
	<input type="checkbox" id="shortlegcheck" name="shortlegright" onclick= "shortlegvalidate1(this.value)" value="right"  <c:if test="${hipdetails.shortlegright=='right'}"></c:if> <c:out value="checked=checked"></c:out>>&nbsp;&nbsp;Right &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	<td><select  id="shortlegright" style="display: none"  name="shortlegrightvalue" onchange='Checksymptom1(this.value)'>	
	<option  <c:if test="${hipdetails.shortlegrightvalue=='1/8'}"> <c:out value="selected"></c:out></c:if>> 1/8	</option>
	<option <c:if test="${hipdetails.shortlegrightvalue=='1/4'}"> <c:out value="selected"></c:out></c:if>> 1/4	</option>
	<option <c:if test="${hipdetails.shortlegrightvalue=='3/8'}"> <c:out value="selected"></c:out></c:if>> 3/8	</option>
	<option <c:if test="${hipdetails.shortlegrightvalue=='1/2'}"> <c:out value="selected"></c:out></c:if>> 1/2</option>
	<option <c:if test="${hipdetails.shortlegrightvalue=='5/8'}"><c:out value="selected"></c:out></c:if>> 5/8	</option>
	<option <c:if test="${hipdetails.shortlegrightvalue=='3/4'}"> <c:out value="selected"></c:out></c:if>> 3/4</option>
	<option <c:if test="${hipdetails.shortlegrightvalue=='7/8'}"> <c:out value="selected"></c:out></c:if>> 7/8</option>
	<option <c:if test="${hipdetails.shortlegrightvalue=='1'}"><c:out value="selected"></c:out></c:if>> 1</option>
	<option <c:if test="${hipdetails.shortlegrightvalue=='other'}"> <c:out value="selected"></c:out></c:if>>other</option>
	</select></td>&nbsp;<td><input type="text" id="legother1" value="${hipdetails.shortlegrightother}"size="9" name="shortlegrightother" style="display: none" >
	
	</td>
	
	
	
	</tr></table>
	<table >
	<tr height="10"></tr>
	<tr ><td width="300"><c:out value="${hipdetails.piriformisleft}"></c:out>Piriformis:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  <c:if test="${hipdetails.piriformisleft=='left'}"><c:out value="checked"></c:out></c:if> value="left" name="piriformisleft">Left&nbsp;&nbsp;<input type="radio" <c:if test="${hipdetails.piriformisleft=='right'}"> <c:out value="checked=checked"></c:out></c:if> value="right" name="piriformisleft">Right</td>
	
	<td width="210">Gluteus Medius:&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" <c:if test="${hipdetails.gluteusleft=='left'}"> <c:out value="checked"></c:out></c:if> value="left" name="gluteusleft">Left&nbsp;&nbsp;<input <c:if test="${hipdetails.gluteusleft=='right'}"> <c:out value="checked"></c:out></c:if> type="radio" name="gluteusleft" value="right">Right</td>
	<td></td>
	<td width="230">Iliopsoas:&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="iliopsoasleft"  <c:if test="${hipdetails.iliopsoasleft=='left'}"> <c:out value="checked"></c:out></c:if> value="left">Left&nbsp;&nbsp;<input type="radio" <c:if test="${hipdetails.iliopsoasleft=='right'}"> <c:out value="checked"></c:out></c:if> name="iliopsoasleft" value="right">Right</td>
	
	<td>Hamstrings:&nbsp;&nbsp;&nbsp;&nbsp;<input <c:if test="${hipdetails.hamstringsleft=='left'}"> <c:out value="checked"></c:out></c:if> type="radio" name="hamstringsleft" value="left">Left&nbsp;&nbsp;<input <c:if test="${hipdetails.hamstringsleft=='right'}"> <c:out value="checked"></c:out></c:if> type="radio" name="hamstringsleft" value="right">Right</td>
	
	</tr>
	<tr height="10"></tr></table>
	<table><tr><td valign="top">Other / Note:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="5" cols="50" name="note">${hipdetails.note}</textarea></td></tr>
	
	</table>	
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="70"></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional" <c:if test="${hipdetails.functional=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>Unremarkable
         
         </td>
         <td width="120"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td><td width="70"></td>
         <td><input type="checkbox" name="orthotpedic" <c:if test="${hipdetails.orthotpedic=='unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> value="unremarkable">Unremarkable
        
         </td>  </tr></table>
         </br>
         <table >
         <tr>
         <td width="140" valign="top">
         (*  Pain Elicited)	
         </td>   
         <td width="160" valign="top">Normal </td><td align="center">Actual</br></br>
          Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right
         </td>
         <td></td> <td></td><td></td> <td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
               
         
         </tr>
         <tr height="10"></tr>
         <tr><td>Flexion:		</td><td>100</td><td><input type="text" size="5" value="${hipdetails.flexionleft}"name="flexionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input value="${hipdetails.flexionright}" size="5" type="text" name="flexionright"></td><td width="90"></td><td>Patrick Fabere:	</td><td width="150"></td><td><input size="5" type="text"  name="fabereleft" value="${hipdetails.fabereleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${hipdetails.fabereleft}" size="5" name="fabereright"></td></tr>
         <tr><td>Extension:			</td><td>30</td><td><input size="5" type="text"  value="${hipdetails.extensionleft}" name="extensionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input value="${hipdetails.extensionright}" size="5" type="text" name="extensionright"></td><td width="90"></td><td>Nachlas:</td><td width="150"></td><td><input type="text"  size="5" name="nachlasleft" value="${hipdetails.nachlasleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${hipdetails.nachlasright}" size="5"  name="nachlasright"></td></tr>
         <tr><td>Abduction:				</td><td>45</td><td><input size="5" type="text" name="abductionleft" value="${hipdetails.abductionright}">&nbsp;&nbsp;&nbsp;&nbsp;<input value="${hipdetails.abductionleft}"  size="5" type="text" name="abductionright"></td><td width="90"></td><td>Ely's:</td><td width="150"></td><td><input type="text" size="5"  name="elysleft" value="${hipdetails.elysleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input value="${hipdetails.elysright}" size="5" type="text"  name="elysright"></td></tr>
         <tr><td>Adduction:				</td><td>30</td><td><input size="5" type="text" value="${hipdetails.adductionleft}" name="adductionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input value="${hipdetails.adductionright}" size="5" type="text" name="adductionright"></td><td width="90"></td><td>Yeoman's:</td><td width="150"></td><td><input type="text" size="5" value="${hipdetails.yeomansleft}" name="yeomansleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipdetails.yeomansright}" name="yeomansright"></td></tr></tr>
         <tr><td>Internal Rotation:</td><td>40</td><td><input type="text" size="5" name="internalrotationleft" value="${hipdetails.internalrotationleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipdetails.internalrotationright}" name="internalrotationright"><td width="90"></td><td>Ober's:	</td><td width="150"></td><td><input type="text" size="5" value="${hipdetails.obersleft}" name="obersleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  value="${hipdetails.obersright}" type="text" size="5" name="obersright"></td></td></tr>
         <tr><td>External Rotation:</td><td>45</td><td><input type="text" size="5" name="externalrotationleft" value="${hipdetails.externalrotationleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipdetails.externalrotationright}" name="externalrotationright"></td><td width="90"></td><td>	Hibbs:</td><td width="150"></td><td><input type="text" size="5"  value="${hipdetails.hibbsleft}" name="hibbsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  value="${hipdetails.hibbsright}"size="5" type="text"  name="hibbsright"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Thomas:</td><td width="150"></td><td><input type="text" size="5" value="${hipdetails.thomasleft}" name="thomasleft">&nbsp;&nbsp;&nbsp;&nbsp;<input value="${hipdetails.thomasright}" type="text" size="5" name="thomasright"></td></tr>
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
	            HIP	INITIAL EXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr>
         <td width="130"><b style="font-size:14px">NEUROLOGICAL</b></td>
         <td width="246"><input type="checkbox"   <c:if test="${hipdetails.neurological=='Neurological Testing Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> id=neurologicalunremarkable name="neurological" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td width="250">  <b> Sensory	</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Motor / Strength		</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Reflexes</b> (Muscle Spindles)	</td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td> </tr>
          <tr height="10"></tr>
           <tr><td>L1</td><td><input type="text" value="${hipdetails.inguinalarealeft}"  size="5" name="inguinalarealeft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipdetails.inguinalarearight}" name="inguinalarearight">&nbsp;&nbsp; Inguinal area</td><td>L1</td><td><input size="5" type="text" value="${hipdetails.iliopsoasfirstleft}" name="iliopsoasfirstleft">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  size="5" value="${hipdetails.iliopsoasfirstright}" name="iliopsoasfirstright">/5&nbsp;&nbsp; Iliopsoas</td><td></td><td></td></tr>
           <tr><td>L2</td><td><input size="5" type="text" value="${hipdetails.antleft}" name="antleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" value="${hipdetails.antright}" type="text" name="antright">&nbsp;&nbsp;Ant/med thigh</td><td>L2</td><td><input type="text" name="iliopsoas1left" value="${hipdetails.iliopsoas1left}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" value="${hipdetails.iliopsoas1right}"  type="text" name="iliopsoas1right">/5&nbsp;&nbsp;Iliopsoas</td><td></td><td>&nbsp;(2+/5 is Normal)</td></tr>
           <tr><td>L3</td><td><input type="text" value="${hipdetails.kneeleft}" name="kneeleft" size="5">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipdetails.kneeright}"  name="kneeright">&nbsp;&nbsp;Medial knee</td><td>L3</td><td><input type="text" name="iliopsoas2left" value="${hipdetails.iliopsoas2left}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipdetails.iliopsoas2right}"  name="iliopsoas2right">/5&nbsp;&nbsp;Iliopsoas</td><td></td><td>&nbsp; </td></tr>
           <tr><td>L4</td><td><input type="text" size="5" value="${hipdetails.medialleft}"  name="medialleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text"  value="${hipdetails.medialright}"  name="medialright">&nbsp;&nbsp;Medial leg</td><td>L4</td><td><input type="text"  value="${hipdetails.femleft}"  name="femleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipdetails.femright}"   name="femright">/5&nbsp;&nbsp;Rectus Fem</td><td>L4</td><td><input type="text" value="${hipdetails.patellarleft}"  name="patellarleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${hipdetails.patellarright}"  name="patellarright" size="5">/5&nbsp;&nbsp;Patellar</td></tr>
            <tr><td>L5</td><td><input type="text" size="5" value="${hipdetails.latleft}"   name="latleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="latright" value="${hipdetails.latright}" >&nbsp;&nbsp;Ant/lat leg</td><td>L5</td><td><input type="text" name="medleft"  value="${hipdetails.medleft}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"  type="text" name="medright" value="${hipdetails.medright}" >/5&nbsp;&nbsp;Glut Med</td><td>L5</td><td><input type="text" name="hsleft" value="${hipdetails.hsleft}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${hipdetails.hsright}"  name="hsright"  size="5">/5&nbsp;&nbsp;Med HS</td></tr>
            <tr><td>S1</td><td><input size="5" type="text" value="${hipdetails.plantarleft}"  name="plantarleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipdetails.plantarright}"  name="plantarright">&nbsp;&nbsp;Big toe/plantar</td><td>S1</td><td><input type="text"value="${hipdetails.maxleft}"  name="maxleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" value="${hipdetails.maxright}"  name="maxright">/5&nbsp;&nbsp;Glut Max</td><td>S1</td><td><input type="text" value="${hipdetails.achillesleft}"  name="achillesleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipdetails.achillesright}" name="achillesright">/5&nbsp;&nbsp;Achilles</td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><input type="checkbox"  <c:if test="${hipdetails.walking=='walking'}"> <c:out value="checked=checked"></c:out></c:if> name="walking" value="walking">Walking</td><td width="110"><input type="checkbox" name="standing"  <c:if test="${hipdetails.standing=='standing'}"> <c:out value="checked=checked"></c:out></c:if> value="standing"> Standing</td><td width="70"><input type="checkbox" name="stairs"  <c:if test="${hipdetails.stairs=='stairs'}"> <c:out value="checked=checked" ></c:out></c:if> value="stairs">Stairs</td><td><input type="checkbox" name="other" id="other" <c:if test="${hipdetails.other=='other'}"> <c:out value="checked=checked"></c:out></c:if> value="other"   onclick="visible(this.value)">Other</td><td><input type="text" name="otherdefict" value="${hipdetails.otherdefict}" id="otherdefict" style="display:none "></td><td width="300"></td></tr>
           
           </table>
           <table>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><textarea rows="5" cols="50" name="comments">${hipdetails.comments}</textarea>   </td></tr>
           <tr height="10"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td><select name="patientstatus">
               <option  <c:if test="${hipdetails.patientstatus=='Excellent'}"> <c:out value="selected"></c:out></c:if>  >Excellent</option> 
                 <option <c:if test="${hipdetails.patientstatus=='Good'}"> <c:out value="selected"></c:out></c:if>> Good</option>  
                  <option <c:if test="${hipdetails.patientstatus=='Fair'}"> <c:out value="selected"></c:out></c:if>> Fair</option> 
                    <option <c:if test="${hipdetails.patientstatus=='Poor'}"> <c:out value="selected"></c:out></c:if>>Poor</option>               
               </select></td></tr>      
                </table>
                </br>
                <table width="100%">
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<input type="text" value="${hipdetails.diagnosis1}" name="diagnosis1"></td><td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text" value="${hipdetails.diagnosis2}" name="diagnosis2"></td><td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis3" value="${hipdetails.diagnosis3}"></td><td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text" value="${hipdetails.diagnosis4}" name="diagnosis4"></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" value="${hipdetails.diagnosis5}" name="diagnosis5"></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" value="${hipdetails.times}" name="times">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text"  value="${hipdetails.weeks}" name="weeks">&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><input type="checkbox"  <c:if test="${hipdetails.spinaldecompression=='Spinal Decompression'}"> <c:out value="checked=checked"></c:out></c:if> name="spinaldecompression" value="Spinal Decompression">Spinal Decompression</td><td width="100"><input type="checkbox" name="chiropractic"  <c:if test="${hipdetails.chiropractic=='Chiropractic'}"> <c:out value="checked=checked"></c:out></c:if> value="Chiropractic">Chiropractic</td>
           <td width="150"><input type="checkbox" name="physicaltherapy"   <c:if test="${hipdetails.physicaltherapy=='Physical Therapy'}"> <c:out value="checked=checked"></c:out></c:if> value="Physical Therapy">Physical Therapy</td><td width="150"><input type="checkbox"  <c:if test="${hipdetails.bracing=='Orthotics/Bracing'}"> <c:out value="checked=checked"></c:out></c:if>  name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
           <td width="150"><input type="checkbox" name="modalities"   <c:if test="${hipdetails.modalities=='Modalities'}"> <c:out value="checked=checked"></c:out></c:if> value="Modalities">Modalities</td> <td width="150"><input type="checkbox" name="supplementation"  <c:if test="${hipdetails.supplementation=='Supplementation'}"> <c:out value="checked=checked"></c:out></c:if>  value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep"  <c:if test="${hipdetails.hep=='HEP'}"> <c:out value="checked=checked"></c:out></c:if>  value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic"   <c:if test="${hipdetails.radiographic=='Radiographic X-Ray'}"> <c:out value="checked=checked"></c:out></c:if> value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri"   <c:if test="${hipdetails.mri=='MRI'}"> <c:out value="checked=checked"></c:out></c:if> value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan"  <c:if test="${hipdetails.scan=='CT Scan'}"> <c:out value="checked=checked"></c:out></c:if> value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction"  <c:if test="${hipdetails.conduction=='Nerve Conduction'}"> <c:out value="checked=checked"></c:out></c:if>  value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg"  <c:if test="${hipdetails.emg=='EMG'}"> <c:out value="checked=checked"></c:out></c:if> value="EMG"	>EMG	</td> <td width="150"><input type="checkbox"   <c:if test="${hipdetails.outsidereferral=='Outside Referral'}"> <c:out value="checked=checked"></c:out></c:if> name="outsidereferral" value="Outside Referral">Outside Referral 	</td><td><input type="checkbox"  <c:if test="${hipdetails.dc=='D/C'}"> <c:out value="checked=checked"></c:out></c:if>  name="dc" value="D/C">D/C</td>
           </tr>         
                      
           </table>
           </br>
           <div><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${hipdetails.signature }" name="signature"><span class="err"><form:errors path="hipexamdetails.signature"></form:errors></div>
           
          
          
          </c:otherwise>
           </c:choose>
           
         <table align="right"><tr><td><input type="submit" value="Save" id="saveid" class="submit_btn" onclick="return checkSubmit('this');" ></td><td> <a href="viewhipexam" style="color: white" class="submit_btn" id="cancelid" onclick="myclose()">Cancel</a></td></tr></table>
         </div></td></tr></table></div></div></div>
         
         <script>
 function myclose()
 {
	 window.close();
 }
 </script>
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            