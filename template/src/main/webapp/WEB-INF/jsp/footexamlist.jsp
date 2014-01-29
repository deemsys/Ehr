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
<br><br>
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
	            VIEW FOOT EXAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	      <c:forEach items="${footexamform.footexamdetails}" var="footexamdetails" varStatus="status">
	     	
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><b>Patient Name:</b></td>
          
           
           <td><input type="hidden" value="${footexamdetails.footexamno}" name="footexamno"><c:out value="${footexamdetails.pname}"/></td><td width="580"></td>
           <td ><b>Date:</b>&nbsp;</td> <td><c:out value="${footexamdetails.date}"></c:out></td>
           </tr>
            </table>
            </br>
            <table  cellspacing="0" cellpadding="0"><tr class="row2"><td><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION: </b></td><td width="830"></td></tr></table>
           </br>
           <table >
           <tr><td width="126"><b>Gait:</b>&nbsp;</td>  <td><c:out value="${footexamdetails.gait}"></c:out></td>
          
           
            
           
           </tr>
<tr height="10"></tr>
           <tr height="10"></tr>
           <tr>
           <td ><b>Muscle Symmetry:</b></td>
           <td><c:out value="${footexamdetails.muscle}"></c:out></td><td width="108"></td>
             <td width="150"><b>Swelling  / Discoloration:</b></td>
             <td width="40"><c:out value="${footexamdetails.swelling}"></c:out></td>
           
           <td width="130"></td>
           <td width="120"><b>A & O:</b></td><td><c:out value="${footexamdetails.ao}"></c:out></td>
           </tr>  
           </table> 
             
           <table>
           <tr>
           <td width="129"><b>Pronation:</b></td><td><c:out value="${footexamdetails.pronation}"></c:out></td> <td width="140">&nbsp;</td>
                     
           <td width="150"><b>Supination:</b></td><td><c:out value="${footexamdetails.supination}"></c:out></td>&nbsp;&nbsp;&nbsp;<td width="110"> </td>
           <td width="35"></td>
           <td width="120"><b>Calcaneus Varus:</b></td><td><c:out value="${footexamdetails.calcaneus}"></c:out>&nbsp;&nbsp;</td>
           <td width="73"></td>
           <td width="120"><b>Calcaneus Valgus:</b></td><td><c:out value="${footexamdetails.valgus}"></c:out>&nbsp;&nbsp;</td>
           </tr>
           <tr height="10"></tr>
           <tr>
           <td width="129"><b>Forefoot Varus:</b></td><td><c:out value="${footexamdetails.forefoot}"></c:out>&nbsp;&nbsp;&nbsp;</td><td width="110"></td>
           <td width="130"><b>Forefoot Valgus:</b></td><td><c:out value="${footexamdetails.forefootvalgus}"></c:out></td><td width="110"></td>
           </tr>
               
           </table>
           </br>           
                  
         
          <table  style="border:10" cellspacing="0" cellpadding="0">      
         <tr class="row2"><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION:
 </b></td>
        
         <td align="left"><c:out value="${footexamdetails.dysfunction}"></c:out></td>
        <td width="820"></td>
          </tr>  </table>       
