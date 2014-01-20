<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>

 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
   </STYLE>
    <script>

	  $(function() {
		    $( "#slider" ).slider({
		      value:1,
		      min: 0,
		      max: 100,
		      step: 1,
		      slide: function( event, ui ) {
		        $( "#describes" ).val(+ ui.value );
		      }
		    });
		    $( "#describes" ).val(+ $( "#slider" ).slider( "value" ) );
		  });
	 
	  $(function() {
		    $( "#datepicker" ).datepicker();
		  });
	  </script>

   <script type="text/javascript">
function Checksymptom(val){
 var element=document.getElementById('other1');
 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
}
function Checksymptom(val){
 var element=document.getElementById('other2');
 if(val=='other')
  element.style.display='block';
 else  
  element.style.display='none';
	}
</script >
<script type="text/javascript">
$(function() {
    $( "#datepicker" ).datepicker();
  });

</script>
  <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
</head>
 <body>
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li>          
       </ul>
         
   <div id="tabs-1"> 
 <div id="right_content">
<form action="shoulderpainscore" method="POST" name="shoulderpainscore">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>SHOULDER PAIN SCORE</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
 <tr class="row1">
<td><h2>Patient Name:</h2></td><td width="400"><input type="text"  name="pname" /></td>
<td><h2>Number:</h2></td><td width="400"><input type="text"  name="number" /></td>
<td><h2>Date:</h2></td><td><input type="text"  id="datepicker" name="date" /></td>
</tr>
</table>
<table width="70%" align="center">
<tr class="row1">

<td></td><td width="250">Pain at rest:</td><td width="120"><input type="radio" name="painatrest" value="None">None</td><td width="120"><input type="radio" name="painatrest" value="Light">Light</td><td width="120"><input type="radio" name="painatrest" value="Average">Average</td><td width="120"><input type="radio" name="painatrest" value="Severe">Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Pain in motion:</td><td width="120"><input type="radio" name="paininmotion" value="None">None</td><td width="120"><input type="radio" name="paininmotion" value="Light">Light</td><td width="120"><input type="radio" name="paininmotion" value="Average">Average</td><td width="120"><input type="radio" name="paininmotion" value="Severe">Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Nightly pain:</td><td width="120"><input type="radio" name="nightlypain" value="None">None</td><td width="120"><input type="radio" name="nightlypain" value="Light">Light</td><td width="120"><input type="radio" name="nightlypain" value="Average">Average</td><td width="120"><input type="radio" name="nightlypain" value="Severe">Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Sleeping problem caused by pain:</td><td width="120"><input type="radio" name="sleepingproblem" value="None">None</td><td width="120"><input type="radio" name="sleepingproblem" value="Light">Light</td><td width="120"><input type="radio" name="sleepingproblem" value="Average">Average</td><td width="120"><input type="radio" name="sleepingproblem" value="Severe">Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Incapablity of lying on the painful side</td><td width="120"><input type="radio" name="incapability" value="None">None</td><td width="120"><input type="radio" name="incapability" value="Light">Light</td><td width="120"><input type="radio" name="incapability" value="Average">Average</td><td width="120"><input type="radio" name="incapability" value="Severe">Severe</td><td></td>
</tr>
</table>
<table width="100%" align="center">
<tr class="row1">
<td width="250">Degree of Radiation</td><td width="180"><input type="radio" name="degreeofradiation" value="None">None</td><td width="180"><input type="radio" name="degreeofradiation" value="Till halfway the upper Arm">Till halfway the upper Arm</td><td width="180"><input type="radio" name="degreeofradiation" value="Till the elbow">Till the elbow</td><td width="180"><input type="radio" name="degreeofradiation" value="Past the elbow">Past the elbow</td><td></td>
</tr>
</table>
<table align="center">
<tr height="30">
<td><b>Pain Scale:</b></td>
</tr>
<tr height="30"><td>Indicate on the line below the number between 0 and 100 that best describes your pain.Mark your pain as <b>No pain is 0</b> and <b>Unbearable pain is 100</b>.</td> </tr>
<tr height="30">
<td>
<label for="describes"><b>Pain Scale:</b></label>
<input type="text" id="describes" name="painscale" />&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr height="30">
<td>
<div id="slider"></div>
</td>
</tr>
</table>
<br/>
<br/>
 
</div>
</td>
</tr>
</table>
</div>
</div>
<div id="tabs-2"> 
 <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>SHOULDER PAIN SCORE</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
 <table cellpadding="0" cellspacing="0" border="0" width="98%"> 
 <tr class="row1">
<td>Date:</td><td><input type="text"  id="datepicker" name="date1" /></td>
<td width="200">
<td>Scores total:</td><td><input type="text"  id="total" name="total"/>&nbsp;;&nbsp;[100]&nbsp;&nbsp;</td><td>[48]F:</td><td><input type="text"  id="f" name="f"/>&nbsp;&nbsp;</td>
</tr>
</table>
 <table cellpadding="0" cellspacing="0" border="0" width="98%">
