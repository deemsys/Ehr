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
   
  
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="/resources/css/style.css" />
</head>
<body>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">2</a></li>    
  </ul>  
	     <div id="tabs-1">
	     
<form action="inserthipexam" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	           VIEW HIP	EXAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	      <c:forEach items="${hipexamform.hipexamdetails}" var="hipexamdetails" varStatus="status">
	     	
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><b>Patient Name:</b></td>
          
           
           <td><input type="hidden" value="${hipexamdetails.hipexamno}" name="hipexamno"><c:out value="${hipexamdetails.pname}"/></td><td width="580"></td>
           <td ><b>Date:</b>&nbsp;</td> <td><c:out value="${hipexamdetails.date}"></c:out></td>
           </tr>
            </table>
            </br>
            <table  cellspacing="0" cellpadding="0"><tr class="row2"><td><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION: </b></td><td width="830"></td></tr></table>
           </br>
           <table >
           <tr><td><b>Gait:</b>&nbsp;</td>  <td><c:out value="${hipexamdetails.gait}"></c:out></td>
          
           
            
           
           </tr>
<tr height="10"></tr>
           <tr>
           <td><b>Pelvic Unleveling:</b></td>
           <td><c:out value="${hipexamdetails.pelvic}"></c:out></td>
             <td width="85"></td>
           
           
           <td width="80"><b>A & O:</b></td><td> <c:out value="${hipexamdetails.ao}"></c:out></td>
           </tr>  
           </table> 
           </br>           
         
          <table  style="border:10" cellspacing="0" cellpadding="0">      
         <tr class="row2"><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION:
 </b></td>
         
         <td align="left"><c:out value="${hipexamdetails.dysfunction}"></c:out></td>
         <td width="720"></td>
          </tr>  </table>       
