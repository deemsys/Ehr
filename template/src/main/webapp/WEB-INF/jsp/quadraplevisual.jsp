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
	
	var symptom=document.getElementById("symptom").value;
	var painname=document.getElementById("painname").value;
	//alert(painname);
	if(painname=='Other')
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
      value:1,
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
    $( "#amount" ).val(+ $( "#slider" ).slider( "value" ) );
     
        
  });
$(function() {
    $( "#slider1" ).slider({
      value:0,
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
    $( "#amount1" ).val(+ $( "#slider1" ).slider( "value" ) );

    
    
  });



 $(function() {
    $( "#slider2" ).slider({
      value:1,
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
    $( "#amount2" ).val(+ $( "#slider2" ).slider( "value" ) );
  });

 $(function() {
	    $( "#slider3" ).slider({
	      value:1,
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
	    $( "#amount3" ).val(+ $( "#slider3" ).slider( "value" ) );
	  });

 </script>
 <!-- $(window).load(function(){
 $("#number").keyup(function() {
			
			 $("#numbererror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#numbererror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		}) -->
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
 </head>
 <body>
<div id="right_content">
<form action="quadraplevisual" method="POST">
<c:if test="${quadruple==1}">
 <script>
 window.close();
 </script>
</c:if>

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
        	<div id="block1">
	            <div class="headings altheading">
	            <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	             <h2> ${symptoms} Quadruple Visual Analogue Scale</h2> 
	            </div>
	            <div class="contentbox">
	            
	             <table>
	             <tr height="30">
	             <td width="100">Name</td><td width="400"><input type="hidden" name="patient_id" value="${patientid}"><input type="hidden" name="symptom" id="symptom" value="${symptom}"><input type="text" name="name"></td>
	             <td width="100">Number</td><td width="400"><input type="text" name="number" id="number"  ><span id="numbererror"></span></td>
	             <td width="100">Date</td><td width="400"><input type="text"  name="date" id="datepicker" /></td>
	             </tr>
	             </table>
	             <table>
	             <tr height="30">
	             <td width="100"><b>INSTRUCTIONS:</b></td><td width="">Please select the number that describes the question being asked. </td>
	             </tr>
	             </table>
	             <table>
	             <tr height="30">
	             <td>Pain Name : <select name="painname" id="painname" onchange="doajax()">
	             <option value="">--Select--</option>
	             <option value="Wrist/Hand">Wrist/Hand</option>
	              <option value="Low Back">Low Back</option>
	              <option value="Neck/Mid Back">Neck/Mid Back</option>
	              <option value="Oswestry">Oswestry</option>
	              <option value="Shoulder">Shoulder</option>
	               <option value="Other">Other</option>
	             </select> <input type="text" name="otherpainname" id="otherpainname" style="display: none"> </td>
	             </tr>
	             <tr height="30">
	             <td><b>1) What is your pain RIGHT NOW?</b></td>
	             </tr>
	             <tr height="50"> 
&nbsp;&nbsp;&nbsp;<td><label for="amount">Pain Scale:</label>
				                  	<input type="text" id="amount" name="painscale" /><span id="amounterr"></span>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider"></div></td>
				  </tr>
				  <tr height="30">
	             <td><b>2) What is your TYPICAL or AVERAGE pain?</b></td>
	             </tr>
	             <tr height="50"> 
	             
	             <td><label for="amount1">Pain Scale:</label>
				                  	<input type="text" id="amount1" name="painscale1" /><span id="amount1err"></span>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider1"></div></td>
				  </tr>
				  <tr height="30">
	             <td><b>3) What is your pain AT ITS BEST(How close to "0" does your pain get at its best)?</b></td>
	             </tr>
	             <tr height="50"> 
	             
	             <td><label for="amount2">Pain Scale:</label>
				                  	<input type="text" id="amount2" name="painscale2" /><span id="amount2err"></span>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider2"></div></td>
				  </tr>
				  <tr height="30">
	             <td><b>4) What is your pain AT ITS WORST(How close to "10" does your pain get at its worst)?</b></td>
	             </tr>
	             <tr height="50"> 
	             
	             <td><label for="amount3">Pain Scale:</label>
				                  	<input type="text" id="amount3" name="painscale3" /><span id="amount3err"></span>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider3"></div></td>
				  </tr>
				  <tr height="30">
				  <td><b>What percentage of your awake hours is your pain at its worst?</b></td>
				  <td><input type="text" name="awakehours"></td>
				  </tr>
	             </table>
	            <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save" id="saveid" ></td>
<td><input type="reset" class="submit_btn" value="Cancel"   onclick="myclose()" id="cancelid"></td>
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