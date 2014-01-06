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
	           VIEW WRIST EXAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	      <c:forEach items="${wristexamform.wristexamdetails}" var="wristexamdetails" varStatus="status">
	     	
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><b>Patient Name:</b></td>
          
           
           <td><input type="hidden" value="${wristexamdetails.wristexamno}" name="wristexamno"><c:out value="${wristexamdetails.pname}"/></td><td width="650"></td>
           <td width="120" ><b>Date:</b>&nbsp;</td> <td><c:out value="${wristexamdetails.date}"></c:out></td>
           </tr>
            </table>
            </br>
           <table cellspacing="0" cellpadding="0"><tr class="row2"><td><b style="font-size:14px" >OBSERVATION / APPEARANCE / MOOD / ORIENTATION: </b></td><td width="830"></td></tr></table>
           </br>
           <table >
           
<tr height="10"></tr>
           <tr height="10"></tr>
           <tr>
           <td ><b>Muscle Symmetry:</b></td><td width="20"></td>
           <td><c:out value="${wristexamdetails.muscle}"></c:out></td><td width="148"></td>
             <td width="140"><b>Swelling  / Discoloration:</b></td>
             <td width="40"><c:out value="${wristexamdetails.swelling}"></c:out></td>
           
           <td width="88"></td>
           <td width="120"><b>Dominant Hand:</b></td><td><c:out value="${wristexamdetails.dominanthand}"></c:out></td>
           <td width="102"></td>
           <td width="120"><b>A & O:</b></td><td><c:out value="${wristexamdetails.ao}"></c:out></td>
           </tr>  
           </table> 
           </br>  
           
           </br>           
                  
         
          <table  style="border:10" cellspacing="0" cellpadding="0">      
         <tr class="row2"><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION:
 </b></td>
         
         <td align="left"><c:out value="${wristexamdetails.dysfunction}"></c:out></td>
         <td width="820"></td>
          </tr>  </table>       
<br>
<table>
           <tr>
           <td width="129"><b>Thenar Eminence:</b></td><td><c:out value="${wristexamdetails.thenareminence}"></c:out>&nbsp;</td> <td width="140">&nbsp;</td>
                     
           <td width="130"><b>Flexor Carpi Radialis:</b></td><td><c:out value="${wristexamdetails.flexorcarpiradialis}"></c:out></td>&nbsp;&nbsp;&nbsp;<td width="110"></td>
           <td width="35"></td>
           <td width="120"><b>Common Flexors:</b></td><td><c:out value="${wristexamdetails.commonflexors}"></c:out>&nbsp;&nbsp;</td>
           <td width="73"></td>
           <td width="120"><b>Hypothenar Eminence:</b></td><td><c:out value="${wristexamdetails.hypothenareminence}"></c:out>&nbsp;</td>
           </tr>
           <tr height="10"></tr>
           <tr>
           <td width="129"><b>Extensor Carpi Radialis:</b></td><td><c:out value="${wristexamdetails.extensorcarpiradialis}"></c:out>&nbsp;&nbsp;</td><td width="110"> </td>
           <td width="130"><b>Common Extensor:</b></td><td><c:out value="${wristexamdetails.commonextensor}"></c:out></td><td width="110"> &nbsp;</td>
           <td></td><td><b>Abductor Pollius Longus:</b></td><td><c:out value="${wristexamdetails.abductorpolliuslongus}"></c:out>&nbsp;</td>
           <td></td><td><b>Abductor Pollicis Brevis:</b></td><td><c:out value="${wristexamdetails.abductorpollicisbrevis}"></c:out></td>
           </tr>
               
           </table>
