<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
  function doajax()
{  
	
	  document.getElementById("editurl").style.display="none";
	  var symptom=document.getElementById("symptom").value;
	var painname=document.getElementById("painname").value;
	if(painname=="Other")
		{
		document.getElementById("otherpainname").style.display="table-row";
		}
	else
		{
		document.getElementById("otherpainname").style.display="none";
		}
	 $.ajax({  
		    type: "POST",  
		    url: "/EhrApp/quad_ajax",  
		    data: "symptom=" +symptom+"&painname="+painname,
		    success: function(response){  
		    	
		    	
		    	if(document.getElementById("painname").value=="Wrist/Hand")
		    		{
				 var url="wristdisabilityindex?symptom="+document.getElementById("symptom").value;			
		    		
				 if(response=="")
		    		{
		    		 window.open(url,'mywindow','resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes');
		    		}
		    	else
		    		{
		    		var url="editwristindexdetails?symptom="+document.getElementById("symptom").value;
		    		document.getElementById("editurl").style.display="table-row";
		    		popupWindow = window.open(url,"mywindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		    		
		    		}
		    		}
		    	
		    	if(document.getElementById("painname").value=="Low Back")
	    		{
			 var url="lowbackdisability?symptom="+document.getElementById("symptom").value;			
	    		
			 if(response=="")
	    		{
	    		 window.open(url,'mywindow','resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes');
	    		}
	    	else
	    		{
	    		var url="editlowbackdetails?symptom="+document.getElementById("symptom").value;
	    		document.getElementById("editurl").style.display="table-row";
	    		popupWindow = window.open(url,"mywindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
	    		}
	    		}
			
		    	
		    	if(document.getElementById("painname").value=="Neck/Mid Back")
	    		{
			 var url="neckindex?symptom="+document.getElementById("symptom").value;			
	    		
			 if(response=="")
	    		{
	    		 window.open(url,'mywindow','resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes');
	    		}
	    	else
	    		{
	    		var url="editneckindexdetails?symptom="+document.getElementById("symptom").value;
	    		document.getElementById("editurl").style.display="table-row";
	    		popupWindow = window.open(url,"mywindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
	    		}
	    		}
		    	
		    	if(document.getElementById("painname").value=="Oswestry")
	    		{
			 var url="oswestryindex?symptom="+document.getElementById("symptom").value;			
	    		
			 if(response=="")
	    		{
	    		 window.open(url,'mywindow','resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes');
	    		}
	    	else
	    		{
	    		var url="editoswestrydetails?symptom="+document.getElementById("symptom").value;
	    		document.getElementById("editurl").style.display="table-row";
	    		popupWindow = window.open(url,"mywindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
	    		}
	    		}
		    	
		    	
		    	if(document.getElementById("painname").value=="Shoulder")
	    		{
			 var url="shoulderpainscore?symptom="+document.getElementById("symptom").value;			
	    		
			 if(response=="")
	    		{
	    		 window.open(url,'mywindow','resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes');
	    		}
	    	else
	    		{
	    		var url="editshoulderdetails?symptom="+document.getElementById("symptom").value;
	    		document.getElementById("editurl").style.display="table-row";
	    		popupWindow = window.open(url,"mywindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
	    		}
	    		}
		    
		    
	
		    },  
		    error: function(e){  
		      alert('Error: ' + e);  
		    }  
		  });

	
	}
  </script>
 <script>
 function myclose()
 {
	 window.close();
 }
 </script>
  <script>
  
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 </script>
 <script>

 $(function() {
    $( "#slider" ).slider({
      value:document.getElementById("amount").value,
      min: 0,
      max: 10,
      step: 1,
      slide: function( event, ui ) {
        $( "#amount" ).val(+ ui.value );
         document.getElementById("amounterr").innerHTML="";
        if(document.getElementById("amount").value==10)
    {
    //alert("Severe pain");
     document.getElementById("amounterr").innerHTML="Severe pain";  
    }
    
     if(document.getElementById("amount").value==0)
    {
  // aler("No pain");
   document.getElementById("amounterr").innerHTML="No pain";
    }
      }
    });
    $( "quadraplevisualdetails.painscale" ).val(+ $( "#slider" ).slider( "value" ) );
     
        
  });
$(function() {
    $( "#slider1" ).slider({
      value:document.getElementById("amount1").value,
      min: 0,
       max: 10,
        step: 1,
      slide: function( event, ui ) {
        $( "#amount1" ).val(+ ui.value );
       
       
    document.getElementById("amount1err").innerHTML="";
     if(document.getElementById("amount1").value==0)
    {
 
   document.getElementById("amount1err").innerHTML="No pain";
    }
   
     if(document.getElementById("amount1").value==10)
    {
    
    document.getElementById("amount1err").innerHTML="Severe pain";
    }
        
      }
    });
    $( "quadraplevisualdetails.painscale1" ).val(+ $( "#slider1" ).slider( "value" ) );

    
    
  });



 $(function() {
    $( "#slider2" ).slider({
      value:document.getElementById("amount2").value,
      min: 0,
      max: 10,
      step: 1,
      slide: function( event, ui ) {
        $( "#amount2" ).val(+ ui.value );
         document.getElementById("amount2err").innerHTML="";
         if(document.getElementById("amount2").value==10)
    {
   // alert("Severe pain");
   document.getElementById("amount2err").innerHTML="Severe pain";
    }
    
     if(document.getElementById("amount2").value==0)
    {
    //alert("No pain");
     document.getElementById("amount2err").innerHTML="No pain";
    }
      }
    });
    $( "quadraplevisualdetails.painscale2" ).val(+ $( "#slider2" ).slider( "value" ) );
  });

 $(function() {
	    $( "#slider3" ).slider({
	      value:document.getElementById("amount3").value,
	      min: 0,
	      max: 10,
	      step: 1,
	      slide: function( event, ui ) {
	        $( "#amount3" ).val(+ ui.value );
	        document.getElementById("amount3err").innerHTML="";
	        if(document.getElementById("amount3").value==0)
	        {
	        document.getElementById("amount3err").innerHTML="No Pain";
	        return false;
	        }
	         if(document.getElementById("amount3").value==10)
	        {
	        document.getElementById("amount3err").innerHTML="Severe Pain";
	        return false;
	        }
	      }
	    });
	    $( "quadraplevisualdetails.painscale3" ).val(+ $( "#slider3" ).slider( "value" ) );
	  });

 </script>
 
 <script>
  $(function() {
	$("#name").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#otherpainname").on("keypress", function(e) {
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
  
  document.getElementById("nameerror").innerHTML="";
  if(document.getElementById("name").value=="")
  {
  document.getElementById("nameerror").innerHTML="Required field should not be empty";
  return false;
  }
  
  document.getElementById("nameerror").innerHTML="";
  if(document.getElementById("name").value.length<4 || document.getElementById("name").value.length>=32)
  {
  	
  	document.getElementById("nameerror").innerHTML="Name should be min 4 and max 32";
  	
      return false;
  }
  document.getElementById("datepickererror").innerHTML="";
  if(document.getElementById("datepicker").value=="")
  {
  document.getElementById("datepickererror").innerHTML="Required field should not be empty";
  return false;
  }
  var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker").value.match(datechk)==null)
  {
  	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
  	
      return false;
  }
	document.getElementById("otherpainnameerror").innerHTML="";
	if(document.getElementById("otherpainname").value!="")
	{
    if(document.getElementById("otherpainname").value.length<4 || document.getElementById("otherpainname").value.length>=32)
    {
    	
    	document.getElementById("otherpainnameerror").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
    }
  }
  
  
  </script>
   <script>
  function checkLength11(id){
	   
	    var fieldVal = document.getElementById(id).value;
	    
	    if(fieldVal >=0 && fieldVal <=10){
	        return true;
	    }
	    else
	    {
	        var str = document.getElementById(id).value;
	       
	        str = str.substring(0, str.length - 1);
	    document.getElementById(id).value = str;
	    }
	     
	    }
		</script>

    
  <script type="text/javascript">
       function validate(event) {
          
           var regex = new RegExp("^[0-9]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script>
    <script>
	function check(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength(){
    var fieldVal = document.getElementById('awakehours').value;
    //Suppose u want 3 number of character
    if(fieldVal <=100){
        return true;
    }
    else
    {
        var str = document.getElementById('awakehours').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('awakehours').value = str;
    }
     
    }
	</script>
     
 </head>
 <body onload="validation()">
<div id="right_content">
<form action="updatequadraplevisual" method="POST">

<script>
$(function() {
	doajax();
	
	 var painname=document.getElementById("painname").value;
		if(painname=="Other")
			{
			document.getElementById("otherpainname").style.display="table-row";
			}
		else
			{
			document.getElementById("otherpainname").style.display="none";
			}
		
});
 </script>
<table cellpadding="0" cellspacing="0" border="0" width="80%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
        <td valign="top" align="left">
        	<div>
	            <div class="headings altheading">
	             <h2> ${symptoms} Quadruple Visual Analogue Scale</h2> 
	            </div>
	            <div class="contentbox">
	            
	            <c:set value="${quadraplevisualform.quadraplevisualdetails[0]}" var="quadraplevisualdetails"></c:set>
	             <table>
	             <tr height="30">
	             <td width="100"><span class="err">* </span>Name</td><td width="400"><input type="hidden" id="symptom" name="symptom" value="${quadraplevisualdetails.symptom}"><input type="hidden" name="quadrapleno" value="${quadraplevisualdetails.quadrapleno}"><input type="text" name="name" id="name" onInput="return validatename(id)"; value="${quadraplevisualdetails.name}" ><span class="err" id="nameerror"></span></td>
	             <td width="100">Number</td><td width="400"><input type="text" name="number"  onkeypress="return validate(event)"; value="${quadraplevisualdetails.number}"></td>
	             <td width="100"><span class="err">* </span>Date</td><td width="400"><input type="text"  name="date" id="datepicker" value="${quadraplevisualdetails.date}"  /><span class="err" id="datepickererror"></span></td>
	             </tr>
	             </table>
	             <table>
	             <tr height="30">
	             <td width="100"><b>INSTRUCTIONS:</b></td><td width="">Please select the number that describes the question being asked. </td>
	             </tr>
	             </table>
	             <table>
	             <tr height="10"><c:out value=""></c:out>
	             <td>Pain Name : <select name="painname" id="painname" onchange="doajax()">
	             <option value="">--Select--</option>
	             <option  value="Wrist/Hand" <c:if test="${quadraplevisualdetails.painname=='Wrist/Hand'}"><c:out value="selected"></c:out></c:if>>Wrist/Hand</option>
	              <option value="Low Back" <c:if test="${quadraplevisualdetails.painname=='Low Back'}"><c:out value="selected"></c:out></c:if>>Low Back</option>
	              <option value="Neck/Mid Back"<c:if test="${quadraplevisualdetails.painname=='Neck/Mid Back'}"><c:out value="selected"></c:out></c:if>>Neck/Mid Back</option>
	              <option value="Oswestry"<c:if test="${quadraplevisualdetails.painname=='Oswestry'}"><c:out value="selected"></c:out></c:if>>Oswestry</option>
	              <option value="Shoulder"<c:if test="${quadraplevisualdetails.painname=='Shoulder'}"><c:out value="selected"></c:out></c:if>>Shoulder</option>
	               <option value="Other"<c:if test="${quadraplevisualdetails.painname=='Other'}"><c:out value="selected"></c:out></c:if>>Other</option>
	               
	             </select><input type="text" name="otherpainname" id="otherpainname" onInput="return validatename(id)"; value="${quadraplevisualdetails.otherpainname }" style="display: none"><span class="err" id="otherpainnameerror"></span>
	           </td><td><a href="#" id="editurl" onclick="doajax()" style="display: none">Edit</a></td>
	           </td> </tr></table>
	             <table>
	            
	             <tr height="30">
	             <td><b>1) What is your pain RIGHT NOW?</b></td>
	             </tr>
	             <tr height="50"> 
&nbsp;&nbsp;&nbsp;<td><label for="amount">Pain Scale:</label>
				                  	<input type="text" id="amount" maxlength="2" value="${quadraplevisualdetails.painscale}" name="painscale" onInput="checkLength11(id)" onkeypress="return validate(event)"; /><span id="amounterr"></span>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider"></div></td>
				  </tr>
				  <tr height="30">
	             <td><b>2) What is your TYPICAL or AVERAGE pain?</b></td>
	             </tr>
	             <tr height="50"> 
	             
	             <td><label for="amount1">Pain Scale:</label>
				                  	<input type="text" id="amount1" maxlength="2" value="${quadraplevisualdetails.painscale1}" name="painscale1" onInput="checkLength11(id)" onkeypress="return validate(event)";/><span id="amount1err"></span>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider1"></div></td>
				  </tr>
				  <tr height="30">
	             <td><b>3) What is your pain AT ITS BEST(How close to "0" does your pain get at its best)?</b></td>
	             </tr>
	             <tr height="50"> 
	             
	             <td><label for="amount2">Pain Scale:</label>
				                  	<input type="text" id="amount2" name="painscale2" maxlength="2" value="${quadraplevisualdetails.painscale2}" onInput="checkLength11(id)" onkeypress="return validate(event)"; /><span id="amount2err"></span>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider2"></div></td>
				  </tr>
				  <tr height="30">
	             <td><b>4) What is your pain AT ITS WORST(How close to "10" does your pain get at its worst)?</b></td>
	             </tr>
	             <tr height="50"> 
	             
	             <td><label for="amount3">Pain Scale:</label>
				                  	<input type="text" id="amount3" name="painscale3"  maxlength="2" value="${quadraplevisualdetails.painscale3}" onInput="checkLength11(id)" onkeypress="return validate(event)"; /><span id="amount3err"></span>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider3"></div></td>
				  </tr>
				  <tr height="30">
				  <td><b>What percentage of your awake hours is your pain at its worst?</b></td>
				  <td><input type="text" name="awakehours" id="awakehours" onKeyPress="return check(event,value)" onInput="checkLength()" maxlength="5" value="${quadraplevisualdetails.awakehours}"></td>
				  </tr>
	             </table>
	            <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="update" onclick="return checksub();"></td>
<td><a href="deletequadraplevisual?quadrupleno=${quadraplevisualdetails.quadrapleno}" style="color:white" class="submit_btn">Delete</a></td>
<td><a style="color:white" class="submit_btn"  onclick="myclose()">Cancel</a></td>
</tr>
</table>
	            </div>
	            </div>
	            </td>
	            </tr>
	            </table>
	            </form>
	            </div>
        	  </body>
        	  </html>
        	  <jsp:include page="footer.jsp"></jsp:include>