<br>
<table id="softtissue" >	
	<tr><td  width="300"><b>Leg Length Discrepancy:  Short Leg-  </b></td>

	<td ><c:out value="${hipexamdetails.shortlegleft}"></c:out></td>
	<td><c:out value="${hipexamdetails.shortlegleftvalue}"></c:out>
	</td><td align="right"><c:out value="${hipexamdetails.shortlegleftother}"></c:out></td>
	<td width="100"></td>
	<td><c:out value="${hipexamdetails.shortlegright}"></c:out>
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	<td><c:out value="${hipexamdetails.shortlegrightvalue}"></c:out>
	
	</td>&nbsp;<td><c:out value="${hipexamdetails.shortlegrightother}"></c:out>
	
	</td>
	
	
	
	</tr></table>
	<table id="softtissue1" >
	<tr height="10"></tr>
	<tr ><td width="300"><b>Piriformis:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${hipexamdetails.piriformisleft}"></c:out></td>
	
	<td width="190"><b>Gluteus Medius:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${hipexamdetails.gluteusleft}"></c:out>&nbsp;</td>
	<td></td>
	<td width="235"><b>Iliopsoas:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${hipexamdetails.iliopsoasleft}"></c:out>&nbsp;</td>
	
	<td><b>Hamstrings:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${hipexamdetails.hamstringsleft}"></c:out></td>
	
	</tr>
	<tr height="10"></tr></table>
	<table id="softtissue2" ><tr><td valign="top"><b>Other / Note:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${hipexamdetails.note}"/></td></tr>
	
	</table>	
	</br>
	<table  style="border:10" cellspacing="0" cellpadding="0">      
         <tr class="row2">
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION:     </b></td><td width="25"></td>
         <td> <c:out value="${hipexamdetails.functional}"/> 
         
         </td>
         <td width="75"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING:    </b></td><td width="35"></td>
         <td><c:out value="${hipexamdetails.orthotpedic}"/> 
        
         </td> <td width="280"></td> </tr></table>
         </br>
         <table >
         <tr>
         <td width="140" valign="top">
         <b>(*  Pain Elicited)</b>	
         </td>   
         <td width="160" valign="top"><b>Normal </b></td><td ><b>Actual</br></br>
          Left</td><td></br></br><b>Right</b>
         </td>
         <td width=""></td> <td></td><td></td> <td><b>Left</td><td>Right</b></td>
               
         
         </tr>
         <tr height="10"></tr>
         <tr><td><b>Flexion:</b>		</td><td>100</td><td width="80"><c:out value="${hipexamdetails.flexionleft}"/></td><td><c:out value="${hipexamdetails.flexionright}" /></td><td width=""></td><td><b>Patrick Fabere:</b>	</td><td width="150"></td><td width="80"><c:out value="${hipexamdetails.fabereleft}"/></td><td><c:out value="${hipexamdetails.fabereleft}"/></td></tr>
         <tr><td><b>Extension:</b>			</td><td>30</td><td><c:out value="${hipexamdetails.extensionleft}"/></td><td><c:out value="${hipexamdetails.extensionright}"/></td><td width=""></td><td><b>Nachlas:</b></td><td width="150"></td><td><c:out value="${hipexamdetails.nachlasleft}"/></td><td><c:out value="${hipexamdetails.nachlasright}"/></td></tr>
         <tr><td><b>Abduction:</b>				</td><td>45</td><td><c:out value="${hipexamdetails.abductionright}"/></td><td><c:out value="${hipexamdetails.abductionleft}"/></td><td width=""></td><td><b>Ely's:</b></td><td width="150"></td><td><c:out value="${hipexamdetails.elysleft}"/></td><td><c:out value="${hipexamdetails.elysright}"/></td></tr>
         <tr><td><b>Adduction:	</b>			</td><td>30</td><td><c:out value="${hipexamdetails.adductionleft}" /></td><td><c:out value="${hipexamdetails.adductionright}" /></td><td width=""></td><td><b>Yeoman's:</b></td><td width="150"></td><td><c:out value="${hipexamdetails.yeomansleft}" /></td><td><c:out value="${hipexamdetails.yeomansright}" /></td></tr></tr>
         <tr><td><b>Internal Rotation:</b></td><td>40</td><td><c:out value="${hipexamdetails.internalrotationleft}"/></td><td><c:out value="${hipexamdetails.internalrotationright}" /><td width=""></td><td><b>Ober's:</b>	</td><td width="150"></td><td><c:out value="${hipexamdetails.obersleft}" /></td><td><c:out value="${hipexamdetails.obersright}" /></td></td></tr>
         <tr><td><b>External Rotation:</b></td><td>45</td><td><c:out value="${hipexamdetails.externalrotationleft}"/></td><td><c:out value="${hipexamdetails.externalrotationright}" /></td><td width="22"></td><td><b>	Hibbs:</b></td><td width="150"></td><td><c:out value="${hipexamdetails.hibbsleft}" /></td><td><c:out value="${hipexamdetails.hibbsright}"/></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td></td><td><b>Thomas:</b></td><td width="150"></td><td><c:out value="${hipexamdetails.thomasleft}"/></td><td><c:out value="${hipexamdetails.thomasright}" /></td></tr>
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
	           VIEW HIP	EXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr class="row2">
         <td width="130"><b style="font-size:14px">NEUROLOGICAL:</b></td>
         <td width="246"><c:out value="${hipexamdetails.neurological}"/></td><td width="880"></td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td >  <b> Sensory	</b></td><td></td> <td width="100"><b>Level</b></td>  <td >  <b> Motor / Strength		</b></td><td></td> <td width="100"><b>Level</b></td>  <td width="60" > <b> Reflexes</b>	</td><td><b>(Muscle Spindles)</b></td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td width="80"><b>Left</td><td width="165"><b>Right</b></td>  <td width="30"></td><td width="80"><b>Left</td><td width="165"><b>Right</b></td>  <td width="30"></td><td width=""><b>Left</td><td><b>Right</b></td> </tr>
          <tr height="10"></tr>
           <tr><td><b>L1</b></td><td ><c:out value="${hipexamdetails.inguinalarealeft}" /></td><td><c:out value="${hipexamdetails.inguinalarearight}" />&nbsp;&nbsp; (Inguinal area)</td><td><b>L1</b></td><td><c:out value="${hipexamdetails.iliopsoasfirstleft}" />/5</td><td><c:out value="${hipexamdetails.iliopsoasfirstright}"/>/5&nbsp;&nbsp; Iliopsoas</td><td></td><td></td></tr>
           <tr><td><b>L2</b></td><td><c:out value="${hipexamdetails.antleft}" /></td><td><c:out value="${hipexamdetails.antright}" />&nbsp;&nbsp;(Ant/med thigh)</td><td><b>L2</b></td><td><c:out value="${hipexamdetails.iliopsoas1left}" />/5</td><td><c:out value="${hipexamdetails.iliopsoas1right}" />/5&nbsp;&nbsp;Iliopsoas</td><td></td><td align="center">&nbsp;(2+/5 is Normal)</td><td></td></tr>
           <tr><td><b>L3</b></td><td><c:out value="${hipexamdetails.kneeleft}" /></td><td><c:out value="${hipexamdetails.kneeright}" />&nbsp;&nbsp;(Medial knee)</td><td><b>L3</b></td><td><c:out value="${hipexamdetails.iliopsoas2left}" />/5</td><td><c:out value="${hipexamdetails.iliopsoas2right}" />/5&nbsp;&nbsp;(Iliopsoas)</td><td></td><td>&nbsp; </td><td></td></tr>
           <tr><td><b>L4</b></td><td><c:out value="${hipexamdetails.medialleft}" /></td><td><c:out value="${hipexamdetails.medialright}" />&nbsp;&nbsp;(Medial leg)</td><td><b>L4</b></td><td><c:out value="${hipexamdetails.femleft}" />/5</td><td><c:out value="${hipexamdetails.femright}"  />/5&nbsp;&nbsp;Rectus Fem</td><td><b>L4</b></td><td><c:out value="${hipexamdetails.patellarleft}" />/5</td><td><c:out value="${hipexamdetails.patellarright}" />/5&nbsp;&nbsp;Patellar</td></tr>
            <tr><td><b>L5</b></td><td><c:out value="${hipexamdetails.latleft}"   /></td><td><c:out value="${hipexamdetails.latright}" />&nbsp;&nbsp;(Ant/lat leg)</td><td><b>L5</b></td><td><c:out value="${hipexamdetails.medleft}"/>/5</td><td><c:out value="${hipexamdetails.medright}" />/5&nbsp;&nbsp;Glut Med</td><td><b>L5</b></td><td><c:out value="${hipexamdetails.hsleft}" />/5</td><td><c:out value="${hipexamdetails.hsright}"/>/5Med HS</td></tr>
            <tr><td><b>S1</b></td><td><c:out value="${hipexamdetails.plantarleft}" /></td><td><c:out value="${hipexamdetails.plantarright}" />&nbsp;&nbsp;(Big toe/plantar)</td><td><b>S1</b></td><td><c:out value="${hipexamdetails.maxleft}"/>/5</td><td><c:out value="${hipexamdetails.maxright}"/>/5&nbsp;&nbsp;Glut Max</td><td><b>S1</b></td><td><c:out value="${hipexamdetails.achillesleft}"/>/5</td><td><c:out value="${hipexamdetails.achillesright}"/>/5&nbsp;&nbsp;Achilles</td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%" cellpadding="0" cellspacing="0" >
           <tr class="row2"><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><c:out value="${hipexamdetails.walking}"/></td><td width="110"><c:out value="${hipexamdetails.standing}"/></td><td width="70"><c:out value="${hipexamdetails.stairs}"/></td><td><c:out value="${hipexamdetails.other}"/></td><td><c:out value="${hipexamdetails.otherdefict}"/></td><td width="300"></td></tr>
           
           </table>
           <br>
           <table cellpadding="0" cellspacing="0" >
           <tr class="row2"><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><c:out value="${hipexamdetails.comments}"/></td><td width="850"></td></tr>
           <tr height="20"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td>
               <c:out value="${hipexamdetails.patientstatus}"/>
               </td></tr>      
                </table>
                </br>
                <table width="100%">
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<c:out value="${hipexamdetails.diagnosis1}" /></td><td width="250">2)&nbsp;&nbsp;&nbsp;<c:out value="${hipexamdetails.diagnosis2}" /></td><td width="250">3)&nbsp;&nbsp;&nbsp;<c:out value="${hipexamdetails.diagnosis3}"/></td><td width="250">4)&nbsp;&nbsp;&nbsp;<c:out value="${hipexamdetails.diagnosis4}"/></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<c:out value="${hipexamdetails.diagnosis5}" /></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><b><c:out value="${hipexamdetails.times}"/></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><b><c:out value="${hipexamdetails.weeks}"/></b>&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><c:out value="${hipexamdetails.spinaldecompression}"/></td><td width="100"><c:out value="${hipexamdetails.chiropractic}"/></td>
           <td width="150"><c:out value="${hipexamdetails.physicaltherapy}"/></td><td width="150"><c:out value="${hipexamdetails.bracing}"/></td>
           <td width="150"><c:out value="${hipexamdetails.modalities}"/></td> <td width="150"><c:out value="${hipexamdetails.supplementation}"/></td><td><c:out value="${hipexamdetails.hep}"/></td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><c:out value="${hipexamdetails.radiographic}"/></td><td width="100"><c:out value="${hipexamdetails.mri}"/></td>
           <td width="150"><c:out value="${hipexamdetails.scan}"/></td><td width="150"><c:out value="${hipexamdetails.conduction}"/></td>
           <td width="150"><c:out value="${hipexamdetails.emg}"/>	</td> <td width="150"><c:out value="${hipexamdetails.outsidereferral}"/> 	</td><td><c:out value="${hipexamdetails.dc}"/></td>
           </tr>         
                      
           </table>
           </br>
           <div><B style="font-size:14px">PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${hipexamdetails.signature }"/></div>
           
         
         <div align="right"></div>
         
         </div></td></tr></table></div></div></div>
         
         
         
       
	
			                 
	</c:forEach>
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            