</br>
<table>	
	<tr><td  width="130"><b>Extensor Pollicis Brevis:</b>  </td><td><c:out value="${wristexamdetails.extensorpollicisbrevis}"></c:out></td><td width="153"> </td>
           <td width="130"><b>Note:</b></td><td><c:out value="${wristexamdetails.note}"></c:out></td>
	</tr></table>
	</br>
	<table  style="border:10" cellspacing="0" cellpadding="0">      
         <tr class="row2">
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION:     </b></td><td width="27"></td>
         <td> <c:out value="${wristexamdetails.functional}"/> 
         
         </td>
         <td width="200"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING:    </b></td><td width="105"></td>
         <td><c:out value="${wristexamdetails.orthotpedic}"/> 
        
         </td><td width="188"></td>  </tr></table>
         </br>
         <table >
         <tr>
         <td width="140" valign="top">
         <b>(*  Pain Elicited)</b>	
         </td>   
         <td width="160" valign="top"><b>Normal </b></td><td align="center"><b>Actual</br></br>
          Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</b>
         </td>
         <td width="220"></td> <td></td><td></td> <td><b>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</b></td>
               
         
         </tr>
         <tr height="10"></tr>
         <tr><td><b>Wrist Flexion:</b>		</td><td>80</td><td><c:out value="${wristexamdetails.flexionleft}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.flexionright}" /></td><td width="90"></td><td><b>Allen's (Vasculature):</b>	</td><td width="150"></td><td><c:out value="${wristexamdetails.allenleft}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.allenright}"/></td></tr>
         <tr><td><b>Wrist Extension:</b>			</td><td>80</td><td><c:out value="${wristexamdetails.extensionleft}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.extensionright}"/></td><td width="90"></td><td><b>Phalen's (Median N):</b></td><td width="150"></td><td><c:out value="${wristexamdetails.phalenleft}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.phalenright}"/></td></tr>
         <tr><td><b>Wrist Ulnar Deviation:</b>				</td><td>90</td><td><c:out value="${wristexamdetails.ulnarleft}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.ulnarright}"/></td><td width="90"></td><td><b>Reverse Phalens (Median N):</b></td><td width="150"></td><td><c:out value="${wristexamdetails.reverseleft}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.reverseright}"/></td></tr>
         <tr><td><b>Wrist Radial Deviation:</b>			</td><td>90</td><td><c:out value="${wristexamdetails.radialleft}" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.radialright}" /></td><td width="90"></td><td><b>Finkelstein's (Tenosynovitis):</b></td><td width="150"></td><td><c:out value="${wristexamdetails.tenosynovitisleft}" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.tenosynovitisright}" /></td></tr></tr>
         <tr><td><b>Pronation / Supination :</b></td><td>180</td><td><c:out value="${wristexamdetails.tinnelsleft}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.pronationright}" /><td width="90"></td><td><b>Tinnel's:</b>	</td><td width="150"></td><td><c:out value="${wristexamdetails.tinnelsleft}" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.tinnelsright}" /></td></td></tr>
         <tr><td><b></b></td><td></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td width="90"></td><td><b>ULTT:</b></td><td width="150"></td><td><c:out value="${wristexamdetails.ulttleft}" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.ulttright}"/></td></tr>
          
        
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
	            VIEW WRIST EXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr class="row2">
         <td width="130"><b style="font-size:14px">NEUROLOGICAL:</b></td>
         <td width="246"><c:out value="${wristexamdetails.neurological}"/></td>
         <td width="880">
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td  align="right">  <b> Sensory	</b></td><td width="170"></td> <td width="100"><b>Level</b></td>  <td align="right" >  <b> Motor / Strength		</b></td><td width="170"></td> <td width="100"><b>Level</b></td>  <td align="right">  <b> Reflexes</b> (Muscle Spindles)	</td> <td></td> </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td><b>Left</td><td><b>Right</b></td>  <td width="30"></td><td><b>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><b>Right</b></td>  <td width="30"></td><td><b>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><b>Right</b></td> </tr>
          <tr height="10"></tr>
           <tr><td><b>C5</b></td><td><c:out value="${wristexamdetails.latdeltoidleft}" /></td><td><c:out value="${wristexamdetails.latdeltoidright}" />&nbsp;&nbsp;(Lat deltoid)</td><td><b>C5</b></td><td><c:out value="${wristexamdetails.shdleft}" />/5</td><td><c:out value="${wristexamdetails.shdright}"/>/5&nbsp;&nbsp; (Shd ABD)</td><td>C5</td><td><c:out value="${wristexamdetails.bicepsleft}" />/5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><c:out value="${wristexamdetails.bicepsright}" />/5&nbsp;&nbsp;(Biceps)</td></tr>
           <tr><td><b>C6</b></td><td><c:out value="${wristexamdetails.latarmleft}" /></td><td><c:out value="${wristexamdetails.latarmright}" />&nbsp;&nbsp;(Lat arm/hand)</td><td><b>C6</b></td><td><c:out value="${wristexamdetails.elbflexleft}" />/5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><c:out value="${wristexamdetails.elbflexright}" />/5&nbsp;&nbsp;(Elb flex/wrist ext)	</td><td>C6</td><td><c:out value="${wristexamdetails.brachioradleft}" />/5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><c:out value="${wristexamdetails.brachioradright}" />/5&nbsp;&nbsp;(Brachiorad)</td></tr>
           <tr><td><b>C7</b></td><td><c:out value="${wristexamdetails.thirdleft}" /></td><td><c:out value="${wristexamdetails.thirdright}" />&nbsp;&nbsp;(3rd digit)</td><td><b>C7</b></td><td><c:out value="${wristexamdetails.elbextleft}" />/5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><c:out value="${wristexamdetails.elbextright}" />/5&nbsp;&nbsp;(Elb ext/wrist flex)</td><td>C7</td><td><c:out value="${wristexamdetails.tricepsleft}" />/5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><c:out value="${wristexamdetails.tricepsright}" />/5&nbsp;&nbsp;(Biceps)</td></tr>
           <tr><td><b>C8</b></td><td><c:out value="${wristexamdetails.medforearmleft}" /></td><td><c:out value="${wristexamdetails.medforearmright}" />&nbsp;&nbsp;(Med forearm/hand)</td><td><b>C8</b></td><td><c:out value="${wristexamdetails.digitflexionleft}" />/5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><c:out value="${wristexamdetails.digitflexionright}"  />/5&nbsp;&nbsp;(Digit flexion)</td><td><b></b></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
            <tr><td><b>T1</b></td><td><c:out value="${wristexamdetails.medelbowleft}"   /></td><td><c:out value="${wristexamdetails.medelbowright}" />&nbsp;&nbsp;(Med elbow/arm)</td><td><b>T1</b></td><td><c:out value="${wristexamdetails.digitabdleft}"/>/5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><c:out value="${wristexamdetails.digitabdright}" />/5&nbsp;&nbsp;(Digit abd/add)	</td><td><b></b></td><td>(2+/5 is Normal)</td></tr>
           
           <tr><td></td><td align="right">(""-"" is Normal)			</td><td></td><td align="right">	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%" cellspacing="0" cellpadding="0">
           <tr class="row2"><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><c:out value="${wristexamdetails.typing}"/></td><td width="110"><c:out value="${wristexamdetails.driving}"/></td><td><c:out value="${wristexamdetails.other}"/></td><td><c:out value="${wristexamdetails.otherdefict}"/></td><td width="300"></td></tr>
           
           </table>
           </br>
           <table >
           <tr ><td width="370"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><c:out value="${wristexamdetails.comments}"/></td><td width="880"></td></tr>
           <tr height="10"></tr>
           <tr><td td width="370">Patient's Status for being a candidate for conservative care:</td>
               <td>
               <c:out value="${wristexamdetails.patientstatus}"/>
               </td></tr>      
                </table>
                </br>
                <table width="100%" cellspacing="0" cellpadding="0">
           <tr class="row2"><td width="390"><b style="font-size:14px">DIAGNOSIS:	</b></td><td >1)&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.diagnosis1}" /></td><td width="250">2)&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.diagnosis2}" /></td><td width="250">3)&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.diagnosis3}"/></td><td width="250">4)&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.diagnosis4}"/></td></tr>
           <tr height="10"></tr>
           <tr><td width="390"></td><td width="250">&nbsp;&nbsp;&nbsp;&nbsp;5)&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.diagnosis5}" /></td><td width="100">&nbsp;&nbsp;&nbsp;6)&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.diagnosis6}" /></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><b><c:out value="${wristexamdetails.times}"/></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><b><c:out value="${wristexamdetails.weeks}" /></b>&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><c:out value="${wristexamdetails.spinaldecompression}"/></td><td width="100"><c:out value="${wristexamdetails.chiropractic}"/></td>
           <td width="150"><c:out value="${wristexamdetails.physicaltherapy}"/></td><td width="150"><c:out value="${wristexamdetails.bracing}"/></td>
           <td width="150"><c:out value="${wristexamdetails.modalities}"/></td> <td width="150"><c:out value="${wristexamdetails.supplementation}"/></td><td><c:out value="${wristexamdetails.hep}"/></td>
           
           </tr>
           
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><c:out value="${wristexamdetails.radiographic}"/></td><td width="100"><c:out value="${wristexamdetails.mri}"/></td>
           <td width="150"><c:out value="${wristexamdetails.scan}"/></td><td width="150"><c:out value="${wristexamdetails.conduction}"/></td>
           <td width="150"><c:out value="${wristexamdetails.emg}"/>	</td> <td width="150"><c:out value="${wristexamdetails.outsiderefferal}"/> 	</td><td><c:out value="${wristexamdetails.dc}"/></td>
           </tr>         
           
           <tr><td width="95"><td width="150"><c:out value="${wristexamdetails.others}"/></td><td><c:out value="${wristexamdetails.othervalue}"/></td></tr>           
           </table>
           </br>
           <div><B style="font-size:14px">PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${wristexamdetails.signature }"/></div>
           
         
         <div align="right"></div>
         
         </div></td></tr></table></div></div></div>
         
         
         
       
	
			                 
	</c:forEach>
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            