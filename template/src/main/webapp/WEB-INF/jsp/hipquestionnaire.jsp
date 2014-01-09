<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
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
   
  

</head>
<body>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">&nbsp;2</a></li>
    <li><a href="#tabs-3">&nbsp;3</a></li>    
  </ul>  
	     <div id="tabs-1">
	     
<form action="inserthipquestionnaire" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            HIP	AND KNEE QUESTIONNAIRE</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	      <P style="font-size: 15px"><b>Please answer the following questions for the hip/knee being treated or followed up.If it is BOTH hips/knees,please answer the questions for your worse side.All questions are about how you have felt,on average,during the past week,If you are being treated for an injury that happened less than one week ago,please answer for the period since your injury.</b></P>
	     </br>
	     <p style="font-size: 15px"><b>1.During the past week,how stiff was your hip/knee?</b></p>
	     <table><tr><td width="100"><input type="radio" name="stiff" value="Not at all">Not at all</td>
	     <td width="100"><input type="radio" name="stiff" value="Mildly">Mildly</td>
	     <td width="100"><input type="radio" name="stiff" value="Moderately">Moderately</td>
	     <td width="100"><input type="radio" name="stiff" value="Very">Very</td>
	     <td><input type="radio" name="stiff" value="Extremely">Extremely</td>
	     
	     </tr></table>
	     <br>
	     <p style="font-size: 15px"><b>&nbsp;2.During the past week,how swollen was your hip/knee?</b></p>
	     <table><tr><td width="100"><input type="radio" name="swollen" value="Not at all">Not at all</td>
	     <td width="100"><input type="radio" name="swollen" value="Mildly">Mildly</td>
	     <td width="100"><input type="radio" name="swollen" value="Moderately">Moderately</td>
	     <td width="100"><input type="radio" name="swollen" value="Very">Very</td>
	     <td width="100"><input type="radio" name="swollen" value="Extremely">Extremely</td>	     
	     </tr></table>
	     <br>
	     <P style="font-size: 15px"><b>The following instructions are for questions 3-5.</b></P>
	     <p>During the past week,please tell us about how painful your hips/knees were during the following activities.</p>
	     <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="170" style= "border:2px solid;"></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Not painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Mildly painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Moderately painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>very painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Extremely painful</b></td><td width="150" valign="top" style= "border:2px solid;"><b>Could not do because of hip/knee pain</b></td><td valign="top" style= "border:2px solid;"><b>Could not do for other reasons</b></td></tr>
	     <tr   ><td ><b>&nbsp;3.Walking on flat surfaces?</b></td><td ></td><td></td><td></td><td ></td><td ></td><td ></td><td ></td></tr>
	     <tr><td style= "border:1px solid;">Right Hip</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrighthip" value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrighthip" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrighthip" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="flatrighthip">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrighthip" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrighthip" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrighthip" value="7">&nbsp;7</td></tr>
	     
	     <tr><td style= "border:1px solid;">Left Hip</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatlefthip" value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatlefthip" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatlefthip" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="flatlefthip">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatlefthip" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatlefthip" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatlefthip" value="7">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;">Right Knee</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrightknee" value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrightknee" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrightknee" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="flatrightknee">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrightknee" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrightknee" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatrightknee" value="7">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;">Left Knee</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatleftknee" value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatleftknee" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatleftknee" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="flatleftknee">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatleftknee" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatleftknee" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="flatleftknee" value="7">&nbsp;7</td></tr>
	     </table>
	     <br>
	     <table style="border-collapse: collapse;border:2px solid;">
	     <tr><td width="170"></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Not painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Mildly painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Moderately painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>very painful</b></td><td  align="center" width="150" valign="top" style= "border:2px solid;"><b>Extremely painful</b></td><td width="150" valign="top" style= "border:2px solid;"><b>Could not do because of hip/knee pain</b></td><td valign="top" style= "border:2px solid;" align="center"><b>Could not do for other reasons</b></td></tr>
	     <tr style="font-size: 15px" ><td style= "border:1px solid;"><b>&nbsp;4.Going up or down stairs?</b></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td></tr>
	     <tr><td style= "border:1px solid;">Right Hip</td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="stairsrighthip">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsrighthip" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsrighthip" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsrighthip" align="center" value="4">&nbsp;4</td><td  align="center"style= "border:1px solid;"><input type="radio" name="stairsrighthip" value="5">&nbsp;5</td><td  align="center" style= "border:1px solid;"><input type="radio" name="stairsrighthip" value="6">&nbsp;6</td><td align="center" style= "border:1px solid;" align="center"><input type="radio" name="stairsrighthip" value="7">&nbsp;7</td></tr>
	     
	     <tr><td style= "border:1px solid;">Left Hip</td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="stairslefthip">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairslefthip" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairslefthip" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairslefthip" align="center" value="4">&nbsp;4</td><td align="center" style= "border:1px solid;"><input type="radio" name="stairslefthip" value="5">&nbsp;5</td><td align="center" style= "border:1px solid;"><input type="radio" name="stairslefthip" value="6">&nbsp;6</td><td align="center" style= "border:1px solid;" align="center"><input type="radio" name="stairslefthip" value="7">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;">Right Knee</td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="stairsrightknee">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsrightknee" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsrightknee" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsrightknee" align="center" value="4">&nbsp;4</td><td align="center" style= "border:1px solid;"><input type="radio" name="stairsrightknee" value="5">&nbsp;5</td><td align="center" style= "border:1px solid;"><input type="radio" name="stairsrightknee" value="6">&nbsp;6</td><td align="center" style= "border:1px solid;" align="center"><input type="radio" name="stairsrightknee" value="7">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;">Left Knee</td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="stairsleftknee">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsleftknee" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsleftknee" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" name="stairsleftknee" align="center" value="4">&nbsp;4</td><td align="center" style= "border:1px solid;"><input type="radio" name="stairsleftknee" value="5">&nbsp;5</td><td align="center" style= "border:1px solid;"><input type="radio" name="stairsleftknee" value="6">&nbsp;6</td><td align="center" style= "border:1px solid;" align="center"><input type="radio" name="stairsleftknee" value="7">&nbsp;7</td></tr>
	    <tr height="10"></tr> 
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
           <tr><td width="170" style= "border:2px solid;"></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Not painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Mildly painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Moderately painful</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>very painful</b></td><td width="150" valign="top" align="center" style= "border:2px solid;"><b>Extremely painful</b></td><td width="150" valign="top" style= "border:2px solid;"><b>Could not do because of hip/knee pain</b></td><td valign="top" style= "border:2px solid;"><b>Could not do for other reasons</b></td></tr>
	    
	     <tr style="font-size: 15px" ><td style= "border:1px solid;"><b>&nbsp;5.Lying in bed at night?</b></td><td ></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td></tr>

	     <tr><td style= "border:1px solid;">Right Hip</td><td style= "border:1px solid;" align="center"><input type="radio"  align="center" name="bedrighthip" value="1">&nbsp;1</td><td style= "border:1px solid;" align="center" ><input type="radio" name="bedrighthip" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrighthip" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrighthip" value="4">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrighthip" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrighthip" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="bedrighthip">&nbsp;7</td></tr>
	    
	     <tr><td style= "border:1px solid;">Left Hip</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedlefthip" value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio"  value="2" name="bedlefthip">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedlefthip" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedlefthip"  value="4">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedlefthip" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedlefthip" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedlefthip" value="7">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;">Right Knee</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrightknee" value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrightknee" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrightknee" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrightknee"  value="4">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrightknee" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedrightknee" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="bedrightknee">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;">Left Knee</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedleftknee" value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedleftknee" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedleftknee" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedleftknee"  value="4">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedleftknee" value="5">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" name="bedleftknee" value="6">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="bedleftknee">&nbsp;7</td></tr>
	    <tr height="10"></tr>
          
          
          </table>
          <p><b>&nbsp;6.Which  of the following statements best describes your ability to get around most of the time during the past week?</b></p>
              <table cellpadding="0" cellspacing="0" border="0" width="100%" >
              <tr><td><input type="radio" name="best" value="I did not need support or assitance at all.">I did not need support or assitance at all.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly walked without support or assitance.">I mostly walked without support or assitance.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly used one cane or crutch to help me get around.">I mostly used one cane or crutch to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly used two canes, two crutches or a walker to help me get around.">I mostly used two canes, two crutches or a walker to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" value="I used a wheelchair.">I used a wheelchair.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly used other supports or someone else had to help me get around.">I mostly used other supports or someone else had to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" value="I was unable to get around at all.">I was unable to get around at all.</td></tr>
              
              
              </table>
              <br>
              <p><b>&nbsp;7.How difficult was it for you to put on or take off socks/stockings during the past week?</b></p>
        <table><tr><td width="150"><input type="radio" name="socks" value="Not at all difficult">Not at all difficult</td><td width="150"><input type="radio" name="socks" value="Slightly difficult">Slightly difficult</td><td width="150"><input type="radio" name="socks" value="Moderately difficult">Moderately difficult</td><td width="150"><input type="radio" name="socks" value="Very difficult">Very difficult</td><td width="150"><input type="radio" name="socks" value="Extremely difficult">Extremely difficult</td><td><input type="radio" name="socks" value="Cannot do it all">Cannot do it all</td></tr></table>     
	    
       
             
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
	    Today's Date <input type="text" name="date" id="datepicker">
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
	    Your Birth Date  <input type="date"  name="birthdate">
	    <br><br>
	    Your Social Security Number <input type="text" name="security">
	    
	    <br>
	    <br>
	    <br>
	    <table width="100%" height="150"><tr><Td></Td></tr></table>
	    <table align="right"><tr><td  >
	    
	     <input class="submit_btn" type="submit" value="Save" ></td><td><input class="submit_btn" type="reset" value="Cancel" >
	    </td></tr></table>
	    
	    </div></div>
         
         
        
         
         
         
         </div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            