<br>
<table>	
	<tr><td  width="130"><b>Note</b>  </td><td><c:out value="${footexamdetails.note}"></c:out></td>
	</tr></table>
	</br>
	<table  style="border:10" cellspacing="0" cellpadding="0">      
         <tr class="row2" >
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION:     </b></td><td width="40"></td>
         <td> <c:out value="${footexamdetails.functional}"/> 
         
         </td>
         <td width="200"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING:    </b></td><td width="80"></td>
         <td><c:out value="${footexamdetails.orthotpedic}"/> 
        
         </td><td width="210"></td>  </tr></table>
         </br>
         <table >
         <tr>
         <td width="140" valign="top">
         <b>(*  Pain Elicited)</b>	
         </td>   
         <td width="160" valign="top"><b>Normal </b></td><td  width="80"><b align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Actual</b></br></br><b>Left</td><td></br></br><b>Right</b>
         </td>
         <td width="160"></td> <td></td><td></td> <td width="80"><b></br>Left</td><td><b></br>Right</b></td>
               
         
         </tr>
         <tr height="10"></tr>
         <tr><td><b>Plantar Flexion::</b>		</td><td>50</td><td><c:out value="${footexamdetails.plantarflexionleft}"/></td><td><c:out value="${footexamdetails.plantarflexionright}" /></td><td width="90"></td><td><b>Tinel's Tap:</b>	</td><td width="150"></td><td><c:out value="${footexamdetails.tinelstapleft}"/></td><td><c:out value="${footexamdetails.tinelstapright}"/></td></tr>
         <tr><td><b>Dorsiflexion:</b>			</td><td>20</td><td><c:out value="${footexamdetails.dorsiflexionleft}"/></td><td><c:out value="${footexamdetails.dorsiflexionright}"/></td><td width="90"></td><td><b>Achilles Tap:</b></td><td width="150"></td><td><c:out value="${footexamdetails.achillestapleft}"/></td><td><c:out value="${footexamdetails.achillestapright}"/></td></tr>
         <tr><td><b>Inversion:</b>				</td><td>35</td><td><c:out value="${footexamdetails.inversionleft}"/></td><td><c:out value="${footexamdetails.inversionright}"/></td><td width="90"></td><td><b>Long / Transv Arch:</b></td><td width="150"></td><td><c:out value="${footexamdetails.longleft}"/></td><td><c:out value="${footexamdetails.longright}"/></td></tr>
         <tr><td><b>Eversion:	</b>			</td><td>15</td><td><c:out value="${footexamdetails.eversionleft}" /></td><td><c:out value="${footexamdetails.eversionright}" /></td><td width="90"></td><td><b>Thompson's:</b></td><td width="150"></td><td><c:out value="${footexamdetails.thompsonsleft}" /></td><td><c:out value="${footexamdetails.thompsonsright}" /></td></tr></tr>
         <tr><td><b>Great Toe Extension:</b></td><td>70</td><td><c:out value="${footexamdetails.greattoeextensionleft}"/></td><td><c:out value="${footexamdetails.greattoeextensionright}" /><td width="90"></td><td><b>Drawer:</b>	</td><td width="150"></td><td><c:out value="${footexamdetails.drawerleft}" /></td><td><c:out value="${footexamdetails.drawerright}" /></td></td></tr>
         <tr><td><b>Great Toe Flexion:</b></td><td>45</td><td><c:out value="${footexamdetails.greattoeflexionleft}"/></td><td><c:out value="${footexamdetails.greattoeflexionright}" /></td><td width="90"></td><td><b>	Lateral (Varus) Stability:</b></td><td width="150"></td><td><c:out value="${footexamdetails.lateralleft}" /></td><td><c:out value="${footexamdetails.lateralright}"/></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td></td><td><b>Medial (Valgus) Stability:</b></td><td width="150"></td><td><c:out value="${footexamdetails.medialstabilityleft}"/></td><td><c:out value="${footexamdetails.medialstabilityright}" /></td></tr>
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
	            VIEW FOOT EXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr class="row2">
         <td width="130"><b style="font-size:14px">NEUROLOGICAL:</b></td>
         <td width="246"><c:out value="${footexamdetails.neurological}"/></td><td width="880"></td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td>  <b> Sensory	</b></td><td></td> <td width="100"><b>Level</b></td>  <td   >  <b> Motor / Strength		</b></td><td></td> <td width="100"><b>Level</b></td>  <td  >  <b> Reflexes</b> (Muscle Spindles)	</td><td></td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td><b>Left</td><td width="150">Right</b></td>  <td width="30"></td><td><b>Left</td><td width="150">Right</b></td>  <td width="30"></td><td><b>Left</td><td width="100">Right</b></td> </tr>
          <tr height="10"></tr>
           <tr><td><b>L1</b></td><td><c:out value="${footexamdetails.inguinalarealeft}" /></td><td><c:out value="${footexamdetails.inguinalarearight}" />&nbsp;&nbsp; (Inguinal area)</td><td><b>L1</b></td><td><c:out value="${footexamdetails.iliopsoasfirstleft}" />/5</td><td><c:out value="${footexamdetails.iliopsoasfirstright}"/>/5&nbsp;&nbsp; (Iliopsoas)</td><td></td><td></td></tr>
           <tr><td><b>L2</b></td><td><c:out value="${footexamdetails.antleft}" /></td><td><c:out value="${footexamdetails.antright}" />&nbsp;&nbsp;(Ant/med thigh)</td><td><b>L2</b></td><td><c:out value="${footexamdetails.iliopsoas1left}" />/5</td><td><c:out value="${footexamdetails.iliopsoas1right}" />/5&nbsp;&nbsp;(Iliopsoas)</td><td></td><td>&nbsp;(2+/5 is Normal)</td></tr>
           <tr><td><b>L3</b></td><td><c:out value="${footexamdetails.kneeleft}" /></td><td><c:out value="${footexamdetails.kneeright}" />&nbsp;&nbsp;(Medial knee)</td><td><b>L3</b></td><td><c:out value="${footexamdetails.kneeextensionleft}" />/5</td><td><c:out value="${footexamdetails.kneeextensionright}" />/5&nbsp;&nbsp;(Knee extension)</td><td></td><td>&nbsp; </td></tr>
           <tr><td><b>L4</b></td><td><c:out value="${footexamdetails.medialleft}" /></td><td><c:out value="${footexamdetails.medialright}" />&nbsp;&nbsp;(Medial leg)</td><td><b>L4</b></td><td><c:out value="${footexamdetails.kneeflexionleft}" />/5</td><td><c:out value="${footexamdetails.kneeflexionright}"  />/5&nbsp;&nbsp;(Knee flexion)</td><td><b>L4</b></td><td><c:out value="${footexamdetails.patellarleft}" />/5</td><td><c:out value="${footexamdetails.patellarright}" />/5&nbsp;&nbsp;Patellar</td></tr>
            <tr><td><b>L5</b></td><td><c:out value="${footexamdetails.latleft}"   /></td><td><c:out value="${footexamdetails.latright}" />&nbsp;&nbsp;(Ant/lat leg)</td><td><b>L5</b></td><td><c:out value="${footexamdetails.dorsiflexionleft1}"/>/5</td><td><c:out value="${footexamdetails.dorsiflexionright1}" />/5&nbsp;&nbsp;(Dorsiflexion)</td><td><b>L5</b></td><td><c:out value="${footexamdetails.hsleft}" />/5</td><td><c:out value="${footexamdetails.hsright}"/>/5Med HS</td></tr>
            <tr><td><b>S1</b></td><td><c:out value="${footexamdetails.plantarleft}" /></td><td><c:out value="${footexamdetails.plantarright}" />&nbsp;&nbsp;(Big toe/plantar)</td><td><b>S1</b></td><td><c:out value="${footexamdetails.pfleft}"/>/5</td><td><c:out value="${footexamdetails.pfright}"/>/5&nbsp;&nbsp;(Grt toe ext, PF)</td><td><b>S1</b></td><td><c:out value="${footexamdetails.achillesleft}"/>/5</td><td><c:out value="${footexamdetails.achillesright}"/>/5&nbsp;&nbsp;Achilles</td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%" cellpadding="0" cellspacing="0">
           <tr class="row2"><td width="328"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><c:out value="${footexamdetails.walking}"/></td><td width="110"><c:out value="${footexamdetails.standing}"/></td><td width="70"><c:out value="${footexamdetails.stairs}"/></td><td width="70"><c:out value="${footexamdetails.other}"/></td><td><c:out value="${footexamdetails.otherdefict}"/></td><td width="300"></td></tr>
           
           </table>
           </br>
           <table  cellpadding="0" cellspacing="0">
           <tr ><td width="328"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${footexamdetails.comments}"/></td><td width="850"></td></tr>
           <tr height="20"></tr>
           
           <tr><td width="328">Patient's Status for being a candidate for conservative care:</td>
               <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <c:out value="${footexamdetails.patientstatus}"/>
               </td></tr>      
                </table>
                </br>
                <table width="100%" cellspacing="0" cellpadding="0">
           <tr class="row2"><td width="390"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<c:out value="${footexamdetails.diagnosis1}" /></td><td width="250">2)&nbsp;&nbsp;&nbsp;<c:out value="${footexamdetails.diagnosis2}" /></td><td width="250">3)&nbsp;&nbsp;&nbsp;<c:out value="${footexamdetails.diagnosis3}"/></td><td width="250">4)&nbsp;&nbsp;&nbsp;<c:out value="${footexamdetails.diagnosis4}"/></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">&nbsp;&nbsp;&nbsp;&nbsp;5)&nbsp;&nbsp;&nbsp;<c:out value="${footexamdetails.diagnosis5}" /></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><b><c:out value="${footexamdetails.times}"/></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><b><c:out value="${footexamdetails.weeks}" /></b>&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><c:out value="${footexamdetails.spinaldecompression}"/></td><td width="100"><c:out value="${footexamdetails.chiropractic}"/></td>
           <td width="150"><c:out value="${footexamdetails.physicaltherapy}"/></td><td width="150"><c:out value="${footexamdetails.bracing}"/></td>
           <td width="150"><c:out value="${footexamdetails.modalities}"/></td> <td width="150"><c:out value="${footexamdetails.supplementation}"/></td><td><c:out value="${footexamdetails.hep}"/></td>
           
           </tr>
           
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><c:out value="${footexamdetails.radiographic}"/></td><td width="100"><c:out value="${footexamdetails.mri}"/></td>
           <td width="150"><c:out value="${footexamdetails.scan}"/></td><td width="150"><c:out value="${footexamdetails.conduction}"/></td>
           <td width="150"><c:out value="${footexamdetails.emg}"/>	</td> <td width="150"><c:out value="${footexamdetails.outsidereferral}"/> 	</td><td><c:out value="${footexamdetails.dc}"/></td>
           </tr>         
           
           <tr><td width="95"><td width="150"><c:out value="${footexamdetails.others}"/></td><td><c:out value="${footexamdetails.othervalue}"/></td></tr>           
           </table>
           </br>
           <div><B style="font-size:14px">PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${footexamdetails.signature }"/></div>
           
         
         <table align="right"><tr><td> <a href="viewfootexam" style="color: white" class="submit_btn">Cancel</a></td></tr></table>
         
         </div></td></tr></table></div></div></div>
         
         
         
       
	
			                 
	</c:forEach>
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            