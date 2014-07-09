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
 function myclose()
 {
	 window.close();
 }
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
  <script >
function yesnoCheck() {
    if (document.getElementById('yesCheck').checked) {
        document.getElementById('incresedpain1').style.visibility = 'hidden';
        document.getElementById('l1').style.visibility = 'hidden';
        document.getElementById('ip1').style.visibility = 'hidden';
        document.getElementById('rm1').style.visibility = 'hidden';
         document.getElementById('w1').style.visibility = 'hidden';
          document.getElementById('mva1').style.visibility = 'hidden';
          document.getElementById('o1').style.visibility = 'hidden';
        document.getElementById('restrictedmovement1').style.visibility = 'hidden';
        document.getElementById('Weekness').style.visibility = 'hidden';
	document.getElementById('sincemva1').style.visibility = 'hidden';
document.getElementById('ongoing1').style.visibility = 'hidden';
}
else 
{
document.getElementById('l1').style.visibility = 'visible';
document.getElementById('incresedpain1').style.visibility = 'visible';
 document.getElementById('ip1').style.visibility = 'visible';
document.getElementById('restrictedmovement1').style.visibility = 'visible';
document.getElementById('rm1').style.visibility = 'visible';
 document.getElementById('Weekness').style.visibility = 'visible';
 document.getElementById('w1').style.visibility = 'visible';
document.getElementById('sincemva1').style.visibility = 'visible';
document.getElementById('mva1').style.visibility = 'visible';
document.getElementById('ongoing1').style.visibility = 'visible';
document.getElementById('o1').style.visibility = 'visible';
}

}


function yesnoCheck2(){

if(document.getElementById('yesCheck2').checked) {
document.getElementById('s1').style.visibility = 'hidden';
document.getElementById('incresedpain3').style.visibility = 'hidden';
document.getElementById('restrictedmovement3').style.visibility = 'hidden';
document.getElementById('weekness3').style.visibility = 'hidden';
document.getElementById('sincemva3').style.visibility = 'hidden';
document.getElementById('ongoing3').style.visibility = 'hidden';
document.getElementById('ip3').style.visibility = 'hidden';
        document.getElementById('rm3').style.visibility = 'hidden';
         document.getElementById('w3').style.visibility = 'hidden';
          document.getElementById('mva3').style.visibility = 'hidden';
          document.getElementById('o3').style.visibility = 'hidden';
}
else
{
    document.getElementById('s1').style.visibility = 'visible';
document.getElementById('incresedpain3').style.visibility = 'visible';
document.getElementById('restrictedmovement3').style.visibility = 'visible';
document.getElementById('weekness3').style.visibility = 'visible';
document.getElementById('sincemva3').style.visibility = 'visible';
document.getElementById('ongoing3').style.visibility = 'visible';
document.getElementById('ip3').style.visibility = 'visible';
document.getElementById('rm3').style.visibility = 'visible';
         document.getElementById('w3').style.visibility = 'visible';
          document.getElementById('mva3').style.visibility = 'visible';
          document.getElementById('o3').style.visibility = 'visible';
}
}