<tr class="row1">
<td>Name:</td><td><input type="text" id="name123" name="name123" /></td>
<td width="600">
<td>Age:</td><td><input type="text"  id="age" name="age"/></td>
</tr>
</table>
<br/>
<table>
<tr><td><h2>Instructions:Please circle the correct response</h2></td></tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="78%">
<tr class="row1">
<td>1)&nbsp;&nbsp;I have headaches:</td><td><input type="radio" name="headache" value="per month">per month</td>
<td><input type="radio" name="headache" value="more than but less than 4 per month">more than but less than 4 per month</td>
<td><input type="radio" name="headache" value="more than one per week">more than one per week</td>
</tr>
<tr class="row1">
<td>2)&nbsp;&nbsp; My headaches is:</td><td><input type="radio" name="myheadache" value="mild">mild</td>
<td><input type="radio" name="myheadache" value="moderate">moderate</td>
<td><input type="radio" name="myheadache" value="severe">severe</td>
</tr>
<table>
<tr><td><h2>Instructions:PLEASE READ CAREFULLY:</h2>The purpose of scale is to identify difficulties that you may be experiencing because of your headache.Please check off "YES" ,"SOMETIMES",or "NO" to each item.Answer each item as it pertains to your headache only.</td>
</tr>
</table>
<br/>
<table cellpadding="0" cellspacing="0" border="1" width="90%">
<tr class="row1">
<td width="180"></td><td width="100"><b>YES</b></td>
<td width="100"><b>SOMETIMES</b></td>
<td width="100"><b>NO</b></td>
</tr>
<tr class="row1">
<td>E1.Because of my headaches I feel handihapped.</td><td><input type="radio" name="handihapped" value="Yes">Yes</td>
<td><input type="radio" name="handihapped" value="Sometimes">Sometimes</td>
<td><input type="radio" name="handihapped" value="No">No</td>
</tr>
<tr class="row1">
<td>F2.Because of my headaches I feel restricted in performing my routine daily activities.</td><td><input type="radio" name="restricted" value="Yes">Yes</td>
<td><input type="radio" name="restricted" value="Sometimes">Sometimes</td>
<td><input type="radio" name="restricted" value="No">No</td>
</tr>
<tr class="row1">
<td>E3.No one understands the effect my headache have on my life </td><td><input type="radio" name="understand" value="Yes">Yes</td>
<td><input type="radio" name="understand" value="Sometimes">Sometimes</td>
<td><input type="radio" name="understand" value="No">No</td>
</tr>
<tr class="row1">
<td>F4.I restrict my recreational activities(e.g sports,hobbies) because of my headaches </td><td><input type="radio" name="recreational" value="Yes">Yes</td>
<td><input type="radio" name="recreational" value="Sometimes">Sometimes</td>
<td><input type="radio" name="recreational" value="No">No</td>
</tr>
<tr class="row1">
<td>E5.My headache makes me angry </td><td><input type="radio" name="angry" value="Yes">Yes</td>
<td><input type="radio" name="angry" value="Sometimes">Sometimes</td>
<td><input type="radio" name="angry" value="No">No</td>
</tr>
<tr class="row1">
<td>E6.Sometimes I feel that I am going to lose my control because of my headaches </td><td><input type="radio" name="control" value="Yes">Yes</td>
<td><input type="radio" name="control" value="Sometimes">Sometimes</td>
<td><input type="radio" name="control" value="No">No</td>
</tr>
<tr class="row1">
<td>F7.Because of my headaches I am less likely to socialize.  </td><td><input type="radio" name="socialize" value="Yes">Yes</td>
<td><input type="radio" name="socialize" value="Sometimes">Sometimes</td>
<td><input type="radio" name="socialize" value="No">No</td>
</tr>
<tr class="row1">
<td>E8.My spouse/significant other,or family and friends have no idea what I am going through because of my headaches.  </td><td><input type="radio" name="family" value="Yes">Yes</td>
<td><input type="radio" name="family" value="Sometimes">Sometimes</td>
<td><input type="radio" name="family" value="No">No</td>
</tr>
<tr class="row1">
<td>E9.My headaches are so bad that I feel I am going to go insane.</td><td><input type="radio" name="insane" value="Yes">Yes</td>
<td><input type="radio" name="insane" value="Sometimes">Sometimes</td>
<td><input type="radio" name="insane" value="No">No</td>
</tr>
<tr class="row1">
<td>E10.My outlook on the world is affected by my headaches.</td><td><input type="radio" name="outlook" value="Yes">Yes</td>
<td><input type="radio" name="outlook" value="Sometimes">Sometimes</td>
<td><input type="radio" name="outlook" value="No">No</td>
</tr>
<tr class="row1">
<td>E11.I am afraid to go outside when I feel a headache is starting.</td><td><input type="radio" name="afraid" value="Yes">Yes</td>
<td><input type="radio" name="afraid" value="Sometimes">Sometimes</td>
<td><input type="radio" name="afraid" value="No">No</td>
</tr>
<tr class="row1">
<td>E12.I feel desperate because of my headaches</td><td><input type="radio" name="desperate" value="Yes">Yes</td>
<td><input type="radio" name="desperate" value="Sometimes">Sometimes</td>
<td><input type="radio" name="desperate" value="No">No</td>
</tr>
<tr class="row1">
<td>F13.I am concerned that I am paying penalties at work or at home because of my headaches.</td><td><input type="radio" name="penalties" value="Yes">Yes</td>
<td><input type="radio" name="penalties" value="Sometimes">Sometimes</td>
<td><input type="radio" name="penalties" value="No">No</td>
</tr>
<tr class="row1">
<td>E14.My headaches place stress on my relationships with my family or friends.</td><td><input type="radio" name="relationship" value="Yes">Yes</td>
<td><input type="radio" name="relationship" value="Sometimes">Sometimes</td>
<td><input type="radio" name="relationship" value="No">No</td>
</tr>
<tr class="row1">
<td>F15.I avoid being around people when I have a headache.</td><td><input type="radio" name="avoid" value="Yes">Yes</td>
<td><input type="radio" name="avoid" value="Sometimes">Sometimes</td>
<td><input type="radio" name="avoid" value="No">No</td>
</tr>
<tr class="row1">
<td>F16.I believe my headaches are making it difficult for me to achieve my goals in life. </td><td><input type="radio" name="goals" value="Yes">Yes</td>
<td><input type="radio" name="goals" value="Sometimes">Sometimes</td>
<td><input type="radio" name="goals" value="No">No</td>
</tr>
<tr class="row1">
<td>F17.I am unable to think clearly because of my headaches </td><td><input type="radio" name="clear" value="Yes">Yes</td>
<td><input type="radio" name="clear" value="Sometimes">Sometimes</td>
<td><input type="radio" name="clear" value="No">No</td>
</tr>
<tr class="row1">
<td>F18.I get tense (e.g.muscle tension)because of my headache. </td><td><input type="radio" name="tension" value="Yes">Yes</td>
<td><input type="radio" name="tension" value="Sometimes">Sometimes</td>
<td><input type="radio" name="tension" value="No">No</td>
</tr>
<tr class="row1">
<td>F19.I do not enjoy social gatherings because of my headaches </td><td><input type="radio" name="gatherings" value="Yes">Yes</td>
<td><input type="radio" name="gatherings" value="Sometimes">Sometimes</td>
<td><input type="radio" name="gatherings" value="No">No</td>
</tr>
<tr class="row1">
<td>E20.I feel irritable because of my headaches. </td><td><input type="radio" name="irritable" value="Yes">Yes</td>
<td><input type="radio" name="irritable" value="Sometimes">Sometimes</td>
<td><input type="radio" name="irritable" value="No">No</td>
</tr>
<tr class="row1">
<td>F21.I avoid travelling because of my headaches. </td><td><input type="radio" name="travelling" value="Yes">Yes</td>
<td><input type="radio" name="travelling" value="Sometimes">Sometimes</td>
<td><input type="radio" name="travelling" value="No">No</td>
</tr>
<tr class="row1">
<td>E22.My headaches makes me feel confused. </td><td><input type="radio" name="confused" value="Yes">Yes</td>
<td><input type="radio" name="confused" value="Sometimes">Sometimes</td>
<td><input type="radio" name="confused" value="No">No</td>
</tr>
<tr class="row1">
<td>E23.My headaches makes me feel frustrated. </td><td><input type="radio" name="frustrated" value="Yes">Yes</td>
<td><input type="radio" name="frustrated" value="Sometimes">Sometimes</td>
<td><input type="radio" name="frustrated" value="No">No</td>
</tr>
<tr class="row1">
<td>F24.I find it difficult to read because of my headaches </td><td><input type="radio" name="difficult" value="Yes">Yes</td>
<td><input type="radio" name="difficult" value="Sometimes">Sometimes</td>
<td><input type="radio" name="difficult" value="No">No</td>
</tr>
<tr class="row1">
<td>F25.I find it difficult to focus my attention away from my headaches and on other things. </td><td><input type="radio" name="attention" value="Yes">Yes</td>
<td><input type="radio" name="attention" value="Sometimes">Sometimes</td>
<td><input type="radio" name="attention" value="No">No</td>
</tr>
<table>
<br/>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save"></td>
<td><input type="reset" class="submit_btn" value="Cancel"></td>
</tr>
</table>
 </table>
  </div>
</div>
</form>
</body>