<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="/resources/css/style.css" />
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
 var element=document.getElementById('otherdefict');
 element.style.display='block';
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
    <li><a href="#tabs-2">2</a></li>    
  </ul>  
	     <div id="tabs-1">
	     
 
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            VIEW SHOULDER EXAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	      <c:forEach items="${shoulderexamform.shoulderexamdetails}" var="shoulderexamdetails" varStatus="status">
	     	
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><b>Patient Name:</b></td>
          
           
           <td><input type="hidden" value="${shoulderexamdetails.shoulderexamno}" name="shoulderexamno"><c:out value="${shoulderexamdetails.pname}"/></td><td width="650"></td>
           <td ><b>Date:</b>&nbsp;</td> <td><c:out value="${shoulderexamdetails.date}"></c:out></td>
           </tr>
            </table>
            </br> 
           <table  cellspacing="0" cellpadding="0"><tr class="row2"><td><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION: </b></td><td width="830"></td></tr></table>
         
           <table >
           
<tr height="10"></tr>
           <tr height="10"></tr>
           <tr>
           <td ><b>Muscle Symmetry:</b></td><td width="20">
           <td><c:out value="${shoulderexamdetails.muscle}"></c:out></td><td width="135"></td>
             <td width="140">Swelling  / Discoloration</td>
             <td width="40"><c:out value="${shoulderexamdetails.swelling}"></c:out></td>
           
           <td width="120"></td>
           <td width="120"><b>A & O</b></td><td><c:out value="${shoulderexamdetails.ao}"></c:out></td>
           </tr>  
           </table> 
           </br>  
           
           </br>           
                  
         
          <table  style="border:10" cellspacing="0" cellpadding="0">      
         <tr class="row2" cellspacing="0" cellpadding="0" ><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION:
 </b></td>
         
         <td align="left"><c:out value="${shoulderexamdetails.dysfunction}"></c:out></td>
         <td width="870"></td>
          </tr>  </table>       
<br>
<table>
           <tr>
           <td width="129"><b>Pectoralis Minor:</b></td><td><c:out value="${shoulderexamdetails.pectoralisminor}"></c:out>&nbsp;</td> <td width="140">&nbsp;</td>
                     
           <td width="130"><b>Supraspinatus:</b></td><td><c:out value="${shoulderexamdetails.supraspinatus}"></c:out></td>&nbsp;&nbsp;&nbsp;<td width="110"></td>
           <td width="35"></td>
           <td width="120"><b>Infraspinatus:</b></td><td><c:out value="${shoulderexamdetails.infraspinatus}"></c:out>&nbsp;&nbsp;</td>
           <td width="73"></td>
           <td width="120"><b>Serratus Ant</b></td><td><c:out value="${shoulderexamdetails.serratusant}"></c:out>&nbsp;</td>
           </tr>
           <tr height="10"></tr>
           <tr>
           <td width="129"><b>Teres Minor:</b></td><td><c:out value="${shoulderexamdetails.teresminor}"></c:out>&nbsp;&nbsp;</td><td width="110"> </td>
           <td width="130"><b>Teres Major:</b></td><td><c:out value="${shoulderexamdetails.teresmajor}"></c:out></td><td width="110"> &nbsp;</td>
           <td></td><td><b>Rhomboids:</b></td><td><c:out value="${shoulderexamdetails.rhomboids}"></c:out>&nbsp;</td>
           <td></td><td><b>Trapezius:</b></td><td><c:out value="${shoulderexamdetails.trapezius}"></c:out></td>
           </tr>
               
           </table>
