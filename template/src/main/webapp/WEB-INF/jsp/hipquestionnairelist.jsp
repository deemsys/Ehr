<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<br><br>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">&nbsp;2</a></li>
       
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
	            VIEW HIP AND KNEE QUESTIONNAIRE</h2></center><br/>
	            
	            </div>
	           
	    <c:set value="${hipquestionnaireform.hipquestionnairedetails[0]}" var="hipquestionnairedetails"></c:set>
	     <div class="contentbox">
	      <P style="font-size: 15px"><b>Please answer the following questions for the hip/knee being treated or followed up.If it is BOTH hips/knees,please answer the questions for your worse side.All questions are about how you have felt,on average,during the past week,If you are being treated for an injury that happened less than one week ago,please answer for the period since your injury.</b></P>
	     </br><input type="hidden" value="${hipquestionnairedetails.hipquestionno}" name="hipquestionno"/>
	     <p ><b style="font-size: 13px">1.During the past week,how stiff was your hip/knee?</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <c:out value="${hipquestionnairedetails.stiff}"></c:out></p>
	   
	     <p><b  style="font-size: 13px">2.During the past week,how swollen was your hip/knee?</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${hipquestionnairedetails.swollen}"></c:out></p>
	    
	     <P ><b >The following instructions are for questions 3-5.</b></P>
	     <p><b>During the past week,please tell us about how painful your hips/knees were during the following activities.</b></p>
	  
	  <table><tr><td>
	  <table style="border-collapse: collapse;border:2px solid;">
	    
	    
	     <tr   ><td ><b>&nbsp;3.Walking on flat surfaces?</b></td><td width="200">
	     </td></tr>
	     <tr><td style= "border:1px solid;">Right Hip</td><td style= "border:1px solid;" align="center"><c:if test="${hipquestionnairedetails.flatrighthip=='1'}"> <c:out value="Not painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatrighthip=='2'}"> <c:out value="Mildly painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatrighthip=='3'}"> <c:out value="Moderately painful"></c:out></c:if><c:if test="${hipquestionnairedetails.flatrighthip=='4'}"> <c:out value="Very painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatrighthip=='5'}"> <c:out value="Extremely painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatrighthip=='6'}"> <c:out value="Could not do because of hip/knee pain"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatrighthip=='7'}"> <c:out value="Could not do for other reasons"></c:out></c:if> </td></tr>
	     
	     <tr><td style= "border:1px solid;">Left Hip</td><td style= "border:1px solid;" align="center"><c:if test="${hipquestionnairedetails.flatlefthip=='1'}"> <c:out value="Not painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatlefthip=='2'}"> <c:out value="Mildly painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatlefthip=='3'}"> <c:out value="Moderately painful"></c:out></c:if><c:if test="${hipquestionnairedetails.flatlefthip=='4'}"> <c:out value="Very painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatlefthip=='5'}"> <c:out value="Extremely painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatlefthip=='6'}"> <c:out value="Could not do because of hip/knee pain"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatlefthip=='7'}"> <c:out value="Could not do for other reasons"></c:out></c:if> </td></tr> 
	     
	      <tr><td style= "border:1px solid;">Right Knee</td><td style= "border:1px solid;" align="center"><c:if test="${hipquestionnairedetails.flatrightknee=='1'}"> <c:out value="Not painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatrightknee=='2'}"> <c:out value="Mildly painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatrightknee=='3'}"> <c:out value="Moderately painful"></c:out></c:if><c:if test="${hipquestionnairedetails.flatrightknee=='4'}"> <c:out value="Very painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatrightknee=='5'}"> <c:out value="Extremely painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatrightknee=='6'}"> <c:out value="Could not do because of knee/knee pain"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatrightknee=='7'}"> <c:out value="Could not do for other reasons"></c:out></c:if> </td></tr>
	     
	      <tr><td style= "border:1px solid;">Left Knee</td><td style= "border:1px solid;" align="center"><c:if test="${hipquestionnairedetails.flatleftknee=='1'}"> <c:out value="Not painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatleftknee=='2'}"> <c:out value="Mildly painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatleftknee=='3'}"> <c:out value="Moderately painful"></c:out></c:if><c:if test="${hipquestionnairedetails.flatleftknee=='4'}"> <c:out value="Very painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatleftknee=='5'}"> <c:out value="Extremely painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatleftknee=='6'}"> <c:out value="Could not do because of hip/knee pain"></c:out></c:if> <c:if test="${hipquestionnairedetails.flatleftknee=='7'}"> <c:out value="Could not do for other reasons"></c:out></c:if> </td></tr>
	     
	     </table>
	  </td><td width="10"></td><td>
	  <table style="border-collapse: collapse;border:2px solid;">
	    
	    
	     <tr   ><td ><b>&nbsp;4.Going up or down stairs?</b></td><td width="200">
	     </td></tr>
	     <tr><td style= "border:1px solid;">Right Hip</td><td style= "border:1px solid;" align="center"><c:if test="${hipquestionnairedetails.stairsrighthip=='1'}"> <c:out value="Not painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsrighthip=='2'}"> <c:out value="Mildly painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsrighthip=='3'}"> <c:out value="Moderately painful"></c:out></c:if><c:if test="${hipquestionnairedetails.stairsrighthip=='4'}"> <c:out value="Very painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsrighthip=='5'}"> <c:out value="Extremely painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsrighthip=='6'}"> <c:out value="Could not do because of hip/knee pain"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsrighthip=='7'}"> <c:out value="Could not do for other reasons"></c:out></c:if> </td></tr>
	     
	     <tr><td style= "border:1px solid;">Left Hip</td><td style= "border:1px solid;" align="center"><c:if test="${hipquestionnairedetails.stairslefthip=='1'}"> <c:out value="Not painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairslefthip=='2'}"> <c:out value="Mildly painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairslefthip=='3'}"> <c:out value="Moderately painful"></c:out></c:if><c:if test="${hipquestionnairedetails.stairslefthip=='4'}"> <c:out value="Very painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairslefthip=='5'}"> <c:out value="Extremely painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairslefthip=='6'}"> <c:out value="Could not do because of hip/knee pain"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairslefthip=='7'}"> <c:out value="Could not do for other reasons"></c:out></c:if> </td></tr> 
	     
	      <tr><td style= "border:1px solid;">Right Knee</td><td style= "border:1px solid;" align="center"><c:if test="${hipquestionnairedetails.stairsrightknee=='1'}"> <c:out value="Not painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsrightknee=='2'}"> <c:out value="Mildly painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsrightknee=='3'}"> <c:out value="Moderately painful"></c:out></c:if><c:if test="${hipquestionnairedetails.stairsrightknee=='4'}"> <c:out value="Very painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsrightknee=='5'}"> <c:out value="Extremely painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsrightknee=='6'}"> <c:out value="Could not do because of knee/knee pain"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsrightknee=='7'}"> <c:out value="Could not do for other reasons"></c:out></c:if> </td></tr>
	     
	      <tr><td style= "border:1px solid;">Left Knee</td><td style= "border:1px solid;" align="center"><c:if test="${hipquestionnairedetails.stairsleftknee=='1'}"> <c:out value="Not painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsleftknee=='2'}"> <c:out value="Mildly painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsleftknee=='3'}"> <c:out value="Moderately painful"></c:out></c:if><c:if test="${hipquestionnairedetails.stairsleftknee=='4'}"> <c:out value="Very painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsleftknee=='5'}"> <c:out value="Extremely painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsleftknee=='6'}"> <c:out value="Could not do because of hip/knee pain"></c:out></c:if> <c:if test="${hipquestionnairedetails.stairsleftknee=='7'}"> <c:out value="Could not do for other reasons"></c:out></c:if> </td></tr>
	     
	     </table>
	  
	  </td><td width="10"></td><Td>
	  <table style="border-collapse: collapse;border:2px solid;">
	    
	    
	     <tr   ><td ><b>&nbsp;5.Lying in bed at night?</b></td><td width="200">
	     </td></tr>
	     <tr><td style= "border:1px solid;">Right Hip</td><td style= "border:1px solid;" align="center"><c:if test="${hipquestionnairedetails.bedrighthip=='1'}"> <c:out value="Not painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedrighthip=='2'}"> <c:out value="Mildly painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedrighthip=='3'}"> <c:out value="Moderately painful"></c:out></c:if><c:if test="${hipquestionnairedetails.bedrighthip=='4'}"> <c:out value="Very painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedrighthip=='5'}"> <c:out value="Extremely painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedrighthip=='6'}"> <c:out value="Could not do because of hip/knee pain"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedrighthip=='7'}"> <c:out value="Could not do for other reasons"></c:out></c:if> </td></tr>
	     
	     <tr><td style= "border:1px solid;">Left Hip</td><td style= "border:1px solid;" align="center"><c:if test="${hipquestionnairedetails.bedlefthip=='1'}"> <c:out value="Not painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedlefthip=='2'}"> <c:out value="Mildly painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedlefthip=='3'}"> <c:out value="Moderately painful"></c:out></c:if><c:if test="${hipquestionnairedetails.bedlefthip=='4'}"> <c:out value="Very painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedlefthip=='5'}"> <c:out value="Extremely painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedlefthip=='6'}"> <c:out value="Could not do because of hip/knee pain"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedlefthip=='7'}"> <c:out value="Could not do for other reasons"></c:out></c:if> </td></tr> 
	     
	      <tr><td style= "border:1px solid;">Right Knee</td><td style= "border:1px solid;" align="center"><c:if test="${hipquestionnairedetails.bedrightknee=='1'}"> <c:out value="Not painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedrightknee=='2'}"> <c:out value="Mildly painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedrightknee=='3'}"> <c:out value="Moderately painful"></c:out></c:if><c:if test="${hipquestionnairedetails.bedrightknee=='4'}"> <c:out value="Very painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedrightknee=='5'}"> <c:out value="Extremely painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedrightknee=='6'}"> <c:out value="Could not do because of knee/knee pain"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedrightknee=='7'}"> <c:out value="Could not do for other reasons"></c:out></c:if> </td></tr>
	     
	      <tr><td style= "border:1px solid;">Left Knee</td><td style= "border:1px solid;" align="center"><c:if test="${hipquestionnairedetails.bedleftknee=='1'}"> <c:out value="Not painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedleftknee=='2'}"> <c:out value="Mildly painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedleftknee=='3'}"> <c:out value="Moderately painful"></c:out></c:if><c:if test="${hipquestionnairedetails.bedleftknee=='4'}"> <c:out value="Very painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedleftknee=='5'}"> <c:out value="Extremely painful"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedleftknee=='6'}"> <c:out value="Could not do because of hip/knee pain"></c:out></c:if> <c:if test="${hipquestionnairedetails.bedleftknee=='7'}"> <c:out value="Could not do for other reasons"></c:out></c:if> </td></tr>
	     
	     </table>
	  
	  
	  </Td></tr></table>
	  <br>
	   <p ><b style="font-size: 13px">&nbsp;6.Which  of the following statements best describes your ability to get around most of the time during the past week?</b>&nbsp;&nbsp;&nbsp;<c:out value="${hipquestionnairedetails.best}"></c:out></p>
       
              <p><b style="font-size: 13px">&nbsp;7.How difficult was it for you to put on or take off socks/stockings during the past week?&nbsp;&nbsp;&nbsp;</b><c:out value="${hipquestionnairedetails.socks}"></c:out></p>
      
<Table><tr><Td height="50"></Td></tr></Table>
	
	         </td> 
	         
	         </tr>
	         
	       
	         </table>
	         
	         </div></div>
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
           
           Today's Date:&nbsp;&nbsp;&nbsp; <b><c:out value="${hipquestionnairedetails.date}" /></b>
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
	    Your Birth Date:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><c:out value="${hipquestionnairedetails.birthdate}"/></b>
	    <br><br>
	    Your Social Security Number:&nbsp;&nbsp;&nbsp;<b> <c:out  value="${hipquestionnairedetails.security}"/></b>
	    
	    <br>
	    <br>
	    <br>
	    <table width="100%" height="150"><tr><Td></Td></tr></table>
	    <table align="right"><tr><td  >
	    
	     <a href="viewhipquestionnaire" style="color: white" class="submit_btn">Cancel</a>
	    </td></tr></table>
	    
           
           
           
          
             
           </br>
           </br>
           
          
         
        
         
         </div></td></tr></table></div></div>
         
            
	    </div></div>
         
         
        
         
         
         
         </div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            