function yesnoCheck5() {
    if (document.getElementById('yesCheck5').checked) {
        document.getElementById('incresedpain8').style.visibility = 'hidden';
        document.getElementById('l2').style.visibility = 'hidden';
        document.getElementById('ip8').style.visibility = 'hidden';
        document.getElementById('rm8').style.visibility = 'hidden';
         document.getElementById('w8').style.visibility = 'hidden';
          document.getElementById('mva8').style.visibility = 'hidden';
          document.getElementById('o8').style.visibility = 'hidden';
        document.getElementById('restrictedmovement8').style.visibility = 'hidden';
        document.getElementById('weekness8').style.visibility = 'hidden';
	document.getElementById('sincemva8').style.visibility = 'hidden';
document.getElementById('ongoing8').style.visibility = 'hidden';
}
else 
{
document.getElementById('l2').style.visibility = 'visible';
document.getElementById('incresedpain8').style.visibility = 'visible';
 document.getElementById('ip8').style.visibility = 'visible';
document.getElementById('restrictedmovement8').style.visibility = 'visible';
document.getElementById('rm8').style.visibility = 'visible';
 document.getElementById('weekness8').style.visibility = 'visible';
 document.getElementById('w8').style.visibility = 'visible';
document.getElementById('sincemva8').style.visibility = 'visible';
document.getElementById('mva8').style.visibility = 'visible';
document.getElementById('ongoing8').style.visibility = 'visible';
document.getElementById('o8').style.visibility = 'visible';
}

}
function yesnoCheck6() {
    if (document.getElementById('yesCheck6').checked) {
        document.getElementById('incresedpain9').style.visibility = 'hidden';
        document.getElementById('be2').style.visibility = 'hidden';
        document.getElementById('ip9').style.visibility = 'hidden';
        document.getElementById('rm9').style.visibility = 'hidden';
         document.getElementById('w9').style.visibility = 'hidden';
          document.getElementById('mva9').style.visibility = 'hidden';
          document.getElementById('o9').style.visibility = 'hidden';
        document.getElementById('restrictedmovement9').style.visibility = 'hidden';
        document.getElementById('weekness9').style.visibility = 'hidden';
	document.getElementById('sincemva9').style.visibility = 'hidden';
document.getElementById('ongoing9').style.visibility = 'hidden';
}
else 
{
document.getElementById('be2').style.visibility = 'visible';
document.getElementById('incresedpain9').style.visibility = 'visible';
 document.getElementById('ip9').style.visibility = 'visible';
document.getElementById('restrictedmovement9').style.visibility = 'visible';
document.getElementById('rm9').style.visibility = 'visible';
 document.getElementById('weekness9').style.visibility = 'visible';
 document.getElementById('w9').style.visibility = 'visible';
document.getElementById('sincemva9').style.visibility = 'visible';
document.getElementById('mva9').style.visibility = 'visible';
document.getElementById('ongoing9').style.visibility = 'visible';
document.getElementById('o9').style.visibility = 'visible';
}

}
function yesnoCheck7() {
    if (document.getElementById('yesCheck7').checked) {
        document.getElementById('incresedpain10').style.visibility = 'hidden';
        document.getElementById('s2').style.visibility = 'hidden';
        document.getElementById('ip10').style.visibility = 'hidden';
        document.getElementById('rm10').style.visibility = 'hidden';
         document.getElementById('w10').style.visibility = 'hidden';
          document.getElementById('mva10').style.visibility = 'hidden';
          document.getElementById('o10').style.visibility = 'hidden';
        document.getElementById('restrictedmovement10').style.visibility = 'hidden';
        document.getElementById('weekness10').style.visibility = 'hidden';
	document.getElementById('sincemva10').style.visibility = 'hidden';
document.getElementById('ongoing10').style.visibility = 'hidden';
}
else 
{
document.getElementById('s2').style.visibility = 'visible';
document.getElementById('incresedpain10').style.visibility = 'visible';
 document.getElementById('ip10').style.visibility = 'visible';
document.getElementById('restrictedmovement10').style.visibility = 'visible';
document.getElementById('rm10').style.visibility = 'visible';
 document.getElementById('weekness10').style.visibility = 'visible';
 document.getElementById('w10').style.visibility = 'visible';
document.getElementById('sincemva10').style.visibility = 'visible';
document.getElementById('mva10').style.visibility = 'visible';
document.getElementById('ongoing10').style.visibility = 'visible';
document.getElementById('o10').style.visibility = 'visible';
}

}
function yesnoCheck8() {
    if (document.getElementById('yesCheck8').checked) {
        document.getElementById('incresedpain11').style.visibility = 'hidden';
        document.getElementById('wa11').style.visibility = 'hidden';
        document.getElementById('ip11').style.visibility = 'hidden';
        document.getElementById('rm11').style.visibility = 'hidden';
         document.getElementById('w11').style.visibility = 'hidden';
          document.getElementById('mva11').style.visibility = 'hidden';
          document.getElementById('o11').style.visibility = 'hidden';
        document.getElementById('restrictedmovement11').style.visibility = 'hidden';
        document.getElementById('weekness11').style.visibility = 'hidden';
	document.getElementById('sincemva11').style.visibility = 'hidden';
document.getElementById('ongoing11').style.visibility = 'hidden';
}
else 
{
document.getElementById('wa11').style.visibility = 'visible';
document.getElementById('incresedpain11').style.visibility = 'visible';
 document.getElementById('ip11').style.visibility = 'visible';
document.getElementById('restrictedmovement11').style.visibility = 'visible';
document.getElementById('rm11').style.visibility = 'visible';
 document.getElementById('weekness11').style.visibility = 'visible';
 document.getElementById('w11').style.visibility = 'visible';
document.getElementById('sincemva11').style.visibility = 'visible';
document.getElementById('mva11').style.visibility = 'visible';
document.getElementById('ongoing11').style.visibility = 'visible';
document.getElementById('o11').style.visibility = 'visible';
}

}
function yesnoCheck9() {
    if (document.getElementById('yesCheck9').checked) {
        document.getElementById('incresedpain12').style.visibility = 'hidden';
        document.getElementById('ca12').style.visibility = 'hidden';
        document.getElementById('ip12').style.visibility = 'hidden';
        document.getElementById('rm12').style.visibility = 'hidden';
         document.getElementById('w12').style.visibility = 'hidden';
          document.getElementById('mva12').style.visibility = 'hidden';
          document.getElementById('o12').style.visibility = 'hidden';
        document.getElementById('restrictedmovement12').style.visibility = 'hidden';
        document.getElementById('weekness12').style.visibility = 'hidden';
	document.getElementById('sincemva12').style.visibility = 'hidden';
document.getElementById('ongoing12').style.visibility = 'hidden';
}
else 
{
document.getElementById('ca12').style.visibility = 'visible';
document.getElementById('incresedpain12').style.visibility = 'visible';
 document.getElementById('ip12').style.visibility = 'visible';
document.getElementById('restrictedmovement12').style.visibility = 'visible';
document.getElementById('rm12').style.visibility = 'visible';
 document.getElementById('weekness12').style.visibility = 'visible';
 document.getElementById('w12').style.visibility = 'visible';
document.getElementById('sincemva12').style.visibility = 'visible';
document.getElementById('mva12').style.visibility = 'visible';
document.getElementById('ongoing12').style.visibility = 'visible';
document.getElementById('o12').style.visibility = 'visible';
}

}
function yesnoCheck10() {
    if (document.getElementById('yesCheck10').checked) {
        document.getElementById('incresedpainstudy').style.visibility = 'hidden';
        document.getElementById('st13').style.visibility = 'hidden';
        document.getElementById('ip13').style.visibility = 'hidden';
        document.getElementById('rm13').style.visibility = 'hidden';
         document.getElementById('w13').style.visibility = 'hidden';
          document.getElementById('mva13').style.visibility = 'hidden';
          document.getElementById('o13').style.visibility = 'hidden';
        document.getElementById('restrictedmovementstudy').style.visibility = 'hidden';
        document.getElementById('weeknessstudy').style.visibility = 'hidden';
	document.getElementById('sincemvastudy').style.visibility = 'hidden';
document.getElementById('ongoingstudy').style.visibility = 'hidden';
}
else 
{
document.getElementById('st13').style.visibility = 'visible';
document.getElementById('incresedpainstudy').style.visibility = 'visible';
 document.getElementById('ip13').style.visibility = 'visible';
document.getElementById('restrictedmovementstudy').style.visibility = 'visible';
document.getElementById('rm13').style.visibility = 'visible';
 document.getElementById('weeknessstudy').style.visibility = 'visible';
 document.getElementById('w13').style.visibility = 'visible';
document.getElementById('sincemvastudy').style.visibility = 'visible';
document.getElementById('mva13').style.visibility = 'visible';
document.getElementById('ongoingstudy').style.visibility = 'visible';
document.getElementById('o13').style.visibility = 'visible';
}

}
function yesnoCheck11() {
    if (document.getElementById('yesCheck11').checked) {
        document.getElementById('incresedpainconcentrate').style.visibility = 'hidden';
        document.getElementById('co14').style.visibility = 'hidden';
        document.getElementById('ip14').style.visibility = 'hidden';
        document.getElementById('rm14').style.visibility = 'hidden';
         document.getElementById('w14').style.visibility = 'hidden';
          document.getElementById('mva14').style.visibility = 'hidden';
          document.getElementById('o14').style.visibility = 'hidden';
        document.getElementById('restrictedmovementconcentrate').style.visibility = 'hidden';
        document.getElementById('weeknessconcentrate').style.visibility = 'hidden';
	document.getElementById('sincemvaconcentrate').style.visibility = 'hidden';
document.getElementById('ongoingconcentrate').style.visibility = 'hidden';
}
else 
{
document.getElementById('co14').style.visibility = 'visible';
document.getElementById('incresedpainconcentrate').style.visibility = 'visible';
 document.getElementById('ip14').style.visibility = 'visible';
document.getElementById('restrictedmovementconcentrate').style.visibility = 'visible';
document.getElementById('rm14').style.visibility = 'visible';
 document.getElementById('weeknessconcentrate').style.visibility = 'visible';
 document.getElementById('w14').style.visibility = 'visible';
document.getElementById('sincemvaconcentrate').style.visibility = 'visible';
document.getElementById('mva14').style.visibility = 'visible';
document.getElementById('ongoingconcentrate').style.visibility = 'visible';
document.getElementById('o14').style.visibility = 'visible';
}

}
function yesnoCheck12() {
    if (document.getElementById('yesCheck12').checked) {
        document.getElementById('incresedpain15').style.visibility = 'hidden';
        document.getElementById('va15').style.visibility = 'hidden';
        document.getElementById('ip15').style.visibility = 'hidden';
        document.getElementById('rm15').style.visibility = 'hidden';
         document.getElementById('w15').style.visibility = 'hidden';
          document.getElementById('mva15').style.visibility = 'hidden';
          document.getElementById('o15').style.visibility = 'hidden';
        document.getElementById('restrictedmovement15').style.visibility = 'hidden';
        document.getElementById('weekness15').style.visibility = 'hidden';
	document.getElementById('sincemva15').style.visibility = 'hidden';
document.getElementById('ongoing15').style.visibility = 'hidden';
}
else 
{
document.getElementById('va15').style.visibility = 'visible';
document.getElementById('incresedpain15').style.visibility = 'visible';
 document.getElementById('ip15').style.visibility = 'visible';
document.getElementById('restrictedmovement15').style.visibility = 'visible';
document.getElementById('rm15').style.visibility = 'visible';
 document.getElementById('weekness15').style.visibility = 'visible';
 document.getElementById('w15').style.visibility = 'visible';
document.getElementById('sincemva15').style.visibility = 'visible';
document.getElementById('mva15').style.visibility = 'visible';
document.getElementById('ongoing15').style.visibility = 'visible';
document.getElementById('o15').style.visibility = 'visible';
}

}
function yesnoCheck13() {
    if (document.getElementById('yesCheck13').checked) {
        document.getElementById('incresedpain16').style.visibility = 'hidden';
        document.getElementById('tc16').style.visibility = 'hidden';
        document.getElementById('ip16').style.visibility = 'hidden';
        document.getElementById('rm16').style.visibility = 'hidden';
         document.getElementById('w16').style.visibility = 'hidden';
          document.getElementById('mva16').style.visibility = 'hidden';
          document.getElementById('o16').style.visibility = 'hidden';
        document.getElementById('restrictedmovement16').style.visibility = 'hidden';
        document.getElementById('weekness16').style.visibility = 'hidden';
	document.getElementById('sincemva16').style.visibility = 'hidden';
document.getElementById('ongoing16').style.visibility = 'hidden';
}
else 
{
document.getElementById('tc16').style.visibility = 'visible';
document.getElementById('incresedpain16').style.visibility = 'visible';
 document.getElementById('ip16').style.visibility = 'visible';
document.getElementById('restrictedmovement16').style.visibility = 'visible';
document.getElementById('rm16').style.visibility = 'visible';
 document.getElementById('weekness16').style.visibility = 'visible';
 document.getElementById('w16').style.visibility = 'visible';
document.getElementById('sincemva16').style.visibility = 'visible';
document.getElementById('mva16').style.visibility = 'visible';
document.getElementById('ongoing16').style.visibility = 'visible';
document.getElementById('o16').style.visibility = 'visible';
}

}
function yesnoCheck14() {
    if (document.getElementById('yesCheck14').checked) {
        document.getElementById('incresedpain17').style.visibility = 'hidden';
        document.getElementById('cl17').style.visibility = 'hidden';
        document.getElementById('ip17').style.visibility = 'hidden';
        document.getElementById('rm17').style.visibility = 'hidden';
         document.getElementById('w17').style.visibility = 'hidden';
          document.getElementById('mva17').style.visibility = 'hidden';
          document.getElementById('o17').style.visibility = 'hidden';
        document.getElementById('restrictedmovement17').style.visibility = 'hidden';
        document.getElementById('weekness17').style.visibility = 'hidden';
	document.getElementById('sincemva17').style.visibility = 'hidden';
document.getElementById('ongoing17').style.visibility = 'hidden';
}
else 
{
document.getElementById('cl17').style.visibility = 'visible';
document.getElementById('incresedpain17').style.visibility = 'visible';
 document.getElementById('ip17').style.visibility = 'visible';
document.getElementById('restrictedmovement17').style.visibility = 'visible';
document.getElementById('rm17').style.visibility = 'visible';
 document.getElementById('weekness17').style.visibility = 'visible';
 document.getElementById('w17').style.visibility = 'visible';
document.getElementById('sincemva17').style.visibility = 'visible';
document.getElementById('mva17').style.visibility = 'visible';
document.getElementById('ongoing17').style.visibility = 'visible';
document.getElementById('o17').style.visibility = 'visible';
}

}
function yesnoCheck15() {
    if (document.getElementById('yesCheck15').checked) {
        document.getElementById('incresedpain18').style.visibility = 'hidden';
        document.getElementById('pm18').style.visibility = 'hidden';
        document.getElementById('ip18').style.visibility = 'hidden';
        document.getElementById('rm18').style.visibility = 'hidden';
         document.getElementById('w18').style.visibility = 'hidden';
          document.getElementById('mva18').style.visibility = 'hidden';
          document.getElementById('o18').style.visibility = 'hidden';
        document.getElementById('restrictedmovement18').style.visibility = 'hidden';
        document.getElementById('weekness18').style.visibility = 'hidden';
	document.getElementById('sincemva18').style.visibility = 'hidden';
document.getElementById('ongoing18').style.visibility = 'hidden';
}
else 
{
document.getElementById('pm18').style.visibility = 'visible';
document.getElementById('incresedpain18').style.visibility = 'visible';
 document.getElementById('ip18').style.visibility = 'visible';
document.getElementById('restrictedmovement18').style.visibility = 'visible';
document.getElementById('rm18').style.visibility = 'visible';
 document.getElementById('weekness18').style.visibility = 'visible';
 document.getElementById('w18').style.visibility = 'visible';
document.getElementById('sincemva18').style.visibility = 'visible';
document.getElementById('mva18').style.visibility = 'visible';
document.getElementById('ongoing18').style.visibility = 'visible';
document.getElementById('o18').style.visibility = 'visible';
}

}