</br>
<table>	
	<tr><td  width="130"><b>Note</b>  </td><td><c:out value="${shoulderexamdetails.note}"></c:out></td>
	</tr></table>
	</br>
	<table  style="border:10" cellspacing="0" cellpadding="0">      
         <tr class="row2">
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION:     </b></td><td width="28"></td>
         <td> <c:out value="${shoulderexamdetails.functional}"/> 
         
         </td>
         <td width="182"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING:    </b></td><td width="25"></td>
         <td><c:out value="${shoulderexamdetails.orthotpedic}"/> 
        
         </td> <td width="280"></td> </tr></table>
         </br>
         <table >
         <tr>
         <td width="140" valign="top">
         <b>(*  Pain Elicited)</b>	
         </td>   
         <td width="160" valign="top"><b>Normal </b></td><td align="center"><b>Actual</br></br>
          Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><b></br></br>Right</b>
         </td>
         <td></td> <td></td><td></td> <td><b>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>Right</b></td>
               
         
         </tr>
         <tr height="10"></tr>
         <tr><td><b>Flexion:</b>		</td><td>50</td><td><c:out value="${shoulderexamdetails.flexionleft}"/></td><td><c:out value="${shoulderexamdetails.flexionright}" /></td><td width="145"></td><td><b>Empty Can:</b>	</td><td width="118"></td><td><c:out value="${shoulderexamdetails.emptycanleft}"/></td><td><c:out value="${shoulderexamdetails.emptycanright}"/></td></tr>
         <tr><td><b>Extension:</b>			</td><td>20</td><td><c:out value="${shoulderexamdetails.extensionleft}"/></td><td><c:out value="${shoulderexamdetails.extensionright}"/></td><td width="90"></td><td><b>Impingement Sign:</b></td><td width=""></td><td><c:out value="${shoulderexamdetails.impingementsignleft}"/></td><td><c:out value="${shoulderexamdetails.impingementsignright}"/></td></tr>
         <tr><td><b>Abduction:</b>				</td><td>35</td><td><c:out value="${shoulderexamdetails.abductionleft}"/></td><td><c:out value="${shoulderexamdetails.abductionright}"/></td><td width="90"></td><td><b>Apley's Scratch:</b></td><td width=""></td><td><c:out value="${shoulderexamdetails.apleysscratchleft}"/></td><td><c:out value="${shoulderexamdetails.apleysscratchright}"/></td></tr>
         <tr><td><b>Adduction:	</b>			</td><td>15</td><td><c:out value="${shoulderexamdetails.adductionleft}" /></td><td><c:out value="${shoulderexamdetails.adductionright}" /></td><td width="90"></td><td><b>Subacrominal Push:</b></td><td width=""></td><td><c:out value="${shoulderexamdetails.subacrominalpushleft}" /></td><td><c:out value="${shoulderexamdetails.subacrominalpushright}" /></td></tr></tr>
         <tr><td><b>Internal Rotation:</b></td><td>70</td><td><c:out value="${shoulderexamdetails.internalrotationleft}"/></td><td><c:out value="${shoulderexamdetails.internalrotationright}" /><td width="90"></td><td><b>Dawbarn's:</b>	</td><td width=""></td><td><c:out value="${shoulderexamdetails.dawbarnsleft}" /></td><td><c:out value="${shoulderexamdetails.dawbarnsright}" /></td></td></tr>
         <tr><td><b>External Rotation:	</b></td><td>45</td><td><c:out value="${shoulderexamdetails.externalrotationleft}"/></td><td><c:out value="${shoulderexamdetails.externalrotationright}" /></td><td width="90"></td><td><b>Yergason's:</b></td><td width=""></td><td><c:out value="${shoulderexamdetails.yergasonsleft}" /></td><td><c:out value="${shoulderexamdetails.yergasonsright}"/></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td></td><td><b>Codman's:</b></td><td width=""></td><td><c:out value="${shoulderexamdetails.codmansleft}"/></td><td><c:out value="${shoulderexamdetails.codmansright}" /></td></tr>
        <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td></td><td><b>Apprehension:</b></td><td width=""></td><td><c:out value="${shoulderexamdetails.apprehensionleft}"/></td><td><c:out value="${shoulderexamdetails.apprehensionright}" /></td></tr>
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
	           VIEW SHOULDER EXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr class="row2">
         <td width="130"><b style="font-size:14px">NEUROLOGICAL:</b></td>
         <td width="246"><c:out value="${shoulderexamdetails.neurological}"/></td><td width="880"></td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td >  <b> Sensory	</b><td width="170"></td> <td width="100"><b>Level</b></td>  <td   >  <b> Motor / Strength		</b></td><td width="170"></td> <td width="100"><b>Level</b></td>  <td  >  <b> Reflexes</b> (Muscle Spindles)	</td><td></td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td><b>Left</td><td>Right</b></td>  <td width="30"></td><td><b>Left</td><td>Right</b></td>  <td width="30"></td><td><b>Left</td><td>Right</b></td> </tr>
          <tr height="10"></tr>
           <tr><td><b>C5</b></td><td><c:out value="${shoulderexamdetails.latdeltoidleft}" /></td><td><c:out value="${shoulderexamdetails.latdeltoidright}" />&nbsp;&nbsp;(Lat deltoid)</td><td><b>C5</b></td><td><c:out value="${shoulderexamdetails.shdleft}" />/5</td><td><c:out value="${shoulderexamdetails.shdright}"/>/5&nbsp;&nbsp; (Shd ABD)</td><td><b>C5</b></td><td><c:out value="${shoulderexamdetails.bicepsleft}" />/5</td><td><c:out value="${shoulderexamdetails.bicepsright}" />/5&nbsp;&nbsp;(Biceps)</td></tr>
           <tr><td><b>C6</b></td><td><c:out value="${shoulderexamdetails.latarmleft}" /></td><td><c:out value="${shoulderexamdetails.latarmright}" />&nbsp;&nbsp;(Lat arm/hand)</td><td><b>C6</b></td><td><c:out value="${shoulderexamdetails.elbflexleft}" />/5</td><td><c:out value="${shoulderexamdetails.elbflexright}" />/5&nbsp;&nbsp;(Elb flex/wrist ext)	</td><td><b>C6</b></td><td><c:out value="${shoulderexamdetails.brachioradleft}" />/5</td><td><c:out value="${shoulderexamdetails.brachioradright}" />/5&nbsp;&nbsp;(Brachiorad)</td></tr>
           <tr><td><b>C7</b></td><td><c:out value="${shoulderexamdetails.thirdleft}" /></td><td><c:out value="${shoulderexamdetails.thirdright}" />&nbsp;&nbsp;(3rd digit)</td><td><b>C7</b></td><td><c:out value="${shoulderexamdetails.elbextleft}" />/5</td><td><c:out value="${shoulderexamdetails.elbextright}" />/5&nbsp;&nbsp;(Elb ext/wrist flex)</td><td><b>C7</b></td><td><c:out value="${shoulderexamdetails.tricepsleft}" />/5</td><td>		<c:out value="${shoulderexamdetails.tricepsright}" />/5&nbsp;&nbsp;(Biceps)</td></tr>
           <tr><td><b>C8</b></td><td><c:out value="${shoulderexamdetails.medforearmleft}" /></td><td><c:out value="${shoulderexamdetails.medforearmright}" />&nbsp;&nbsp;(Med forearm/hand)</td><td><b>C8</b></td><td><c:out value="${shoulderexamdetails.digitflexionleft}" />/5</td><td><c:out value="${shoulderexamdetails.digitflexionright}"  />/5&nbsp;&nbsp;(Digit flexion)</td><td><b></b></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
            <tr><td><b>T1</b></td><td><c:out value="${shoulderexamdetails.medelbowleft}"   /></td><td><c:out value="${shoulderexamdetails.medelbowright}" />&nbsp;&nbsp;(Med elbow/arm)</td><td><b>T1</b></td><td><c:out value="${shoulderexamdetails.digitabdleft}"/>/5</td><td><c:out value="${shoulderexamdetails.digitabdright}" />/5&nbsp;&nbsp;(Digit abd/add)	</td><td><b></b></td><td>(2+/5 is Normal)</td></tr>
           
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%" cellspacing="0" cellpadding="0">
           <tr class="row2"><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="130"><c:out value="${shoulderexamdetails.overhead}"/></td><td width="110"><c:out value="${shoulderexamdetails.lifting}"/></td><td><c:out value="${shoulderexamdetails.other}"/></td><td><c:out value="${shoulderexamdetails.otherdefict}"/></td><td width="300"></td></tr>
           
           </table>
           </br>
           <table cellspacing="0" cellpadding="0"s>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${shoulderexamdetails.comments}"/></td><td width="850"></td></tr>
           <tr height="10"></tr>
           <tr height="10"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${shoulderexamdetails.patientstatus}"/>
               </td></tr>      
                </table>
                </br>
                <table width="100%" cellspacing="0" cellpadding="0">
           <tr class="row2"><td width="420"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<c:out value="${shoulderexamdetails.diagnosis1}" /></td><td width="250">2)&nbsp;&nbsp;&nbsp;<c:out value="${shoulderexamdetails.diagnosis2}" /></td><td width="250">3)&nbsp;&nbsp;&nbsp;<c:out value="${shoulderexamdetails.diagnosis3}"/></td><td width="250">4)&nbsp;&nbsp;&nbsp;<c:out value="${shoulderexamdetails.diagnosis4}"/></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">&nbsp;&nbsp;&nbsp;5)&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${shoulderexamdetails.diagnosis5}" /></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><b><c:out value="${shoulderexamdetails.times}"/></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><b><c:out value="${shoulderexamdetails.weeks}" /></b>&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><c:out value="${shoulderexamdetails.spinaldecompression}"/></td><td width="100"><c:out value="${shoulderexamdetails.chiropractic}"/></td>
           <td width="150"><c:out value="${shoulderexamdetails.physicaltherapy}"/></td><td width="150"><c:out value="${shoulderexamdetails.bracing}"/></td>
           <td width="150"><c:out value="${shoulderexamdetails.modalities}"/></td> <td width="150"><c:out value="${shoulderexamdetails.supplementation}"/></td><td><c:out value="${shoulderexamdetails.hep}"/></td>
           
           </tr>
           
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><c:out value="${shoulderexamdetails.radiographic}"/></td><td width="100"><c:out value="${shoulderexamdetails.mri}"/></td>
           <td width="150"><c:out value="${shoulderexamdetails.scan}"/></td><td width="150"><c:out value="${shoulderexamdetails.conduction}"/></td>
           <td width="150"><c:out value="${shoulderexamdetails.emg}"/>	</td> <td width="150"><c:out value="${shoulderexamdetails.outsiderefferal}"/> 	</td><td><c:out value="${shoulderexamdetails.dc}"/></td>
           </tr>         
           
           <tr><td width="95"><td width="150"><c:out value="${shoulderexamdetails.others}"/></td><td><c:out value="${shoulderexamdetails.othervalue}"/></td></tr>           
           </table>
           </br>
           <div><B style="font-size:14px">PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${shoulderexamdetails.signature }"/></div>
           
         
       <table align="right"><tr><td> <a href="viewshoulderexamdetails" style="color: white" class="submit_btn">Cancel</a></td></tr></table>
         
         </div></td></tr></table></div></div></div>
         
         
         
       
	
			                 
	</c:forEach>
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            