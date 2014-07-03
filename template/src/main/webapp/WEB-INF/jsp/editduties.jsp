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
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
   </STYLE>
   
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


</script>

<script>
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
</script>
<script>

window.onload = function(){

	/* yesnoCheck();yesnoCheck1();yesnoCheck2();yesnoCheck3();yesnoCheck4();yesnoCheck5();yesnoCheck6();yesnoCheck7();yesnoCheck8();yesnoCheck9();
	
	yesnoCheck10();yesnoCheck11(); yesnoCheck12(); yesnoCheck13(); yesnoCheck14(); yesnoCheck15(); yesnoCheck16(); yesnoCheck17();yesnoCheck18();
	
	yesnoCheck19(); */
}

</script>
<script>

window.onload = function()
{
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
</head>
 <body>
 <br><br>
<form action="updateduties" method="POST" name="dutiesunder">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>Duties Under Duress Summary</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
          <c:set value="${dutiesduressForm.dutiesunderduressdetails[0]}" var="dutiesunderduressdetails"/> 
 <tr class="row1">
 <input type="hidden" name="dutiesno" id="inp_id" value="${dutiesunderduressdetails.dutiesno}">
<td><h2><span class="err">*</span>Patient Name:</h2></td><td><input type="text"  name="pname" id="pname" onInput="return validatename(id)";value="${dutiesunderduressdetails.pname }"/><span class="err" id="pnameerr"><form:errors path="Dutiesunderduress.pname"></form:errors></span></td>
<td width="600">
<td><h2><span class="err">*</span>Date:</h2></td><td><input type="text"  id="datepicker" name="date" value="${dutiesunderduressdetails.date }"/><span class="err" id="dateerr"><form:errors path="Dutiesunderduress.date"></form:errors></span></td>
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
 <td> <textarea rows="6" cols="70" name="jobdescription" id="jobdescription" onInput="return validatename(id)";>${dutiesunderduressdetails.jobdescription}</textarea><span id="jobdescriptionerror" style="color: red;font-style:italic;"></span></td></tr>
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
 <td><input type="checkbox" name="lifting1" value="Lifting" onclick="javascript:yesnoCheck();"id="yesCheck" <c:if test="${dutiesunderduressdetails.lifting1=='Lifting'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="l1">Lifting</span></td> 
 <td><input type="checkbox" name="incresedpain1" value="Increased pain" id="incresedpain1" <c:if test="${dutiesunderduressdetails.incresedpain1=='Incresed Pain'}"><c:out value="Checked"/></c:if> >&nbsp;<span id="ip1">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement1" value="Restricted Movement" id="restrictedmovement1" <c:if test="${dutiesunderduressdetails.restrictedmovement1=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm1">Restricted Movement </span>  &nbsp;&nbsp; <input type="checkbox" name="weekness1" value="Weekness" id="Weekness" <c:if test="${dutiesunderduressdetails.weekness1=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w1">Weekness</span></td>
 <td><input type="checkbox" name="sincemva1" value="Since MVA" id="sincemva1" <c:if test="${dutiesunderduressdetails.sincemva1=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva1">Since MVA</span>&nbsp;&nbsp;<input type="checkbox" name="ongoing1" value="Ongoing" id="ongoing1" <c:if test="${dutiesunderduressdetails.ongoing1=='On Going'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o1">Ongoing</span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="bending1"  onclick="javascript:yesnoCheck1();"id="yesCheck1" value="Bending" <c:if test="${dutiesunderduressdetails.bending1=='Bending'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="b1">Bending</span></td> 
 <td><input type="checkbox" name="incresedpain2" id="incresedpain2" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain2=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip2">Increased Pain </span>&nbsp;&nbsp;<input type="checkbox" id="restrictedmovement2" name="restrictedmovement2" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement2=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm2">Restricted Movement </span> &nbsp;&nbsp; <input type="checkbox" name="weekness2" id="weekness2" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness2=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w2">Weekness </span></td>
 <td><input type="checkbox" name="sincemva2" id="sincemva2" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva2=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva2">Since MVA </span>&nbsp;&nbsp;<input type="checkbox" name="ongoing2" id="ongoing2" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing2=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o2">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="sitting1" onclick="javascript:yesnoCheck2();"id="yesCheck2" value="Sitting" <c:if test="${dutiesunderduressdetails.sitting1=='Sitting'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="s1">Sitting </span></td> 
 <td><input type="checkbox" name="incresedpain3" id="incresedpain3" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain3=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip3">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement3" id="restrictedmovement3" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement3=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm3">Restricted Movement </span> &nbsp;&nbsp; <input type="checkbox" name="weekness3" id="weekness3" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness3=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w3">Weekness </span></td>
 <td><input type="checkbox" name="sincemva3" id="sincemva3" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva3=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva3">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing3" id="ongoing3" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing3=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o3">Ongoing  </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="walking1" onclick="javascript:yesnoCheck3();"id="yesCheck3" value="Walking" <c:if test="${dutiesunderduressdetails.walking1=='Walking'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="wa1">Walking </span></td> 
 <td><input type="checkbox" name="incresedpain4" id="incresedpain4" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain4=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip4">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement4" id="restrictedmovement4" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement4=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm4">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness4" id="weekness4" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness4=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w4">Weekness </span></td>
 <td><input type="checkbox" name="sincemva4" id="sincemva4" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva4=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva4">Since MVA  </span> &nbsp;&nbsp; <input type="checkbox" id="ongoing4" name="ongoing4" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing4=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o4">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="computerduties1" onclick="javascript:yesnoCheck4();"id="yesCheck4" value="Computerduties" <c:if test="${dutiesunderduressdetails.computerduties1=='Computerduties'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="be1">Bending </span></td> 
 <td><input type="checkbox" name="incresedpain5" id="incresedpain5" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain5=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip5">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement5" id="restrictedmovement5" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement5=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm5">Restricted Movement </span> &nbsp;&nbsp; <input type="checkbox" name="weekness5" id="weekness5" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness5=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w5">Fatigue </span></td>
 <td><input type="checkbox" id="sincemva5" name="sincemva5" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva5=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva5">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing5" id="ongoing5" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing5=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o5">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other1" id="other1" onInput="return validatename(id)"; value="${dutiesunderduressdetails.other1 }"><span id="other1error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain6" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain6=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement6" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement5=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness6" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness6=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva6" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva6=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing6" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing6=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other2" id="other2" onInput="return validatename(id)"; value="${dutiesunderduressdetails.other2 }"><span id="other2error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain7" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain7=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement7" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement6=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness7" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness6=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva7" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva6=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing7" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing7=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Studies/Schools</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="lifting2" onclick="javascript:yesnoCheck5();"id="yesCheck5" value="Lifting" <c:if test="${dutiesunderduressdetails.lifting2=='Lifting'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="l2">Lifting </span></td> 
 <td><input type="checkbox" name="incresedpain8" id="incresedpain8" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain8=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip8">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement8" value="Restricted Movement" id="restrictedmovement8" <c:if test="${dutiesunderduressdetails.restrictedmovement8=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm8">Restricted Movement </span>&nbsp;&nbsp; <input type="checkbox" name="weekness8" id="weekness8" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness8=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w8">Weekness </span></td>
 <td><input type="checkbox" name="sincemva8" id="sincemva8" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva8=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva8">Since MVA </span>&nbsp;&nbsp;<input type="checkbox" name="ongoing8" id="ongoing8" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing8=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o8">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="bending2" onclick="javascript:yesnoCheck6();"id="yesCheck6" value="Bending" <c:if test="${dutiesunderduressdetails.bending2=='Bending'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="be2">Bending </span></td> 
 <td><input type="checkbox" name="incresedpain9" id="incresedpain9" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain9=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip9">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement9" id="restrictedmovement9" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement9=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm9">Restricted Movement </span> &nbsp;&nbsp; <input type="checkbox" name="weekness9" id="weekness9" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness9=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w9"> Weekness</span></td>
 <td><input type="checkbox" name="sincemva9" id="sincemva9" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva9=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva9"> Since MVA </span>&nbsp;&nbsp;<input type="checkbox" name="ongoing9" id="ongoing9" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing9=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o9">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="sitting2" onclick="javascript:yesnoCheck7();"id="yesCheck7" value="Sitting" <c:if test="${dutiesunderduressdetails.sitting2=='Sitting'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="s2">Sitting </span></td> 
 <td><input type="checkbox" name="incresedpain10" id="incresedpain10" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain10 =='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip10">Increased Pain </span>  &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement10" id="restrictedmovement10" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement10=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm10">Restricted Movement </span> &nbsp;&nbsp; <input type="checkbox" id="weekness10" name="weekness10" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness10=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w10">Weekness </span></td>
 <td><input type="checkbox" name="sincemva10" id="sincemva10" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva10=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva10">Since MVA </span>  &nbsp;&nbsp;<input type="checkbox" name="ongoing10" id="ongoing10" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing10=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o10">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="walking2" onclick="javascript:yesnoCheck8();"id="yesCheck8" value="Walking" <c:if test="${dutiesunderduressdetails.walking2=='Walking'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="wa11">Walking </span></td> 
 <td><input type="checkbox" name="incresedpain11"  id="incresedpain11" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain11=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip11">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement11" id="restrictedmovement11" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement11=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm11">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness11" id="weekness11" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness11=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w11">Weekness </span></td>
 <td><input type="checkbox" name="sincemva11" id="sincemva11" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva11=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva11">Since MVA </span>  &nbsp;&nbsp; <input type="checkbox" name="ongoing11" id="ongoing11" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing11=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o11">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="computerduties2" onclick="javascript:yesnoCheck9();"id="yesCheck9" value="Computerduties" <c:if test="${dutiesunderduressdetails.computerduties2=='Computerduties'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="ca12">Computerduties </span></td> 
 <td><input type="checkbox" name="incresedpain12" id="incresedpain12" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain12=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip12">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement12" id="restrictedmovement12" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement12=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm12">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness12" id="weekness12" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness12=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w12">Fatigue </span></td>
 <td><input type="checkbox" name="sincemva12" id="sincemva12" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva12=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva12">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing12" id="ongoing12" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing12=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o12">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="studying" onclick="javascript:yesnoCheck10();"id="yesCheck10" value="Studying" <c:if test="${dutiesunderduressdetails.studying=='Studying'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="st13">Studying </span></td> 
 <td><input type="checkbox" name="incresedpainstudy" id="incresedpainstudy" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpainstudy=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip13">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovementstudy" id="restrictedmovementstudy" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovementstudy=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm13">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weeknessstudy" id="weeknessstudy" value="Fatigue" <c:if test="${dutiesunderduressdetails.weeknessstudy=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w13">Fatigue</span></td>
 <td><input type="checkbox" name="sincemvastudy"  id="sincemvastudy" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemvastudy=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva13">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoingstudy" id="ongoingstudy" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoingstudy=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o13">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="concentrating" onclick="javascript:yesnoCheck11();"id="yesCheck11" value="Concentrating" <c:if test="${dutiesunderduressdetails.concentrating=='Concentrating'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="co14">Concentrating </span></td> 
 <td><input type="checkbox" name="incresedpainconcentrate" id="incresedpainconcentrate" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpainconcentrate=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip14">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovementconcentrate" id="restrictedmovementconcentrate" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovementconcentrate=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm14">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weeknessconcentrate" id="weeknessconcentrate" value="Fatigue" <c:if test="${dutiesunderduressdetails.weeknessconcentrate=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w14">Fatigue</span></td>
 <td><input type="checkbox" name="sincemvaconcentrate" value="Since MVA" id="sincemvaconcentrate" <c:if test="${dutiesunderduressdetails.sincemvaconcentrate=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva14">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoingconcentrate" id="ongoingconcentrate" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoingconcentrate=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o14">Ongoing </span></td>
 </tr>
 
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other3" id="other3" onInput="return validatename(id)"; value="${dutiesunderduressdetails.other3 }"><span id="other3error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain13" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain13=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement13" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement13=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness13" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness13=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva13" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva13=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing13" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing13=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other4" id="other4" onInput="return validatename(id)"; value="${dutiesunderduressdetails.other4 }"><span id="other4error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain14" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain14=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement14" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement14=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness14" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness14=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva14" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva14=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing14" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing14=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Domestic Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="vacumming" onclick="javascript:yesnoCheck12();"id="yesCheck12" value="Vacumming" <c:if test="${dutiesunderduressdetails.vacumming=='Vacumming'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="va15">Vacumming </span></td> 
 <td><input type="checkbox" name="incresedpain15" id="incresedpain15" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain15=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip15">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement15" id="restrictedmovement15" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement15=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm15">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness15" id="weekness15" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness15=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w15">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva15" id="sincemva15" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva15=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva15">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing15" id="ongoing15" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing15=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o15">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="takingcareofkids" onclick="javascript:yesnoCheck13();"id="yesCheck13" value="Taking Care of Kids" <c:if test="${dutiesunderduressdetails.takingcareofkids=='Taking Care of kids'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="tc16">Taking Care Of Kids </span></td> 
 <td><input type="checkbox" name="incresedpain16" id="incresedpain16" value="Increased pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain16=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip16">Increased Pain/Anxiety  </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement16" id="restrictedmovement16" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement15=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm16">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness16"  id="weekness16" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness16=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w16">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva16" id="sincemva16" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva16=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva16">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing16" id="ongoing16" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing16=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o16">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="cleaning" onclick="javascript:yesnoCheck14();"id="yesCheck14" value="Cleaning" <c:if test="${dutiesunderduressdetails.cleaning=='Cleaning'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="cl17">Cleaning</span></td> 
 <td><input type="checkbox" name="incresedpain17" id="incresedpain17" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain17=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip17">Increased Pain </span>  &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement17" id="restrictedmovement17" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement17=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm17">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness17" id="weekness17" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness17=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w17">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva17" id="sincemva17" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva17=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva17">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing17" id="ongoing17" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing17=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o17">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="preparingmeals" onclick="javascript:yesnoCheck15();"id="yesCheck15" value="Preparing Meals" <c:if test="${dutiesunderduressdetails.preparingmeals=='Preparing Meals'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="pm18">Preparing Meals</span></td> 
 <td><input type="checkbox" name="incresedpain18" value="Increased pain" id="incresedpain18" <c:if test="${dutiesunderduressdetails.incresedpain18=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip18">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement18" id="restrictedmovement18" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement18=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm18">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness18" id="weekness18" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness18=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w18">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva18" id="sincemva18" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva18=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva18">Since MVA </span> &nbsp;&nbsp; <input type="checkbox" name="ongoing18" id="ongoing18" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing18=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o18">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other5" id="other5" onInput="return validatename(id)"; value="${dutiesunderduressdetails.other5 }"><span id="other5error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain20" value="Increased Pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain20=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement20" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement20=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness20" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness20=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva20" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva20=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing20" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing20=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other6" id="other6"onInput="return validatename(id)"; value="${dutiesunderduressdetails.other6 }"><span id="other6error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain21" value="Increased Pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain21=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement21" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement21=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness21" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness21=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva21" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva21=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing21" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing21=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Household Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="yardwork" onclick="javascript:yesnoCheck16();"id="yesCheck16" value="Yard Work" <c:if test="${dutiesunderduressdetails.yardwork=='Yard Work'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="yw22">Yard Work</span></td> 
 <td><input type="checkbox" name="incresedpain22" id="incresedpain22" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain22=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip22">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement22" id="restrictedmovement22" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement22=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm22">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness22" id="weekness22" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness22=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w22">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva22" id="sincemva22" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva22=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva22">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing22" id="ongoing22" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing22=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o22">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="transportation" onclick="javascript:yesnoCheck17();"id="yesCheck17" value="Transportation" <c:if test="${dutiesunderduressdetails.transportation=='Transportation'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="tr23">Transportation</span></td> 
 <td><input type="checkbox" name="incresedpain23" id="incresedpain23" value="Increased pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain23=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip23">Increased Pain/Anxiety </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement23" id="restrictedmovement23" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement23=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm23">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness23" id="weekness23" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness23=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w23">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva23" id="sincemva23" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva23=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva23">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing23" id="ongoing23" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing23=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o23">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="shopping" onclick="javascript:yesnoCheck18();"id="yesCheck18" value="Shopping" <c:if test="${dutiesunderduressdetails.shopping=='Shopping'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="sh24">Shopping</span></td> 
 <td><input type="checkbox" name="incresedpain24" id="incresedpain24" value="Increased pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain24=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip24">Increased Pain/Anxiety </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement24" id="restrictedmovement24" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement24=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm24">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness24" id="weekness24" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness24=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w24">Fatigue</span></td>
 <td><input type="checkbox" name="sincemva24" id="sincemva24" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva24=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva24">Since MVA </span> &nbsp;&nbsp;<input type="checkbox" name="ongoing24"  id="ongoing24" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing24=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o24">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="takingouttrash" onclick="javascript:yesnoCheck19();"id="yesCheck19" value="Taking Out Trash" <c:if test="${dutiesunderduressdetails.takingouttrash=='Taking Out Trash'}"><c:out value="Checked"/></c:if>> </td>
 <td><span id="to25">Taking Out Trash</span></td> 
 <td><input type="checkbox" name="incresedpain25" id="incresedpain25" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain25=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="ip25">Increased Pain </span> &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement25" id="restrictedmovement25" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement25=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="rm25">Restricted Movement</span> &nbsp;&nbsp; <input type="checkbox" name="weekness25" id="weekness25" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness25=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="w25">Weekness </span></td>
 <td><input type="checkbox" name="sincemva25" id="sincemva25" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva25=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="mva25">Since MVA </span>  &nbsp;&nbsp; <input type="checkbox" name="ongoing25" id="ongoing25" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing25=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;<span id="o25">Ongoing </span></td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other7" id="other7" onInput="return validatename(id)"; value="${dutiesunderduress.other7 }"><span id="other7error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain27" value="Increased pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain27=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement27" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement27=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness27" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness27=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva27" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva27=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing27" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing27=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other8" id="other8" onInput="return validatename(id)"; value="${dutiesunderduress.other8 }"><span id="other8error" style="color: red;font-style:italic;"></span></td> 
 <td><input type="checkbox" name="incresedpain28" value="Increased pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain28=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement28" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement28=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness28" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness28=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva28" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva28=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing28" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing28=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 </table>
 <script language="javascript">

function confirmation() {
	var answer = confirm("Are you Sure You Want to Delete  Patient from dutiesunderduress?");
	if (answer){
		return true;
	}
	else{
		return false;
	}
}</script>

 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Update" onclick="return checksub();"></td>

<td><a href="deleteduties?dutiesno=${dutiesunderduressdetails.dutiesno}" style="color:white" class="submit_btn" onclick="return confirmation() ">Delete</a></td>

<td><input type="reset" class="submit_btn" value="Cancel" onclick="window.close()"></td>
</tr>
</table>
 </table>
</form>
</body>