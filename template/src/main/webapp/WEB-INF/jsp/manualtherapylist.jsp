<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
      value:document.getElementById("amount").value,
      min: 0,
      max: 10,
      step: 1,
      slide: function( event, ui ) {
        $( "#amount" ).val(+ ui.value );
      }
    });
    $( "#amount" ).val(+ $( "#slider" ).slider( "value" ) );
  });

</script>
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

function legvalidate()
{
if(document.getElementById('legsweakness').checked)
{
document.getElementById('legsweaknessleft').style.display="block";
document.getElementById('legleft').style.display="block";

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

	     
<form action="updatetherapy" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            VIEW MANUAL THERAPY DAILY EVAL AND TREATMENT</h2></center><br/>
	            
	            </div>
	           
	    <c:set value="${manualform.manualtherapy[0]}" var="manualtherapy"></c:set>
	     <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="140">Patient ID:</td>
           <td><input type="hidden" name="manualtherapyno" value="${manualtherapy.manualtherapyno}"><c:out value="${manualtherapy.pid}"/></td><td width="480"></td><td></td><td width="100"></td>
           <td >&nbsp;&nbsp;&nbsp;&nbsp;Date:&nbsp;</td> <td><c:out value="${manualtherapy.date}" /></td>
           </tr>
           <tr height="10"></tr>
           <tr><td>Patient Name:</td><td><c:out value="${manualtherapy.pname}"/></td><td width="560"></td>
           <td >Time In:&nbsp;</td> <td ><c:out value="${manualtherapy.timein}"/></td>
          
           <td >&nbsp;&nbsp;&nbsp;&nbsp;Time Out:&nbsp;</td> <td><c:out value="${manualtherapy.timeout}" /></td>        
           
           
           
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">
PATIENT ENTERED THE OFFICE TODAY & REPORTED THE FOLLOWING:
 </b></div>
           </br>
           <table><tr><td width="140">Major Complaint:</td><td><c:out value="${manualtherapy.majorcomplaint}"/></td>
           <td width="330"></td><td width="100"><b>DIFFICULTY IN</b></td>
           <td width="70"><c:out value="${manualtherapy.standing}"/></td>
           <td width="70"> <c:out value="${manualtherapy.sitting}"/></td>
           <td width="70"><c:out value="${manualtherapy.walking}"/></td>
           <td width="70"><c:out value="${manualtherapy.sleeping}"/></td>
           <td width="70"><c:out value="${manualtherapy.lifting}"/> </td>
           <td><c:out value="${manualtherapy.bending}"/></td>
           
           
           </tr></table>
           
           
          
           </br>
          <b> PAIN RADIATES TO:</b>
                 </br>
                 <table>
                 <tr>
                 <td>Headache</td><td><c:out value="${manualtherapy.headache}"/> /10</td><td width="70"></td><td width="80">Shoulder</td><td><c:out value="${manualtherapy.shoulder}"/></td><td width="170"></td><td width="100"><b>WEAKNESS:</b></td><td><b>Arms:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.armsweakness}"/> &nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Hands:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.handsweakness}"/></td><td>&nbsp;&nbsp;<b>Legs:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.legsweakness}"/> &nbsp;&nbsp;</td><td><b>&nbsp;&nbsp;Feet&nbsp;&nbsp;&nbsp;&nbsp;</b><c:out value="${manualtherapy.feetweakness}"/> </td>
                 </tr>
                 <tr>
                 <td>Neck pain/stiffness</td><td><c:out value="${manualtherapy.neckpain}"/> /10</td><td></td><td>Arm/elbow</td><td><c:out value="${manualtherapy.elbow}"/> </td><td></td><td><b>PINS & NEEDLES:</b></td><td><b>Arms:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.armspins}"/> </td><td>&nbsp;&nbsp;<b>Hands:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.handspins=='Left'}"/>&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Legs:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.legspins}"/>&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Feet:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.feetpins}"/> </td>
                 </tr>
                 <tr>
                 <td>Upper back pain/stiffness</td><td> <c:out  value="${manualtherapy.upperback}"/>/10</td><td></td><td>Wrist/hand</td><td><c:out value="${manualtherapy.wrist}"/> </td><td></td><td><b>NUMBNESS:</b></td><td><b>Arms:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.armsnumbness}"/>&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Hands:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.handsnumbness}"/> </td><td>&nbsp;&nbsp;<b>Legs:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.legsnumbness}"/> </td><td>&nbsp;&nbsp;<b>Feet:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.feetnumbness}"/> </td>
                 </tr>
                 <tr>
                 <td>Mid-back pain/stiffness</td><td><c:out value="${manualtherapy.midback}"/> /10</td><td></td><td>Chest/ribs</td><td><c:out value="${manualtherapy.ribs}"/> </td><td></td><td><b>COLDNESS:</b></td><td><b>Arms:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.armscoldness}"/>&nbsp;&nbsp;</td><td><b>&nbsp;&nbsp;Hands:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.handscoldness}"/> </td><td>&nbsp;&nbsp;<b>Legs:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.legscoldness}"/> &nbsp;</td><td>&nbsp;&nbsp;<b>Feet:</b>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${manualtherapy.feetcoldness}"/></td>
                 </tr><tr>
                 <td>Low back pain/stiffness</td><td><c:out value="${manualtherapy.lowback}"/> /10</td><td></td><td>Hip/gluteal</td><td><c:out value="${manualtherapy.hip}"/> </td><td></td>
                 </tr><tr>
                 <td>Tmj pain/clicking</td><td><c:out value="${manualtherapy.tmjpain}"/> /10</td><td></td><td>Leg/knee</td><td><c:out value="${manualtherapy.leg}"></c:out></td><td></td>
                 </tr>
                 <tr>
                 <td>Other</td><td><c:out value="${manualtherapy.other}"/> /10</td><td></td><td>Ankle / foot</td><td><c:out value="${manualtherapy.ankle}"/></td><td></td>
                 </tr>
                 
                 
                 </table>
           <table >
           <tr><td>Patient rates their current health status/pain level:   Visual Analog Scale (VAS)</td><td width="95"></td>  <td>

