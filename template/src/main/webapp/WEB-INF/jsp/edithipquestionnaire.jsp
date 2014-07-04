<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <link rel="stylesheet" href="/resources/css/style.css" />
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
<script>
i=0;
$(document).ready(function(){
  $("#security").keypress(function(){
var phone=document.getElementById("security").value;
phone = phone.replace(/(\d{3})(\d{2})(\d+)/,'$1-$2-$3');
document.getElementById("security").value=phone;
 });  

});
</script>
<!-- <script>
  $(function() {
	$("#security").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
 -->
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
 
 $(function() {
     $( "#datepicker1" ).datepicker();
   });
</script>
   
  <script type="text/javascript">
       function validate(event) {
          
           var regex = new RegExp("^[0-9]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script>
<script>

	function checkSubmit()
	{
		document.getElementById("datepickererror").innerHTML=" ";
		
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		
		document.getElementById("securityerror").innerHTML=" ";
		
		if(document.getElementById("security").value=="")
		{
		document.getElementById("securityerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		 document.getElementById("securityerror").innerHTML=" ";
		
		if(document.getElementById("security").value.length<11)
		{
		document.getElementById("securityerror").innerHTML="Invalid social security number format";
		
		return false;
		}
		
		document.getElementById("securityerror").innerHTML="";
		var txt1=document.getElementById("security").value;
		var txt2=txt1.substring(0,3);
		if(txt2==000)
		{
		document.getElementById("securityerror").innerHTML="Invalid social security number";
		return false;
		}
		document.getElementById("datepickererror").innerHTML="";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		if(document.getElementById("datepicker").value.match(datechk)==null)
	    {
	    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
	    	
	        return false;
	    }
		document.getElementById("datepicker1error").innerHTML="";
var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker1").value !="") {
		  if (re.test(document.getElementById("datepicker1").value) == false) {
			  document.getElementById("datepicker1error").innerHTML="Invalid Date Format";
			  return false;
		  }
		}
	}

	</script>
</head>
<body>
<br><br>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">&nbsp;2</a></li>
    <li><a href="#tabs-3">&nbsp;3</a></li>    
  </ul>  
	     <div id="tabs-1">
	     
<form action="updatehipquestionnaire" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            HIP	AND KNEE QUESTIONNAIRE</h2></center><br/>
	            
	            </div>
	           
	    <c:set value="${hipquestionnaireform.hipquestionnairedetails[0]}" var="hipquestionnairedetails"></c:set>
	     <div class="contentbox">
	      <P style="font-size: 15px"><b>Please answer the following questions for the hip/knee being treated or followed up.If it is BOTH hips/knees,please answer the questions for your worse side.All questions are about how you have felt,on average,during the past week,If you are being treated for an injury that happened less than one week ago,please answer for the period since your injury.</b></P>
	     </br><input type="hidden" value="${hipquestionnairedetails.hipquestionno}" name="hipquestionno"/>
	     <p style="font-size: 15px"><b>1.During the past week,how stiff was your hip/knee?</b></p>
	     <table><tr><td width="100"><input type="radio" name="stiff"  <c:if test="${hipquestionnairedetails.stiff=='Not at all'}"> <c:out value="checked"></c:out></c:if> value="Not at all">Not at all</td>
	     <td width="100"><input type="radio" name="stiff" <c:if test="${hipquestionnairedetails.stiff=='Mildly'}"> <c:out value="checked"></c:out></c:if> value="Mildly">Mildly</td>
	     <td width="100"><input type="radio" name="stiff" <c:if test="${hipquestionnairedetails.stiff=='Moderately'}"> <c:out value="checked"></c:out></c:if> value="Moderately">Moderately</td>
	     <td width="100"><input type="radio" name="stiff" <c:if test="${hipquestionnairedetails.stiff=='Very'}"> <c:out value="checked"></c:out></c:if> value="Very">Very</td>
	     <td><input type="radio" name="stiff" <c:if test="${hipquestionnairedetails.stiff=='Extremely'}"> <c:out value="checked"></c:out></c:if> value="Extremely">Extremely</td>
	     
	     </tr></table>
	     <br>
	     <p style="font-size: 15px"><b>&nbsp;2.During the past week,how swollen was your hip/knee?</b></p>
	     <table><tr><td width="100"><input type="radio" name="swollen"  <c:if test="${hipquestionnairedetails.swollen=='Not at all'}"> <c:out value="checked"></c:out></c:if> value="Not at all">Not at all</td>
	     <td width="100"><input type="radio" name="swollen" <c:if test="${hipquestionnairedetails.swollen=='Mildly'}"> <c:out value="checked"></c:out></c:if> value="Mildly">Mildly</td>
	     <td width="100"><input type="radio" name="swollen" <c:if test="${hipquestionnairedetails.swollen=='Moderately'}"> <c:out value="checked"></c:out></c:if> value="Moderately">Moderately</td>
	     <td width="100"><input type="radio" name="swollen" <c:if test="${hipquestionnairedetails.swollen=='Very'}"> <c:out value="checked"></c:out></c:if> value="Very">Very</td>
	     <td><input type="radio" name="swollen" <c:if test="${hipquestionnairedetails.swollen=='Extremely'}"> <c:out value="checked"></c:out></c:if> value="Extremely">Extremely</td>
	     
	     </tr></table>
	     <br>
	     <P style="font-size: 15px"><b>The following instructions are for questions 3-5.</b></P>
	     <p>During the past week,please tell us about how painful your hips/knees were during the following activities.</p>
	     <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="170" style= "border:2px solid;"></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Not painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Mildly painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Moderately painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>very painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Extremely painful</b></td><td width="150" valign="top" style= "border:2px solid;"><b>Could not do because of hip/knee pain</b></td><td valign="top" style= "border:2px solid;"><b>Could not do for other reasons</b></td></tr>
	     <tr   ><td ><b>&nbsp;3.Walking on flat surfaces?</b></td><td ></td><td></td><td></td><td ></td><td ></td><td ></td><td ></td></tr>
	     <tr><td style= "border:1px solid;">Right Hip</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrighthip" <c:if test="${hipquestionnairedetails.flatrighthip=='1'}"> <c:out value="checked"></c:out></c:if> value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.flatrighthip=='2'}"> <c:out value="checked"></c:out></c:if> name="flatrighthip" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${hipquestionnairedetails.flatrighthip=='3'}"> <c:out value="checked"></c:out></c:if> name="flatrighthip" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${hipquestionnairedetails.flatrighthip=='4'}"> <c:out value="checked"></c:out></c:if> value="4" name="flatrighthip">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.flatrighthip=='5'}"> <c:out value="checked"></c:out></c:if> name="flatrighthip" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.flatrighthip=='6'}"> <c:out value="checked"></c:out></c:if> name="flatrighthip" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.flatrighthip=='7'}"> <c:out value="checked"></c:out></c:if> name="flatrighthip" value="7">&nbsp;7</td></tr>
	     
	     <tr><td style= "border:1px solid;">Left Hip</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatlefthip" <c:if test="${hipquestionnairedetails.flatlefthip=='1'}"> <c:out value="checked"></c:out></c:if> value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatlefthip"  <c:if test="${hipquestionnairedetails.flatlefthip=='2'}"> <c:out value="checked"></c:out></c:if> value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.flatlefthip=='3'}"> <c:out value="checked"></c:out></c:if> name="flatlefthip" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${hipquestionnairedetails.flatlefthip=='4'}"> <c:out value="checked"></c:out></c:if> value="4" name="flatlefthip">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.flatlefthip=='5'}"> <c:out value="checked"></c:out></c:if> name="flatlefthip" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${hipquestionnairedetails.flatlefthip=='6'}"> <c:out value="checked"></c:out></c:if> name="flatlefthip" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatlefthip"  <c:if test="${hipquestionnairedetails.flatlefthip=='7'}"> <c:out value="checked"></c:out></c:if> value="7">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;">Right Knee</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrightknee" value="1" <c:if test="${hipquestionnairedetails.flatrightknee=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrightknee"  <c:if test="${hipquestionnairedetails.flatrightknee=='2'}"> <c:out value="checked"></c:out></c:if> value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrightknee"  <c:if test="${hipquestionnairedetails.flatrightknee=='3'}"> <c:out value="checked"></c:out></c:if> value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" <c:if test="${hipquestionnairedetails.flatrightknee=='4'}"> <c:out value="checked"></c:out></c:if> name="flatrightknee">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.flatrightknee=='5'}"> <c:out value="checked"></c:out></c:if> name="flatrightknee" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrightknee" <c:if test="${hipquestionnairedetails.flatrightknee=='6'}"> <c:out value="checked"></c:out></c:if> value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrightknee" <c:if test="${hipquestionnairedetails.flatrightknee=='7'}"> <c:out value="checked"></c:out></c:if> value="7">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;">Left Knee</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatleftknee"  <c:if test="${hipquestionnairedetails.flatleftknee=='1'}"> <c:out value="checked"></c:out></c:if>value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.flatleftknee=='2'}"> <c:out value="checked"></c:out></c:if> name="flatleftknee" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.flatleftknee=='3'}"> <c:out value="checked"></c:out></c:if>  name="flatleftknee" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" <c:if test="${hipquestionnairedetails.flatleftknee=='4'}"> <c:out value="checked"></c:out></c:if>  name="flatleftknee">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.flatleftknee=='5'}"> <c:out value="checked"></c:out></c:if> name="flatleftknee" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.flatleftknee=='6'}"> <c:out value="checked"></c:out></c:if> name="flatleftknee" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatleftknee"  <c:if test="${hipquestionnairedetails.flatleftknee=='7'}"> <c:out value="checked"></c:out></c:if> value="7">&nbsp;7</td></tr>
	     </table>
	     <br>
	     <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="170" style= "border:2px solid;"></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Not painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Mildly painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Moderately painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>very painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Extremely painful</b></td><td width="150" valign="top" style= "border:2px solid;"><b>Could not do because of hip/knee pain</b></td><td valign="top" style= "border:2px solid;"><b>Could not do for other reasons</b></td></tr>
	     <tr   ><td ><b>&nbsp;4.Going up or down stairs?</td><td ></td><td></td><td></td><td ></td><td ></td><td ></td><td ></td></tr>
	     <tr><td style= "border:1px solid;">Right Hip</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsrighthip" <c:if test="${hipquestionnairedetails.stairsrighthip=='1'}"> <c:out value="checked"></c:out></c:if> value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.stairsrighthip=='2'}"> <c:out value="checked"></c:out></c:if> name="stairsrighthip" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${hipquestionnairedetails.stairsrighthip=='3'}"> <c:out value="checked"></c:out></c:if> name="stairsrighthip" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${hipquestionnairedetails.stairsrighthip=='4'}"> <c:out value="checked"></c:out></c:if> value="4" name="stairsrighthip">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.stairsrighthip=='5'}"> <c:out value="checked"></c:out></c:if> name="stairsrighthip" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.stairsrighthip=='6'}"> <c:out value="checked"></c:out></c:if> name="stairsrighthip" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.stairsrighthip=='7'}"> <c:out value="checked"></c:out></c:if> name="stairsrighthip" value="7">&nbsp;7</td></tr>
	     
	     <tr><td style= "border:1px solid;">Left Hip</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairslefthip" <c:if test="${hipquestionnairedetails.stairslefthip=='1'}"> <c:out value="checked"></c:out></c:if> value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairslefthip"  <c:if test="${hipquestionnairedetails.stairslefthip=='2'}"> <c:out value="checked"></c:out></c:if> value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.stairslefthip=='3'}"> <c:out value="checked"></c:out></c:if> name="stairslefthip" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${hipquestionnairedetails.stairslefthip=='4'}"> <c:out value="checked"></c:out></c:if> value="4" name="stairslefthip">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.stairslefthip=='5'}"> <c:out value="checked"></c:out></c:if> name="stairslefthip" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${hipquestionnairedetails.stairslefthip=='6'}"> <c:out value="checked"></c:out></c:if> name="stairslefthip" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairslefthip"  <c:if test="${hipquestionnairedetails.stairslefthip=='7'}"> <c:out value="checked"></c:out></c:if> value="7">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;">Right Knee</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsrightknee" value="1" <c:if test="${hipquestionnairedetails.stairsrightknee=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsrightknee"  <c:if test="${hipquestionnairedetails.stairsrightknee=='2'}"> <c:out value="checked"></c:out></c:if> value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsrightknee"  <c:if test="${hipquestionnairedetails.stairsrightknee=='3'}"> <c:out value="checked"></c:out></c:if> value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" <c:if test="${hipquestionnairedetails.stairsrightknee=='4'}"> <c:out value="checked"></c:out></c:if> name="stairsrightknee">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.stairsrightknee=='5'}"> <c:out value="checked"></c:out></c:if> name="stairsrightknee" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsrightknee" <c:if test="${hipquestionnairedetails.stairsrightknee=='6'}"> <c:out value="checked"></c:out></c:if> value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsrightknee" <c:if test="${hipquestionnairedetails.stairsrightknee=='7'}"> <c:out value="checked"></c:out></c:if> value="7">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;">Left Knee</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsleftknee"  <c:if test="${hipquestionnairedetails.stairsleftknee=='1'}"> <c:out value="checked"></c:out></c:if>value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.stairsleftknee=='2'}"> <c:out value="checked"></c:out></c:if> name="stairsleftknee" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.stairsleftknee=='3'}"> <c:out value="checked"></c:out></c:if>  name="stairsleftknee" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" <c:if test="${hipquestionnairedetails.stairsleftknee=='4'}"> <c:out value="checked"></c:out></c:if>  name="stairsleftknee">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.stairsleftknee=='5'}"> <c:out value="checked"></c:out></c:if> name="stairsleftknee" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.stairsleftknee=='6'}"> <c:out value="checked"></c:out></c:if> name="stairsleftknee" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsleftknee"  <c:if test="${hipquestionnairedetails.stairsleftknee=='7'}"> <c:out value="checked"></c:out></c:if> value="7">&nbsp;7</td></tr>
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
	            HIP	AND KNEE QUESTIONNAIRE</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
           <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="170" style= "border:2px solid;"></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Not painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Mildly painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Moderately painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>very painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Extremely painful</b></td><td width="150" valign="top" style= "border:2px solid;"><b>Could not do because of hip/knee pain</b></td><td valign="top" style= "border:2px solid;"><b>Could not do for other reasons</b></td></tr>
	     <tr   ><td ><b>&nbsp;5.Lying in bed at night?</td><td ></td><td></td><td></td><td ></td><td ></td><td ></td><td ></td></tr>
	     <tr><td style= "border:1px solid;">Right Hip</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrighthip" <c:if test="${hipquestionnairedetails.bedrighthip=='1'}"> <c:out value="checked"></c:out></c:if> value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.bedrighthip=='2'}"> <c:out value="checked"></c:out></c:if> name="bedrighthip" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${hipquestionnairedetails.bedrighthip=='3'}"> <c:out value="checked"></c:out></c:if> name="bedrighthip" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${hipquestionnairedetails.bedrighthip=='4'}"> <c:out value="checked"></c:out></c:if> value="4" name="bedrighthip">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.bedrighthip=='5'}"> <c:out value="checked"></c:out></c:if> name="bedrighthip" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.bedrighthip=='6'}"> <c:out value="checked"></c:out></c:if> name="bedrighthip" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.bedrighthip=='7'}"> <c:out value="checked"></c:out></c:if> name="bedrighthip" value="7">&nbsp;7</td></tr>
	     
	     <tr><td style= "border:1px solid;">Left Hip</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedlefthip" <c:if test="${hipquestionnairedetails.bedlefthip=='1'}"> <c:out value="checked"></c:out></c:if> value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedlefthip"  <c:if test="${hipquestionnairedetails.bedlefthip=='2'}"> <c:out value="checked"></c:out></c:if> value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.bedlefthip=='3'}"> <c:out value="checked"></c:out></c:if> name="bedlefthip" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${hipquestionnairedetails.bedlefthip=='4'}"> <c:out value="checked"></c:out></c:if> value="4" name="bedlefthip">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.bedlefthip=='5'}"> <c:out value="checked"></c:out></c:if> name="bedlefthip" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${hipquestionnairedetails.bedlefthip=='6'}"> <c:out value="checked"></c:out></c:if> name="bedlefthip" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedlefthip"  <c:if test="${hipquestionnairedetails.bedlefthip=='7'}"> <c:out value="checked"></c:out></c:if> value="7">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;">Right Knee</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrightknee" value="1" <c:if test="${hipquestionnairedetails.bedrightknee=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrightknee"  <c:if test="${hipquestionnairedetails.bedrightknee=='2'}"> <c:out value="checked"></c:out></c:if> value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrightknee"  <c:if test="${hipquestionnairedetails.bedrightknee=='3'}"> <c:out value="checked"></c:out></c:if> value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" <c:if test="${hipquestionnairedetails.bedrightknee=='4'}"> <c:out value="checked"></c:out></c:if> name="bedrightknee">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.bedrightknee=='5'}"> <c:out value="checked"></c:out></c:if> name="bedrightknee" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrightknee" <c:if test="${hipquestionnairedetails.bedrightknee=='6'}"> <c:out value="checked"></c:out></c:if> value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrightknee" <c:if test="${hipquestionnairedetails.bedrightknee=='7'}"> <c:out value="checked"></c:out></c:if> value="7">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;">Left Knee</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedleftknee"  <c:if test="${hipquestionnairedetails.bedleftknee=='1'}"> <c:out value="checked"></c:out></c:if>value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.bedleftknee=='2'}"> <c:out value="checked"></c:out></c:if> name="bedleftknee" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.bedleftknee=='3'}"> <c:out value="checked"></c:out></c:if>  name="bedleftknee" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" <c:if test="${hipquestionnairedetails.bedleftknee=='4'}"> <c:out value="checked"></c:out></c:if>  name="bedleftknee">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.bedleftknee=='5'}"> <c:out value="checked"></c:out></c:if> name="bedleftknee" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${hipquestionnairedetails.bedleftknee=='6'}"> <c:out value="checked"></c:out></c:if> name="bedleftknee" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedleftknee"  <c:if test="${hipquestionnairedetails.bedleftknee=='7'}"> <c:out value="checked"></c:out></c:if> value="7">&nbsp;7</td></tr>
	     </table>
          <p><b>&nbsp;6.Which  of the following statements best describes your ability to get around most of the time during the past week?</b></p>
              <table cellpadding="0" cellspacing="0" border="0" width="100%" >
              <tr><td><input type="radio" name="best" <c:if test="${hipquestionnairedetails.best=='I did not need support or assitance at all.'}"> <c:out value="checked"></c:out></c:if> value="I did not need support or assitance at all.">I did not need support or assitance at all.</td></tr>
              <tr><td><input type="radio" name="best" <c:if test="${hipquestionnairedetails.best=='I mostly walked without support or assitance.'}"> <c:out value="checked"></c:out></c:if> value="I mostly walked without support or assitance.">I mostly walked without support or assitance.</td></tr>
              <tr><td><input type="radio" name="best" <c:if test="${hipquestionnairedetails.best=='I mostly used one cane or crutch to help me get around.'}"> <c:out value="checked"></c:out></c:if> value="I mostly used one cane or crutch to help me get around.">I mostly used one cane or crutch to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" <c:if test="${hipquestionnairedetails.best=='I mostly used two canes, two crutches or a walker to help me get around.'}"> <c:out value="checked"></c:out></c:if> value="I mostly used two canes, two crutches or a walker to help me get around.">I mostly used two canes, two crutches or a walker to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" <c:if test="${hipquestionnairedetails.best=='I used a wheelchair.'}"> <c:out value="checked"></c:out></c:if> value="I used a wheelchair.">I used a wheelchair.</td></tr>
              <tr><td><input type="radio" name="best" <c:if test="${hipquestionnairedetails.best=='I mostly used other supports or someone else had to help me get around.'}"> <c:out value="checked"></c:out></c:if> value="I mostly used other supports or someone else had to help me get around.">I mostly used other supports or someone else had to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" <c:if test="${hipquestionnairedetails.best=='I was unable to get around at all.'}"> <c:out value="checked"></c:out></c:if> value="I was unable to get around at all.">I was unable to get around at all.</td></tr>
              
              
              </table>
              <br>
              <p><b>&nbsp;7.How difficult was it for you to put on or take off socks/stockings during the past week?</b></p>
        <table><tr><td width="150"><input type="radio"  <c:if test="${hipquestionnairedetails.socks=='Not at all difficult'}"> <c:out value="checked"></c:out></c:if> name="socks" value="Not at all difficult">Not at all difficult</td><td width="150"><input type="radio" name="socks" <c:if test="${hipquestionnairedetails.socks=='Slightly difficult'}"> <c:out value="checked"></c:out></c:if> value="Slightly difficult">Slightly difficult</td><td width="150"><input type="radio" name="socks"  <c:if test="${hipquestionnairedetails.socks=='Moderately difficult'}"> <c:out value="checked"></c:out></c:if> value="Moderately difficult">Moderately difficult</td><td width="150"><input type="radio" name="socks"  <c:if test="${hipquestionnairedetails.socks=='Very difficult'}"> <c:out value="checked"></c:out></c:if> value="Very difficult">Very difficult</td><td width="150"><input type="radio" name="socks" <c:if test="${hipquestionnairedetails.socks=='Extremely difficult'}"> <c:out value="checked"></c:out></c:if> value="Extremely difficult">Extremely difficult</td><td><input type="radio" name="socks" <c:if test="${hipquestionnairedetails.socks=='Cannot do it all'}"> <c:out value="checked"></c:out></c:if>  value="Cannot do it all">Cannot do it all</td></tr></table>     
	    
       
             
           </br>
           </br>
           
          
         
        
         
         </div></td></tr></table></div></div>
         
         <div id="tabs-3">     

	    <div id="right_content">
	    <table cellpadding="0" cellspacing="0" border="0" width="100%"  class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            HIP	AND KNEE QUESTIONNAIRE</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
	    <span class="err">* </span> Date: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="date"  class="input_txtbx1" id="datepicker" value="${hipquestionnairedetails.date}" style="width: 200px; "><br><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="hipquestionnaire.date"></form:errors></span>
	    <br>
	    <br>
	    
	    <p>Thank you for completing this questionnaire!	 </br></br>
	    This questionnaire will help us to better understand your general health and any problems related to bone and muscle conditions.
	    <br>
	    Your completion of this questionnaire is completely voluntary and your responses will be held in the strictest confidence.
	    </br>
	    </br>
	    There are no rigth or wrong answers.If you are not sure how to answer a question,just give the best answer you can.You can make comments in the margin.We do read all your comments,so feel free to make as many you wish.
	    </br>
	    </br>
	       </p>
	    Your Birth Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text"  class="input_txtbx1" id="datepicker1" style="width: 200px; "value="${hipquestionnairedetails.birthdate}" name="birthdate"><br><span id="datepicker1error"  style="color: red;font-style:italic;"></span>
	    <br><br>
	   <span class="err">* </span> Your Social Security Number: <input type="text" name="security" id="security" onkeypress="return validate(event)"; maxlength="11" value="${hipquestionnairedetails.security}" class="input_txtbx1" style="width: 200px; "><br><span style="color: red;font-style:italic;" id="securityerror"></span>
	    <div id="number">
	    <br>
	    <br>
	    <br>
	    <table width="100%" height="150"><tr><Td></Td></tr></table>
	    <table align="right"><tr><td  >
	    
	     <input class="submit_btn" type="submit" value="Update" onclick="return checkSubmit('this');" ></td><td><a href="deletehipquestionnairedetails" style="color: white" class="submit_btn" onclick="return confirmation() ">Delete</a>
	    </td></tr></table>
	    
	    </div></div>
         
         
        
         
         
         
         </div>
         
         
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
				                   
	      
	            
	            