function yesnoCheck16() {
    if (document.getElementById('yesCheck16').checked) {
        document.getElementById('incresedpain22').style.visibility = 'hidden';
        document.getElementById('yw22').style.visibility = 'hidden';
        document.getElementById('ip22').style.visibility = 'hidden';
        document.getElementById('rm22').style.visibility = 'hidden';
         document.getElementById('w22').style.visibility = 'hidden';
          document.getElementById('mva22').style.visibility = 'hidden';
          document.getElementById('o22').style.visibility = 'hidden';
        document.getElementById('restrictedmovement22').style.visibility = 'hidden';
        document.getElementById('weekness22').style.visibility = 'hidden';
	document.getElementById('sincemva22').style.visibility = 'hidden';
document.getElementById('ongoing22').style.visibility = 'hidden';
}
else 
{
document.getElementById('yw22').style.visibility = 'visible';
document.getElementById('incresedpain22').style.visibility = 'visible';
 document.getElementById('ip22').style.visibility = 'visible';
document.getElementById('restrictedmovement22').style.visibility = 'visible';
document.getElementById('rm22').style.visibility = 'visible';
 document.getElementById('weekness22').style.visibility = 'visible';
 document.getElementById('w22').style.visibility = 'visible';
document.getElementById('sincemva22').style.visibility = 'visible';
document.getElementById('mva22').style.visibility = 'visible';
document.getElementById('ongoing22').style.visibility = 'visible';
document.getElementById('o22').style.visibility = 'visible';
}

}
function yesnoCheck17() {
    if (document.getElementById('yesCheck17').checked) {
        document.getElementById('incresedpain23').style.visibility = 'hidden';
        document.getElementById('tr23').style.visibility = 'hidden';
        document.getElementById('ip23').style.visibility = 'hidden';
        document.getElementById('rm23').style.visibility = 'hidden';
         document.getElementById('w23').style.visibility = 'hidden';
          document.getElementById('mva23').style.visibility = 'hidden';
          document.getElementById('o23').style.visibility = 'hidden';
        document.getElementById('restrictedmovement23').style.visibility = 'hidden';
        document.getElementById('weekness23').style.visibility = 'hidden';
	document.getElementById('sincemva23').style.visibility = 'hidden';
document.getElementById('ongoing23').style.visibility = 'hidden';
}
else 
{
document.getElementById('tr23').style.visibility = 'visible';
document.getElementById('incresedpain23').style.visibility = 'visible';
 document.getElementById('ip23').style.visibility = 'visible';
document.getElementById('restrictedmovement23').style.visibility = 'visible';
document.getElementById('rm23').style.visibility = 'visible';
 document.getElementById('weekness23').style.visibility = 'visible';
 document.getElementById('w23').style.visibility = 'visible';
document.getElementById('sincemva23').style.visibility = 'visible';
document.getElementById('mva23').style.visibility = 'visible';
document.getElementById('ongoing23').style.visibility = 'visible';
document.getElementById('o23').style.visibility = 'visible';
}

}

function yesnoCheck19() {
    if (document.getElementById('yesCheck19').checked) {
        document.getElementById('incresedpain25').style.visibility = 'hidden';
        document.getElementById('to25').style.visibility = 'hidden';
        document.getElementById('ip25').style.visibility = 'hidden';
        document.getElementById('rm25').style.visibility = 'hidden';
         document.getElementById('w25').style.visibility = 'hidden';
          document.getElementById('mva25').style.visibility = 'hidden';
          document.getElementById('o25').style.visibility = 'hidden';
        document.getElementById('restrictedmovement25').style.visibility = 'hidden';
        document.getElementById('weekness25').style.visibility = 'hidden';
	document.getElementById('sincemva25').style.visibility = 'hidden';
document.getElementById('ongoing25').style.visibility = 'hidden';
}
else 
{
document.getElementById('to25').style.visibility = 'visible';
document.getElementById('incresedpain25').style.visibility = 'visible';
 document.getElementById('ip25').style.visibility = 'visible';
document.getElementById('restrictedmovement25').style.visibility = 'visible';
document.getElementById('rm25').style.visibility = 'visible';
 document.getElementById('weekness25').style.visibility = 'visible';
 document.getElementById('w25').style.visibility = 'visible';
document.getElementById('sincemva25').style.visibility = 'visible';
document.getElementById('mva25').style.visibility = 'visible';
document.getElementById('ongoing25').style.visibility = 'visible';
document.getElementById('o25').style.visibility = 'visible';
}

}
function yesnoCheck18() {
    if (document.getElementById('yesCheck18').checked) {
        document.getElementById('incresedpain24').style.visibility = 'hidden';
        document.getElementById('sh24').style.visibility = 'hidden';
        document.getElementById('ip24').style.visibility = 'hidden';
        document.getElementById('rm24').style.visibility = 'hidden';
         document.getElementById('w24').style.visibility = 'hidden';
          document.getElementById('mva24').style.visibility = 'hidden';
          document.getElementById('o24').style.visibility = 'hidden';
        document.getElementById('restrictedmovement24').style.visibility = 'hidden';
        document.getElementById('weekness24').style.visibility = 'hidden';
	document.getElementById('sincemva24').style.visibility = 'hidden';
document.getElementById('ongoing24').style.visibility = 'hidden';
}
else 
{
document.getElementById('sh24').style.visibility = 'visible';
document.getElementById('incresedpain24').style.visibility = 'visible';
 document.getElementById('ip24').style.visibility = 'visible';
document.getElementById('restrictedmovement24').style.visibility = 'visible';
document.getElementById('rm24').style.visibility = 'visible';
 document.getElementById('weekness24').style.visibility = 'visible';
 document.getElementById('w24').style.visibility = 'visible';
document.getElementById('sincemva24').style.visibility = 'visible';
document.getElementById('mva24').style.visibility = 'visible';
document.getElementById('ongoing24').style.visibility = 'visible';
document.getElementById('o24').style.visibility = 'visible';
}

}
function yesnoCheck4() {
    if (document.getElementById('yesCheck4').checked) {
document.getElementById('incresedpain5').style.visibility = 'hidden';
document.getElementById('restrictedmovement5').style.visibility = 'hidden';
document.getElementById('weekness5').style.visibility = 'hidden';
document.getElementById('sincemva5').style.visibility = 'hidden';
document.getElementById('ongoing5').style.visibility = 'hidden';

       
        document.getElementById('be1').style.visibility = 'hidden';
        document.getElementById('ip5').style.visibility = 'hidden';
        document.getElementById('rm5').style.visibility = 'hidden';
         document.getElementById('w5').style.visibility = 'hidden';
          document.getElementById('mva5').style.visibility = 'hidden';
          document.getElementById('o5').style.visibility = 'hidden';
        
}
else 
{


document.getElementById('incresedpain5').style.visibility = 'visible';
document.getElementById('restrictedmovement5').style.visibility = 'visible';
document.getElementById('weekness5').style.visibility = 'visible';
document.getElementById('sincemva5').style.visibility = 'visible';
document.getElementById('ongoing5').style.visibility = 'visible';

document.getElementById('be1').style.visibility = 'visible';
 document.getElementById('ip5').style.visibility = 'visible';
document.getElementById('mva5').style.visibility = 'visible';
document.getElementById('rm5').style.visibility = 'visible';
 document.getElementById('w5').style.visibility = 'visible';
document.getElementById('o5').style.visibility = 'visible';
}

}
function yesnoCheck3() {
    if (document.getElementById('yesCheck3').checked) {
document.getElementById('incresedpain4').style.visibility = 'hidden';
document.getElementById('restrictedmovement4').style.visibility = 'hidden';
document.getElementById('weekness4').style.visibility = 'hidden';
document.getElementById('sincemva4').style.visibility = 'hidden';
document.getElementById('ongoing4').style.visibility = 'hidden';
      
        document.getElementById('wa1').style.visibility = 'hidden';
        document.getElementById('ip4').style.visibility = 'hidden';
        document.getElementById('rm4').style.visibility = 'hidden';
         document.getElementById('w4').style.visibility = 'hidden';
          document.getElementById('mva4').style.visibility = 'hidden';
          document.getElementById('o4').style.visibility = 'hidden';
        
}
else 
{

document.getElementById('incresedpain4').style.visibility = 'visible';
document.getElementById('restrictedmovement4').style.visibility = 'visible';
document.getElementById('weekness4').style.visibility = 'visible';
document.getElementById('sincemva4').style.visibility = 'visible';
document.getElementById('ongoing4').style.visibility = 'visible';

document.getElementById('wa1').style.visibility = 'visible';
 document.getElementById('ip4').style.visibility = 'visible';
document.getElementById('rm4').style.visibility = 'visible';
 document.getElementById('w4').style.visibility = 'visible';
document.getElementById('mva4').style.visibility = 'visible';
document.getElementById('o4').style.visibility = 'visible';
}

}