<label for="amount"><b>Pain Scale:</b></label>
	 <c:out  value="${manualtherapy.painscale}"   />&nbsp;&nbsp;&nbsp;
 </td> </tr></table>
   </br>  
   <table>
   <tr><td>
   <table style="border-collapse: collapse;border:2px solid;">
   <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>CERVICAL</b></td><td align="center" style= "border:2px solid;" width="100"><b>POSITION</td></tr>
  <tr style="border:1px solid;" align="center"><td style= "border:1px solid;">Paraspinals</td><td style= "border:1px solid;"><c:out value="${manualtherapy.paraspinals}"/> </td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">SCM</td><td style= "border:1px solid;" align="center"><c:out value="${manualtherapy.scm}"/> </td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Upper Traps</td><td style= "border:1px solid;" align="center"><c:out value="${manualtherapy.uppertraps}"/> </td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Suboccipitals</td><td style= "border:1px solid;" align="center"><c:out value="${manualtherapy.suboccipitals}"/> </td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Scalenes</td><td style= "border:1px solid;" align="center"><c:out value="${manualtherapy.scalenes}"/></td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td style= "border:1px solid;"></td></tr>
  <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>UPPER EXT</b></td><td align="center" style= "border:2px solid;" width="50"><b>POSITION</b></td></tr>
  <tr style="border:1px solid;"><td  align="center" style= "border:1px solid;">Triceps</td><td style= "border:1px solid;" align="center"><c:out value="${manualtherapy.triceps}"/>  </td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Biceps</td><td style= "border:1px solid;" align="center"><c:out value="${manualtherapy.biceps}"/>  </td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Brachioradialis</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.brachioradialis}"/>   </td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Wrist Flexors / Extens</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.wristflex}"/> </td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Hand</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.hand}"/>  </td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Pectoralis</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.pectoralis}"/>   </td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td align="center" style= "border:1px solid;"></td></tr>
   <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>THORACIC</b></td><td align="center" style= "border:2px solid;" width="50"><b>POSITION</b></td></tr>
  <tr style="border:1px solid;"><td  align="center" style= "border:1px solid;">Trapezius</td><td style= "border:1px solid;" align="center"><c:out value="${manualtherapy.trapezius}"/>  </td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">S.I.Ts-supra/infra/teres min</td><td style= "border:1px solid;" align="center"><c:out value="${manualtherapy.supra}"/>  </td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Subscapularis</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.subscapularis}"/>  </td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Lattissimus Dorsi</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.dorsi}"/>  </td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Levator Scapulae</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.levator}"/>  </td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Rhomboids</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.rhomboids}"/>  </td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Supraspinatus</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.supraspinatus}"/>   </td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Serratus Anterior</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.anterior}"/>  </td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Paraspinals</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.paraspinals}"/>   </td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td align="center" style= "border:1px solid;"></td></tr>
   <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>LUMBAR</b></td><td align="center" style= "border:2px solid;" width="50"><b>POSITION</b></td></tr>
  <tr style="border:1px solid;"><td  align="center" style= "border:1px solid;">Paraspinals</td><td style= "border:1px solid;" align="center"><c:out value="${manualtherapy.paraspinalslum}"/>  </td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Iliopsoas</td><td style= "border:1px solid;" align="center"><c:out value="${manualtherapy.iliopsoas}"/>  </td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Gluteus Maximus</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.maximus}"/>   </td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Gluteus Medius</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.medius}"/>  </td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Piriformis</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.piriformis}"/>  </td></tr>
     
 <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td align="center" style= "border:1px solid;"></td></tr>
  <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>LOWER EXTREMITIES</b></td><td align="center" style= "border:2px solid;" width="50"><b>POSITION</b></td></tr>
  <tr style="border:1px solid;"><td  align="center" style= "border:1px solid;">Quadriceps/Sartorius</td><td style= "border:1px solid;" align="center"><c:out value="${manualtherapy.sartorius}"/>  </td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Hamstrings</td><td style= "border:1px solid;" align="center"><c:out value="${manualtherapy.hamstrings}"/>  </td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">TFL/ITB</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.TFL}"/> </td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">HIP</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.HIP1}"/>  </td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Gastroc/Soleus/Achilles</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.achilles}"/>  </td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Anterior/post. Tibialis</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.tibialis}"/>  </td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">QLS</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.QLS}"/>  </td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Peroneals/Ankle</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.ankles}"/>  </td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Adductors/Gracilis</td><td align="center" style= "border:1px solid;"><c:out value="${manualtherapy.gracilis}"/>   </td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td align="center" style= "border:1px solid;"></td></tr>
   <tr style="border:2px solid;" class="row2"></table>       
     </td>
     
     
     
     <td width="160"></td>
     <td valign="top">
     <table height="300">
     <tr><td valign="top"><b>Therapy Performed:</b>  
     
     </td><td></td></tr>
     <tr>  <td>Myofasical Release</td><td><c:out value="${manualtherapy.myofasical}"/>  </td></tr>
     <tr>  <td>Manual Traction</td><td><c:out value="${manualtherapy.manualtraction}"/> </td></tr>
     <tr>  <td>Trigger Point Therapy </td><td><c:out value="${manualtherapy.triggerpoint}"/></td></tr>
   <tr>  <td>Lymphatic Drainage</td><td><c:out value="${manualtherapy.lymphaticdrainage}"/> </td></tr>
     <tr>  <td>Effleurage</td><td><c:out value="${manualtherapy.effleurage}"/> </td></tr>
     <tr>  <td>Taponnement</td><td><c:out value="${manualtherapy.taponnement}"/> </td></tr>
     <tr>  <td>Cross Friction Fiber </td><td><c:out value="${manualtherapy.crossfrictionfiber}"/> </td></tr>
     <tr>  <td>PNF</td><td><c:out value="${manualtherapy.PNF}"/></td></tr>
     <tr>  <td>Neuromuscular</td><td><c:out value="${manualtherapy.neuromuscular}"/></td></tr>
     <tr height="10">  </tr>   
     </table> 
     <table>
     <tr><td width="30"><c:out value="${manualtherapy.MT}"/> </td><td>97140-59 (MT)</td></tr>
     <tr><td width="30"><c:out value="${manualtherapy.TE}"/> </td><td>97140-59 (MT)</td></tr>
     <tr><td width="30"><c:out value="${manualtherapy.MA}"/> </td><td>97140-59 (MT)</td></tr>
     
     </table>
     <br>
     <table><tr ><td valign="top"  height="100">
     <b>Therapist Findings:</b>     
     </td></tr>
     <tr height="100"><td valign="top" >
     <b>Therapist Recommendations:</b>     
     </td></tr>
     <tr height="10"><td>
     <b>Future Care Recommendations:</b>     
     </td></tr>
     </table>
      
     
     </td>
     <td width="70">
     <table height="300"></table>
    </td>
     <td valign="top"><table height="300"><tr><td>
   <img class="ui-widget-content" src="resources\images\manualtherapy.png"></td></tr></table>
   <Table>
   <tr><td>Units Performed:  </td><td><c:out value="${manualtherapy.unit}"/> </td></tr>
   <tr><td>Units Performed:  </td><td><c:out value="${manualtherapy.units}"/> </td></tr>
   <tr><td>Units Performed:  </td><td><c:out value="${manualtherapy.unitperform}"/> </td></tr>
   </Table>
   </br>
   <table>
   <tr><td><c:out value="${manaualtherapy.therapist}"/></td></tr>
   <tr height="20"></tr>
   <tr><td><c:out value="${manaualtherapy.therapistrecommend}"/></td></tr>
   <tr height="20"></tr>
   <tr><td><c:out value="${manaualtherapy.futurerecommend}"/></td></tr>
   </table>
   
   
   
   </td>
    
    
    </tr>       
   </table>   
   <Table><tr><td></td><td></td>
   
   <td width="320"></td><td><c:out value="${manualtherapy.session}"/>of sessions recommended for length of time:[30 min./1 hour]over <c:out  value="${manualtherapy.weeks}" />weeks.  </td>
   </tr>
   <tr height="10"></tr>
   <tr>
   <td>Signature:</td><td><c:out  value="${manualtherapy.signature}"/></td><td></td><td><c:out value="${manualtherapy.daily}" />Daily Supportive Care Visit</td>
   </tr></Table>    
         
            
     </div></div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            