function yesnoCheck1(){
if(document.getElementById('yesCheck1').checked) {
document.getElementById('b1').style.visibility = 'hidden';
document.getElementById('incresedpain2').style.visibility = 'hidden';
document.getElementById('restrictedmovement2').style.visibility = 'hidden';
document.getElementById('weekness2').style.visibility = 'hidden';
document.getElementById('sincemva2').style.visibility = 'hidden';
document.getElementById('ongoing2').style.visibility = 'hidden';
document.getElementById('ip2').style.visibility = 'hidden';
        document.getElementById('rm2').style.visibility = 'hidden';
         document.getElementById('w2').style.visibility = 'hidden';
          document.getElementById('mva2').style.visibility = 'hidden';
          document.getElementById('o2').style.visibility = 'hidden';
}
else
{
  document.getElementById('b1').style.visibility = 'visible';  
document.getElementById('incresedpain2').style.visibility = 'visible';
document.getElementById('restrictedmovement2').style.visibility = 'visible';
document.getElementById('weekness2').style.visibility = 'visible';
document.getElementById('sincemva2').style.visibility = 'visible';
document.getElementById('ongoing2').style.visibility = 'visible';
document.getElementById('ip2').style.visibility = 'visible';
document.getElementById('rm2').style.visibility = 'visible';
         document.getElementById('w2').style.visibility = 'visible';
          document.getElementById('mva2').style.visibility = 'visible';
          document.getElementById('o2').style.visibility = 'visible';
}
}


  </script>
  <script>
  function printPage(id)
  {
	
	        document.getElementById('print').style.visibility = 'hidden';
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
     document.getElementById('saveid').style.visibility = 'visible';
     document.getElementById('cancelid').style.visibility = 'visible';
	  
  }
  </script>
  
  <script>
  $(function() {
	$("#pname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

 <script>
  $(function() {
	$("#jobdescription").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#other1").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#other2").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#other3").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#other4").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#other5").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#other6").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#other7").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#other8").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}
</script>
  <script>
  function checksub()
  {
  
  document.getElementById("pnameerr").innerHTML="";
  if(document.getElementById("pname").value=="")
  {
  
  document.getElementById("pnameerr").innerHTML="Required field should not be empty";
  return false;
  }
  

  document.getElementById("pnameerr").innerHTML="";
  	    if(document.getElementById("pname").value.length<4 || document.getElementById("pname").value.length>=32)
  	    {
  	    	
  	    	document.getElementById("pnameerr").innerHTML="Name should be min 4 and max 32";
  	    	
  	        return false;
  	    }

  document.getElementById("dateerr").innerHTML="";
  if(document.getElementById("datepicker").value=="")
  {
  
  document.getElementById("dateerr").innerHTML="Required field should not be empty";
  return false;
  }
  document.getElementById("dateerr").innerHTML="";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker").value.match(datechk)==null)
    {
    	document.getElementById("dateerr").innerHTML="Invalid Date Format";
    	
        return false;
    }	
	document.getElementById("jobdescriptionerror").innerHTML="";
	if(document.getElementById("jobdescription").value!="")
	{
    if(document.getElementById("jobdescription").value.length<4 || document.getElementById("jobdescription").value.length>=32)
    {
    	
    	document.getElementById("jobdescriptionerror").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
    }
	document.getElementById("other1error").innerHTML="";
	if(document.getElementById("other1").value!="")
	{
    if(document.getElementById("other1").value.length<4 || document.getElementById("other1").value.length>=32)
    {
    	
    	document.getElementById("other1error").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
    }
	document.getElementById("other2error").innerHTML="";
	if(document.getElementById("other2").value!="")
	{
    if(document.getElementById("other2").value.length<4 || document.getElementById("other2").value.length>=32)
    {
    	
    	document.getElementById("other2error").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
    }
	document.getElementById("other3error").innerHTML="";
	if(document.getElementById("other3").value!="")
	{
    if(document.getElementById("other3").value.length<4 || document.getElementById("other3").value.length>=32)
    {
    	
    	document.getElementById("other3error").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
    }
	document.getElementById("other4error").innerHTML="";
	if(document.getElementById("other4").value!="")
	{
    if(document.getElementById("other4").value.length<4 || document.getElementById("other4").value.length>=32)
    {
    	
    	document.getElementById("other4error").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
    }
	document.getElementById("other5error").innerHTML="";
	if(document.getElementById("other5").value!="")
	{
    if(document.getElementById("other5").value.length<4 || document.getElementById("other5").value.length>=32)
    {
    	
    	document.getElementById("other5error").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
    }
	document.getElementById("other6error").innerHTML="";
	if(document.getElementById("other6").value!="")
	{
    if(document.getElementById("other6").value.length<4 || document.getElementById("other6").value.length>=32)
    {
    	
    	document.getElementById("other6error").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
    }
	document.getElementById("other7error").innerHTML="";
	if(document.getElementById("other7").value!="")
	{
    if(document.getElementById("other7").value.length<4 || document.getElementById("other7").value.length>=32)
    {
    	
    	document.getElementById("other7error").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
    }
	document.getElementById("other8error").innerHTML="";
	if(document.getElementById("other8").value!="")
	{
    if(document.getElementById("other8").value.length<4 || document.getElementById("other8").value.length>=32)
    {
    	
    	document.getElementById("other8error").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
    }
	
  }
  
  </script>
</head>
 <body>
 <br><br>
<form action="dutiesunderduress" method="POST" name="dutiesunder">
<c:choose>
            <c:when test="${empty dutiesunder}">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div id="block1" >
	            <div class="headings altheading">
	             <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	            <center> <h2>Duties Under Duress Summary</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
 <tr class="row1">
<td style="width: 172px; "><h4><span class="err">* </span> Patient Name:</h4></td><td style="width: 192px; "><input type="text"  name="pname" id="pname" onInput="return validatename(id)";/><span class="err" id="pnameerr"><form:errors path="Dutiesunderduress.pname"></form:errors></span></td>
<td width="600" style="width: 265px; ">
<td style="width: 73px; "><h4><span class="err">* </span> Date:</h4></td><td><input type="text"  id="datepicker" name="date" /><span class="err" id="dateerr"><form:errors path="Dutiesunderduress.date"></form:errors></span></td>
</tr>
</table>
<br/>
<table cellpadding="0" cellspacing="0" border="0" width="96%">
<tr>
<td>Complete the following questionarrie as it is relates to how your injury(s) affect your performance of your living and work duties.Place a check in front of the day to day living duties which are painful or difficult for you to perform as a result of injuries you sustained in the motor vehicle collision. Then check mark the appropriate box designating reason for difficulty. Then check mark the appropriate box designating the duration. Include those duties/responsibilities which require that you reduce the time you are capable of performing them.  </td>
</tr>
</table>
<br/>
<table>
<tr>
<td width="50%" style="width: 181px; "><h4>Job Description :</h4></td>
 <td> <textarea rows="6" cols="70" name="jobdescription" onInput="return validatename(id)"; id="jobdescription" style="width: 477px; "></textarea><span id="jobdescriptionerror" style="color: red;font-style:italic;"></span></td></tr>
</table>
<br/>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Work</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="lifting1" value="Lifting" onclick="javascript:yesnoCheck();"id="yesCheck"> </td>
 
 <td><span id="l1">Lifting </span></td> 
 <td style="width: 469px; "><input type="checkbox" name="incresedpain1" value="Increased pain" id="incresedpain1">&nbsp;
 <span id="ip1">Increased Pain </span>&nbsp;&nbsp;<input type="checkbox" name="restrictedmovement1" id="restrictedmovement1"value="Restricted Movement">&nbsp;<span id="rm1">Restricted Movement </span> &nbsp;&nbsp; <input type="checkbox" name="weekness1" value="Weekness" id="Weekness">&nbsp;
<span id="w1">Weekness</span></td>
 <td><input type="checkbox" name="sincemva1" value="Since MVA" id="sincemva1">&nbsp;<span id="mva1">Since MVA</span> &nbsp;&nbsp;<input type="checkbox" name="ongoing2" value="Ongoing" id="ongoing1">&nbsp;<span id="o1">Ongoing</span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="bending1" value="Bending" onclick="javascript:yesnoCheck1();"id="yesCheck1"> </td>
 <td><span id="b1">Bending</span></td> 
 <td><input type="checkbox" name="incresedpain2" value="Increased pain" id="incresedpain2">&nbsp;<span id="ip2">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement2" value="Restricted Movement" id="restrictedmovement2">&nbsp;<span id="rm2">Restricted Movement </span> &nbsp;&nbsp; <input type="checkbox" name="weekness2" value="Weekness" id="weekness2">&nbsp;<span id="w2">Weekness </span></td>
 <td><input type="checkbox" name="sincemva2" value="Since MVA" id="sincemva2" >&nbsp;<span id="mva2">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing2" value="Ongoing" id="ongoing2">&nbsp;<span id="o2">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="sitting1" value="Sitting" onclick="javascript:yesnoCheck2();"id="yesCheck2"> </td>
 <td><span id="s1">Sitting </span></td> 
 <td><input type="checkbox" name="incresedpain3" value="Increased pain" id="incresedpain3">&nbsp;<span id="ip3">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement3" value="Restricted Movement" id="restrictedmovement3">&nbsp;<span id="rm3">Restricted Movement </span> &nbsp;&nbsp; <input type="checkbox" name="weekness3" value="Weekness" id="weekness3">&nbsp;<span id="w3">Weekness </span></td>
 <td style="width: 255px; "><input type="checkbox" name="sincemva3" value="Since MVA" id="sincemva3">&nbsp;<span id="mva3">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing3" value="Ongoing" id="ongoing3">&nbsp;<span id="o3">Ongoing  </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="walking1" value="Walking" onclick="javascript:yesnoCheck3();"id="yesCheck3"> </td>
 <td><span id="wa1">Walking </span></td> 
 <td><input type="checkbox" name="incresedpain4" value="Increased pain" id="incresedpain4">&nbsp;<span id="ip4">Increased Pain </span>&nbsp;&nbsp;<input type="checkbox" name="restrictedmovement4" value="Restricted Movement" id="restrictedmovement4">&nbsp;<span id="rm4">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness4" value="Weekness" id="weekness4">&nbsp;<span id="w4">Weekness </span></td>
 <td><input type="checkbox" name="sincemva4" value="Since MVA" id="sincemva4">&nbsp;<span id="mva4">Since MVA  </span>&nbsp;&nbsp; <input type="checkbox" name="ongoing4" value="Ongoing" id="ongoing4">&nbsp;<span id="o4">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="computerduties1" value="Computerduties" onclick="javascript:yesnoCheck4();"id="yesCheck4"> </td>
 <td>
<span id="be1">Bending </span></td> 
 <td><input type="checkbox" name="incresedpain5" value="Increased pain" id="incresedpain5">&nbsp;
<span id="ip5">Increased Pain </span>&nbsp;&nbsp;<input type="checkbox" name="restrictedmovement5" value="Restricted Movement" id="restrictedmovement5">&nbsp;
<span id="rm5">Restricted Movement </span> &nbsp;&nbsp; <input type="checkbox" name="weekness5" value="Fatigue" id="weekness5">&nbsp;
<span id="w5">Fatigue </span></td>
 <td><input type="checkbox" name="sincemva5" value="Since MVA" id="sincemva5">&nbsp;
<span id="mva5">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing5" value="Ongoing" id="ongoing5">&nbsp;
<span id="o5">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other1" id="other1" onInput="return validatename(id)";><span id="other1error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain6" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement6" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness6" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva6" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing6" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other2" id="other2" onInput="return validatename(id)";><span id="other2error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain7" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement7" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness7" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva7" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing7" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Studies/Schools</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="lifting2" value="Lifting" onclick="javascript:yesnoCheck5();"id="yesCheck5"> </td>
 <td>
<span id="l2">Lifting </span></td> 
 <td><input type="checkbox" name="incresedpain8" value="Increased pain" id="incresedpain8">&nbsp;
<span id="ip8">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement8" value="Restricted Movement" id="restrictedmovement8">&nbsp;
<span id="rm8">Restricted Movement </span> &nbsp;&nbsp; <input type="checkbox" name="weekness8" value="Weekness" id="weekness8">&nbsp;
<span id="w8">Weekness </span></td>
 <td><input type="checkbox" name="sincemva8" value="Since MVA" id="sincemva8">&nbsp;
<span id="mva8">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing8" value="Ongoing" id="ongoing8">&nbsp;
<span id="o8">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="bending2" value="Bending" onclick="javascript:yesnoCheck6();"id="yesCheck6"> </td>
 <td>
<span id="be2">Bending </span>

 </td> 
 <td><input type="checkbox" name="incresedpain9" value="Increased pain" id="incresedpain9">&nbsp;
<span id="ip9">Increased Pain </span>

 &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement9" value="Restricted Movement" id="restrictedmovement9">&nbsp;
<span id="rm9">Restricted Movement </span>

  &nbsp;&nbsp; <input type="checkbox" name="weekness9" value="Weekness" id="weekness9">&nbsp;
<span id="w9"> Weekness</span>

  </td>
 <td><input type="checkbox" name="sincemva9" value="Since MVA" id="sincemva9">&nbsp;
<span id="mva9"> Since MVA </span>

 &nbsp;&nbsp;<input type="checkbox" name="ongoing9" value="Ongoing" id="ongoing9">&nbsp;
<span id="o9">Ongoing </span>

 </td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="sitting2" value="Sitting" onclick="javascript:yesnoCheck7();"id="yesCheck7"> </td>
 <td>

<span id="s2">Sitting </span></td> 
 <td><input type="checkbox" name="incresedpain10" value="Increased pain" id="incresedpain10">&nbsp;

<span id="ip10">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement10" value="Restricted Movement" id="restrictedmovement10">&nbsp;

<span id="rm10">Restricted Movement </span> &nbsp;&nbsp; <input type="checkbox" name="weekness10" value="Weekness" id="weekness10">&nbsp;

<span id="w10">Weekness </span></td>
 <td><input type="checkbox" name="sincemva10" value="Since MVA" id="sincemva10">&nbsp;

<span id="mva10">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing10" value="Ongoing" id="ongoing10">&nbsp;

<span id="o10">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="walking2" value="Walking" onclick="javascript:yesnoCheck8();"id="yesCheck8"> </td>
 <td><span id="wa11">Walking </span></td> 
 <td><input type="checkbox" name="incresedpain11" value="Increased pain" id="incresedpain11">&nbsp;<span id="ip11">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement11" value="Restricted Movement" id="restrictedmovement11">&nbsp;<span id="rm11">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness11" value="Weekness" id="weekness11">&nbsp;<span id="w11">Weekness </span></td>
 <td><input type="checkbox" name="sincemva11" value="Since MVA" id="sincemva11">&nbsp;<span id="mva11">Since MVA </span> &nbsp;&nbsp; <input type="checkbox" name="ongoing11" value="Ongoing" id="ongoing11">&nbsp;<span id="o11">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="computerduties2" value="Computerduties" onclick="javascript:yesnoCheck9();"id="yesCheck9"> </td>
 <td><span id="ca12">Computerduties </span></td> 
 <td><input type="checkbox" name="incresedpain12" value="Increased pain" id="incresedpain12">&nbsp;<span id="ip12">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement12" value="Restricted Movement" id="restrictedmovement12">&nbsp;<span id="rm12">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness12" value="Fatigue" id="weekness12">&nbsp;<span id="w12">Fatigue </span></td>
 <td><input type="checkbox" name="sincemva12" value="Since MVA" id="sincemva12">&nbsp;<span id="mva12">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing12" value="Ongoing" id="ongoing12">&nbsp;<span id="o12">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="studying" value="Studying" onclick="javascript:yesnoCheck10();"id="yesCheck10"> </td>
 <td><span id="st13">Studying </span></td> 
 <td><input type="checkbox" name="incresedpainstudy" value="Increased pain" id="incresedpainstudy">&nbsp;<span id="ip13">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovementstudy" value="Restricted Movement" id="restrictedmovementstudy">&nbsp;<span id="rm13">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weeknessstudy" value="Fatigue" id="weeknessstudy">&nbsp;<span id="w13">Fatigue</span></td>
 <td><input type="checkbox" name="sincemvastudy" value="Since MVA" id="sincemvastudy">&nbsp;<span id="mva13">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoingstudy" value="Ongoing" id="ongoingstudy">&nbsp;<span id="o13">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="concentrating" value="Concentrating" onclick="javascript:yesnoCheck11();"id="yesCheck11"> </td>
 <td><span id="co14">Concentrating </span></td> 
 <td><input type="checkbox" name="incresedpainconcentrate" value="Increased pain" id="incresedpainconcentrate">&nbsp;<span id="ip14">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovementconcentrate" value="Restricted Movement" id="restrictedmovementconcentrate">&nbsp;<span id="rm14">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weeknessconcentrate" value="Fatigue" id="weeknessconcentrate">&nbsp;<span id="w14">Fatigue</span></td>
 <td><input type="checkbox" name="sincemvaconcentrate" value="Since MVA" id="sincemvaconcentrate">&nbsp;<span id="mva14">Since MVA </span>
 &nbsp;&nbsp;<input type="checkbox" name="ongoingconcentrate" value="Ongoing" id="ongoingconcentrate">&nbsp;<span id="o14">Ongoing </span>
 </td>
 </tr>
 
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other3" id="other3" onInput="return validatename(id)";> <span id="other3error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain13" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement13" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness13" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva13" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing13" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other4" id="other4" onInput="return validatename(id)";><span id="other4error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain14" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement14" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness14" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva14" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing14" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Domestic Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="vacumming" value="Vacumming" onclick="javascript:yesnoCheck12();"id="yesCheck12"> </td>
 <td><span id="va15">Vacumming </span></td> 
 <td><input type="checkbox" name="incresedpain15" value="Increased pain" id="incresedpain15">&nbsp;<span id="ip15">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement15" value="Restricted Movement" id="restrictedmovement15">&nbsp;<span id="rm15">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness15" value="Fatigue" id="weekness15">&nbsp;<span id="w15">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva15" value="Since MVA" id="sincemva15">&nbsp;<span id="mva15">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing15" value="Ongoing" id="ongoing15">&nbsp;<span id="o15">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="takingcareofkids" value="TakingCareofKids" onclick="javascript:yesnoCheck13();"id="yesCheck13"> </td>
 <td><span id="tc16">Taking Care Of Kids </span></td> 
 <td><input type="checkbox" name="incresedpain16" value="Increased pain/Anxiety" id="incresedpain16">&nbsp;<span id="ip16">Increased Pain/Anxiety  </span>&nbsp;&nbsp;<input type="checkbox" name="restrictedmovement16" value="Restricted Movement" id="restrictedmovement16">&nbsp;<span id="rm16">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness16" value="Fatigue" id="weekness16">&nbsp;<span id="w16">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva16" value="Since MVA" id="sincemva16">&nbsp;<span id="mva16">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing16" value="Ongoing" id="ongoing16">&nbsp;<span id="o16">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="cleaning" value="Cleaning" onclick="javascript:yesnoCheck14();"id="yesCheck14"> </td>
 <td><span id="cl17">Cleaning</span></td> 
 <td><input type="checkbox" name="incresedpain17" value="Increased pain" id="incresedpain17">&nbsp;<span id="ip17">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement17" value="Restricted Movement" id="restrictedmovement17">&nbsp;<span id="rm17">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness17" value="Fatigue" id="weekness17">&nbsp;<span id="w17">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva17" value="Since MVA" id="sincemva17">&nbsp;<span id="mva17">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing17" value="Ongoing" id="ongoing17">&nbsp;<span id="o17">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="preparingmeals" value="Preparing Meals" onclick="javascript:yesnoCheck15();"id="yesCheck15"> </td>
 <td><span id="pm18">Preparing Meals</span></td> 
 <td><input type="checkbox" name="incresedpain18" value="Increased pain" id="incresedpain18">&nbsp;<span id="ip18">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement18" value="Restricted Movement" id="restrictedmovement18">&nbsp;<span id="rm18">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness18" value="Fatigue" id="weekness18">&nbsp;<span id="w18">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva18" value="Since MVA" id="sincemva18">&nbsp;<span id="mva18">Since MVA </span> &nbsp;&nbsp; <input type="checkbox" name="ongoing18" value="Ongoing" id="ongoing18">&nbsp;<span id="o18">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other5" id="other5" onInput="return validatename(id)";><span id="other5error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain20" value="Increased Pain/Anxiety">&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement20" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness20" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva20" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing20" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other6" id="other6" onInput="return validatename(id)";><span id="other6error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain21" value="Increased Pain/Anxiety">&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement21" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness21" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva21" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing21" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Household Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="yardwork" value="Yard Work" onclick="javascript:yesnoCheck16();"id="yesCheck16"> </td>
 <td><span id="yw22">Yard Work</span></td> 
 <td><input type="checkbox" name="incresedpain22" value="Increased pain" id="incresedpain22">&nbsp;<span id="ip22">Increased Pain </span>&nbsp;&nbsp;<input type="checkbox" name="restrictedmovement22" value="Restricted Movement" id="restrictedmovement22">&nbsp;<span id="rm22">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness22" value="Fatigue" id="weekness22">&nbsp;<span id="w22">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva22" value="Since MVA" id="sincemva22">&nbsp;<span id="mva22">Since MVA </span>&nbsp;&nbsp;<input type="checkbox" name="ongoing22" value="Ongoing" id="ongoing22">&nbsp;<span id="o22">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="transportation" value="Transportation" onclick="javascript:yesnoCheck17();"id="yesCheck17"> </td>
 <td><span id="tr23">Transportation</span></td> 
 <td><input type="checkbox" name="incresedpain23" value="Increased pain/Anxiety" id="incresedpain23">&nbsp;<span id="ip23">Increased Pain/Anxiety </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement23" value="Restricted Movement" id="restrictedmovement23">&nbsp;<span id="rm23">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness23" value="Fatigue" id="weekness23">&nbsp;<span id="w23">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva23" value="Since MVA" id="sincemva23">&nbsp;<span id="mva23">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing23" value="Ongoing" id="ongoing23">&nbsp;<span id="o23">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="shopping" value="Shopping" onclick="javascript:yesnoCheck18();"id="yesCheck18"> </td>
 <td><span id="sh24">Shopping</span></td> 
 <td><input type="checkbox" name="incresedpain24" value="Increased pain/Anxiety" id="incresedpain24">&nbsp;<span id="ip24">Increased Pain/Anxiety </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement24" value="Restricted Movement" id="restrictedmovement24">&nbsp;<span id="rm24">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness24" value="Fatigue" id="weekness24">&nbsp;<span id="w24">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva24" value="Since MVA" id="sincemva24">&nbsp;<span id="mva24">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing24" value="Ongoing" id="ongoing24">&nbsp;<span id="o24">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="takingouttrash" value="Taking Out Trash" onclick="javascript:yesnoCheck19();"id="yesCheck19"> </td>
 <td><span id="to25">Taking Out Trash</span></td> 
 <td><input type="checkbox" name="incresedpain25" value="Increased pain" id="incresedpain25">&nbsp;<span id="ip25">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement25" value="Restricted Movement" id="restrictedmovement25">&nbsp;<span id="rm25">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness25" value="Weekness" id="weekness25">&nbsp;<span id="w25">Weekness </span></td>
 <td><input type="checkbox" name="sincemva25" value="Since MVA" id="sincemva25">&nbsp;<span id="mva25">Since MVA </span> &nbsp;&nbsp; <input type="checkbox" name="ongoing25" value="Ongoing" id="ongoing25">&nbsp;<span id="o25">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other7" id="other7" onInput="return validatename(id)";> <span id="other7error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain27" value="Increased pain/Anxiety">&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement27" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness27" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva27" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing27" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other8" id="other8" onInput="return validatename(id)";><span id="other8error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain28" value="Increased pain/Anxiety">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement28" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness28" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva28" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing28" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 </table>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checksub();"></td>
<td><input type="reset" class="submit_btn" value="Cancel" id="cancelid" onclick="myclose()"></td>
</tr>
</table>
 </div>
 </div>
 </td>
 </tr>
 </table>
 </c:when>
  <c:otherwise>
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%"> 
 <tr class="row1">
<td><h2><span class="err">*</span>Patient Name:</h2></td><td><input type="text"  name="pname" value="${duties.pname }"/><span class="err"><form:errors path="Dutiesunderduress.pname"></form:errors></span></td>
<td width="600">
<td><h2><span class="err">*</span>Date:</h2></td><td><input type="text"  id="datepicker" name="date" value="${duties.date }"/><span class="err"><form:errors path="Dutiesunderduress.date"></form:errors></span></td>
</tr>
</table>
<br/>
<table cellpadding="0" cellspacing="0" border="0" width="96%">
<tr>
<td>Complete the following questionarrie as it is relates to how your injury(s) affect your performance of your living and work duties.Place a check in front of the day to day living duties which are painful or difficult for you to perform as a result of injuries you sustained in the motor vehicle collision. Then check mark the appropriate box designating reason for difficulty. Then check mark the appropriate box designating the duration. Include those duties/responsibilities which require that you reduce the time you are capable of performing them.  </td>
</tr>
</table>
<br/>
<table>
<tr>
<td width="50%"><h2>Job Description :</h2></td>
 <td> <textarea rows="6" cols="70" name="jobdescription">${duties.jobdescription}</textarea></td></tr>
</table>
<br/>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Work</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="lifting1" value="Lifting" <c:if test="${duties.lifting1=='Lifting'}"><c:out value="Checked"/></c:if>> </td>
 <td>Lifting</td> 
 <td><input type="checkbox" name="incresedpain1" value="Increased pain" <c:if test="${duties.incresedpain1=='Increased pain'}"><c:out value="Checked"/></c:if> >&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement1" value="Restricted Movement" <c:if test="${duties.restrictedmovement1=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness1" value="Weekness" <c:if test="${duties.weekness1=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva1" value="Since MVA" <c:if test="${duties.sincemva1=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing1" value="Ongoing" <c:if test="${duties.ongoing1=='On Going'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="bending1" value="Bending" <c:if test="${duties.bending1=='Bending'}"><c:out value="Checked"/></c:if>> </td>
 <td>Bending</td> 
 <td><input type="checkbox" name="incresedpain2" value="Increased pain" <c:if test="${duties.incresedpain2=='Increased pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement2" value="Restricted Movement" <c:if test="${duties.restrictedmovement2=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness2" value="Weekness" <c:if test="${duties.weekness2=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva2" value="Since MVA" <c:if test="${duties.sincemva2=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing2" value="Ongoing" <c:if test="${duties.ongoing2=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="sitting1" value="Sitting" <c:if test="${duties.sitting1=='Sitting'}"><c:out value="Checked"/></c:if>> </td>
 <td>Sitting</td> 
 <td><input type="checkbox" name="incresedpain3" value="Increased pain" <c:if test="${duties.incresedpain3=='Increased pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement3" value="Restricted Movement" <c:if test="${duties.restrictedmovement3=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness3" value="Weekness" <c:if test="${duties.weekness3=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva3" value="Since MVA" <c:if test="${duties.sincemva3=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing3" value="Ongoing" <c:if test="${duties.ongoing3=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="walking1" value="Walking" <c:if test="${duties.walking1=='Walking'}"><c:out value="Checked"/></c:if>> </td>
 <td>Walking</td> 
 <td><input type="checkbox" name="incresedpain4" value="Increased pain" <c:if test="${duties.incresedpain4=='Increased pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement4" value="Restricted Movement" <c:if test="${duties.restrictedmovement4=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness4" value="Weekness" <c:if test="${duties.weekness4=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva4" value="Since MVA" <c:if test="${duties.sincemva4=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing4" value="Ongoing" <c:if test="${duties.ongoing4=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="computerduties1" value="Computerduties" <c:if test="${duties.computerduties1=='Computerduties'}"><c:out value="Checked"/></c:if>> </td>
 <td>Bending</td> 
 <td><input type="checkbox" name="incresedpain5" value="Increased pain" <c:if test="${duties.incresedpain5=='Increased pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement5" value="Restricted Movement" <c:if test="${duties.restrictedmovement5=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness5" value="Fatigue" <c:if test="${duties.weekness5=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva5" value="Since MVA" <c:if test="${duties.sincemva5=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing5" value="Ongoing" <c:if test="${duties.ongoing5=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other1" value="${duties.other1 }"></td> 
 <td><input type="checkbox" name="incresedpain6" value="Increased pain" <c:if test="${duties.incresedpain6=='Increased pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement6" value="Restricted Movement" <c:if test="${duties.restrictedmovement5=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness6" value="Weekness" <c:if test="${duties.weekness6=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva6" value="Since MVA" <c:if test="${duties.sincemva6=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing6" value="Ongoing" <c:if test="${duties.ongoing6=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other2" value="${duties.other2 }"></td> 
 <td><input type="checkbox" name="incresedpain7" value="Increased pain" <c:if test="${duties.incresedpain7=='Increased pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement7" value="Restricted Movement" <c:if test="${duties.restrictedmovement6=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness7" value="Weekness" <c:if test="${duties.weekness6=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva7" value="Since MVA" <c:if test="${duties.sincemva6=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing7" value="Ongoing" <c:if test="${duties.ongoing7=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Studies/Schools</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="lifting2" value="Lifting" <c:if test="${duties.lifting2=='Lifting'}"><c:out value="Checked"/></c:if>> </td>
 <td>Lifting</td> 
 <td><input type="checkbox" name="incresedpain8" value="Increased pain" <c:if test="${duties.incresedpain8=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement8" value="Restricted Movement" <c:if test="${duties.restrictedmovement8=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness8" value="Weekness" <c:if test="${duties.weekness8=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva8" value="Since MVA" <c:if test="${duties.sincemva8=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing8" value="Ongoing" <c:if test="${duties.ongoing8=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="bending2" value="Bending" <c:if test="${duties.bending2=='Bending'}"><c:out value="Checked"/></c:if>> </td>
 <td>Bending</td> 
 <td><input type="checkbox" name="incresedpain9" value="Increased pain" <c:if test="${duties.incresedpain9=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement9" value="Restricted Movement" <c:if test="${duties.restrictedmovement9=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness9" value="Weekness" <c:if test="${duties.weekness9=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva9" value="Since MVA" <c:if test="${duties.sincemva9=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing9" value="Ongoing" <c:if test="${duties.ongoing9=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="sitting2" value="Sitting" <c:if test="${duties.sitting2=='Sitting'}"><c:out value="Checked"/></c:if>> </td>
 <td>Sitting</td> 
 <td><input type="checkbox" name="incresedpain10" value="Increased pain" <c:if test="${duties.incresedpain10 =='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement10" value="Restricted Movement" <c:if test="${duties.restrictedmovement10=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness10" value="Weekness" <c:if test="${duties.weekness10=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva10" value="Since MVA" <c:if test="${duties.sincemva10=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing10" value="Ongoing" <c:if test="${duties.ongoing10=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="walking2" value="Walking" <c:if test="${duties.walking2=='Walking'}"><c:out value="Checked"/></c:if>> </td>
 <td>Walking</td> 
 <td><input type="checkbox" name="incresedpain11" value="Increased pain" <c:if test="${duties.incresedpain11=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement11" value="Restricted Movement" <c:if test="${duties.restrictedmovement11=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness11" value="Weekness" <c:if test="${duties.weekness11=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva11" value="Since MVA" <c:if test="${duties.sincemva11=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing11" value="Ongoing" <c:if test="${duties.ongoing11=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="computerduties2" value="Computerduties" <c:if test="${duties.computerduties2=='Computerduties'}"><c:out value="Checked"/></c:if>> </td>
 <td>Computerduties</td> 
 <td><input type="checkbox" name="incresedpain12" value="Increased pain" <c:if test="${duties.incresedpain12=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement12" value="Restricted Movement" <c:if test="${duties.restrictedmovement12=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness12" value="Fatigue" <c:if test="${duties.weekness12=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva12" value="Since MVA" <c:if test="${duties.sincemva12=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing12" value="Ongoing" <c:if test="${duties.ongoing12=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="studying" value="Studying" <c:if test="${duties.studying=='Studying'}"><c:out value="Checked"/></c:if>> </td>
 <td>Studying</td> 
 <td><input type="checkbox" name="incresedpainstudy" value="Increased pain" <c:if test="${duties.incresedpainstudy=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovementstudy" value="Restricted Movement" <c:if test="${duties.restrictedmovementstudy=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weeknessstudy" value="Fatigue" <c:if test="${duties.weeknessstudy=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemvastudy" value="Since MVA" <c:if test="${duties.sincemvastudy=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoingstudy" value="Ongoing" <c:if test="${duties.ongoingstudy=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="concentrating" value="Concentrating" <c:if test="${duties.concentrating=='Concentrating'}"><c:out value="Checked"/></c:if>> </td>
 <td>Concentrating</td> 
 <td><input type="checkbox" name="incresedpainconcentrate" value="Increased pain" <c:if test="${duties.incresedpainconcentrate=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovementconcentrate" value="Restricted Movement" <c:if test="${duties.restrictedmovementconcentrate=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weeknessconcentrate" value="Fatigue" <c:if test="${duties.weeknessconcentrate=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemvaconcentrate" value="Since MVA" <c:if test="${duties.sincemvaconcentrate=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoingconcentrate" value="Ongoing" <c:if test="${duties.ongoingconcentrate=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other3" value="${duties.other3 }"></td> 
 <td><input type="checkbox" name="incresedpain13" value="Increased pain" <c:if test="${duties.incresedpain13=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement13" value="Restricted Movement" <c:if test="${duties.restrictedmovement13=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness13" value="Weekness" <c:if test="${duties.weekness13=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva13" value="Since MVA" <c:if test="${duties.sincemva13=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing13" value="Ongoing" <c:if test="${duties.ongoing13=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other4" value="${duties.other4 }"></td> 
 <td><input type="checkbox" name="incresedpain14" value="Increased pain" <c:if test="${duties.incresedpain14=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement14" value="Restricted Movement" <c:if test="${duties.restrictedmovement14=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness14" value="Weekness" <c:if test="${duties.weekness14=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva14" value="Since MVA" <c:if test="${duties.sincemva14=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing14" value="Ongoing" <c:if test="${duties.ongoing14=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Domestic Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="vacumming" value="Vacumming" <c:if test="${duties.vacumming=='Vacumming'}"><c:out value="Checked"/></c:if>> </td>
 <td>Vacumming</td> 
 <td><input type="checkbox" name="incresedpain15" value="Increased pain" <c:if test="${duties.incresedpain15=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement15" value="Restricted Movement" <c:if test="${duties.restrictedmovement15=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness15" value="Fatigue" <c:if test="${duties.weekness15=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva15" value="Since MVA" <c:if test="${duties.sincemva15=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing15" value="Ongoing" <c:if test="${duties.ongoing15=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="takingcareofkids" value="Taking Care of Kids" <c:if test="${duties.takingcareofkids=='Taking Care of kids'}"><c:out value="Checked"/></c:if>> </td>
 <td>Taking Care Of Kids</td> 
 <td><input type="checkbox" name="incresedpain16" value="Increased pain/Anxiety" <c:if test="${duties.incresedpain16=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement16" value="Restricted Movement" <c:if test="${duties.restrictedmovement15=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness16" value="Fatigue" <c:if test="${duties.weekness16=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva16" value="Since MVA" <c:if test="${duties.sincemva16=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing16" value="Ongoing" <c:if test="${duties.ongoing16=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="cleaning" value="Cleaning" <c:if test="${duties.cleaning=='Cleaning'}"><c:out value="Checked"/></c:if>> </td>
 <td>Cleaning</td> 
 <td><input type="checkbox" name="incresedpain17" value="Increased pain" <c:if test="${duties.incresedpain17=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement17" value="Restricted Movement" <c:if test="${duties.restrictedmovement17=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness17" value="Fatigue" <c:if test="${duties.weekness17=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva17" value="Since MVA" <c:if test="${duties.sincemva17=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing17" value="Ongoing" <c:if test="${duties.ongoing17=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="preparingmeals" value="Preparing Meals" <c:if test="${duties.preparingmeals=='Preparing Meals'}"><c:out value="Checked"/></c:if>> </td>
 <td>Preparing Meals</td> 
 <td><input type="checkbox" name="incresedpain18" value="Increased pain" <c:if test="${duties.incresedpain18=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement18" value="Restricted Movement" <c:if test="${duties.restrictedmovement18=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness18" value="Fatigue" <c:if test="${duties.weekness18=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva18" value="Since MVA" <c:if test="${duties.sincemva18=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing18" value="Ongoing" <c:if test="${duties.ongoing18=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other5" value="${duties.other5 }"></td> 
 <td><input type="checkbox" name="incresedpain20" value="Increased Pain/Anxiety" <c:if test="${duties.incresedpain20=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement20" value="Restricted Movement" <c:if test="${duties.restrictedmovement20=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness20" value="Fatigue" <c:if test="${duties.weekness20=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva20" value="Since MVA" <c:if test="${duties.sincemva20=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing20" value="Ongoing" <c:if test="${duties.ongoing20=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other6" value="${duties.other6 }"></td> 
 <td><input type="checkbox" name="incresedpain21" value="Increased Pain/Anxiety" <c:if test="${duties.incresedpain21=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement21" value="Restricted Movement" <c:if test="${duties.restrictedmovement21=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness21" value="Fatigue" <c:if test="${duties.weekness21=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva21" value="Since MVA" <c:if test="${duties.sincemva21=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing21" value="Ongoing" <c:if test="${duties.ongoing21=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Household Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="yardwork" value="Yard Work" <c:if test="${duties.yardwork=='Yard Work'}"><c:out value="Checked"/></c:if>> </td>
 <td>Yard Work</td> 
 <td><input type="checkbox" name="incresedpain22" value="Increased pain" <c:if test="${duties.incresedpain22=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement22" value="Restricted Movement" <c:if test="${duties.restrictedmovement22=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness22" value="Fatigue" <c:if test="${duties.weekness22=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva22" value="Since MVA" <c:if test="${duties.sincemva22=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing22" value="Ongoing" <c:if test="${duties.ongoing22=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="transportation" value="Transportation" <c:if test="${duties.transportation=='Transportation'}"><c:out value="Checked"/></c:if>> </td>
 <td>Transportation</td> 
 <td><input type="checkbox" name="incresedpain23" value="Increased pain/Anxiety" <c:if test="${duties.incresedpain23=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement23" value="Restricted Movement" <c:if test="${duties.restrictedmovement23=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness23" value="Fatigue" <c:if test="${duties.weekness23=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva23" value="Since MVA" <c:if test="${duties.sincemva23=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing23" value="Ongoing" <c:if test="${duties.ongoing23=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="shopping" value="Shopping" <c:if test="${duties.shopping=='Shopping'}"><c:out value="Checked"/></c:if>> </td>
 <td>Shopping</td> 
 <td><input type="checkbox" name="incresedpain24" value="Increased pain/Anxiety" <c:if test="${duties.incresedpain24=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement24" value="Restricted Movement" <c:if test="${duties.restrictedmovement24=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness24" value="Fatigue" <c:if test="${duties.weekness24=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva24" value="Since MVA" <c:if test="${duties.sincemva24=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing24" value="Ongoing" <c:if test="${duties.ongoing24=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="takingouttrash" value="Taking Out Trash" <c:if test="${duties.takingouttrash=='Taking Out Trash'}"><c:out value="Checked"/></c:if>> </td>
 <td>Taking Out Trash</td> 
 <td><input type="checkbox" name="incresedpain25" value="Increased pain" <c:if test="${duties.incresedpain25=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement25" value="Restricted Movement" <c:if test="${duties.restrictedmovement25=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness25" value="Weekness" <c:if test="${duties.weekness25=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva25" value="Since MVA" <c:if test="${duties.sincemva25=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing25" value="Ongoing" <c:if test="${duties.ongoing25=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other7" value="${dutiesunderduress.other7 }"></td> 
 <td><input type="checkbox" name="incresedpain27" value="Increased pain/Anxiety" <c:if test="${duties.incresedpain27=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement27" value="Restricted Movement" <c:if test="${duties.restrictedmovement27=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness27" value="Fatigue" <c:if test="${duties.weekness27=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva27" value="Since MVA" <c:if test="${duties.sincemva27=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing27" value="Ongoing" <c:if test="${duties.ongoing27=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other8" value="${dutiesunderduress.other8 }"></td> 
 <td><input type="checkbox" name="incresedpain28" value="Increased pain/Anxiety" <c:if test="${duties.incresedpain28=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement28" value="Restricted Movement" <c:if test="${duties.restrictedmovement28=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness28" value="Fatigue" <c:if test="${duties.weekness28=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva28" value="Since MVA" <c:if test="${duties.sincemva28=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing28" value="Ongoing" <c:if test="${duties.ongoing28=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 </table>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save" onclick="return checksub();"></td>
<td><input type="reset" class="submit_btn" value="Cancel" onclick="myclose()"></td>
</tr>
</table>
</div>
</div>
</td>
</tr>
</table>
 </c:otherwise>
 </c:choose>
 </form>
 </body>
 </html>
 
 