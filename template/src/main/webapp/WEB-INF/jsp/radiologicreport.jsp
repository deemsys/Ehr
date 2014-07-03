<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp"></jsp:include>
<html>
<head>

<link rel="stylesheet" href="resources/css/tabs.css" type="text/css" />

 <script src="resources/js/tabs-1.9.1.js"></script>
  <script src="resources/js/tabs-ui.js"></script>
   
<title>Insert title here</title>

</head>
<script>
$(function() {
	$( "#tabs" ).tabs({
		event: "mouseover"
	});
});

  </script>
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  $(function() {
	    $( "#datepicker1" ).datepicker();
	  });
  
  </script>
  <script>
  function checkSubmit()
  {
  
	  document.getElementById("pnameerror").innerHTML="";
	  document.getElementById("datepickererror").innerHTML="";
	  document.getElementById("numerror").innerHTML="";
	  var error="";
		if(document.getElementById("pname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required Field Should not be Empty";
		error="true";
		//return false;
		}
		else if((document.getElementById("pname").value.length < 4 ) || (document.getElementById("pname").value.length > 45 ))
			{
			document.getElementById("pnameerror").innerHTML="Required Field Should be 4 to 45";
			error="true";
			//return false;
			}
 
	if(document.getElementById("datepicker").value=="")
	{
	document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
	error="true";
	//return false;
	}
	 document.getElementById("datepickererror").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker").value.match(datechk)==null)
    {
    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
    	error="true";
      //  return false;
    }
	
	if(document.getElementById("num").value=="")
	{
	document.getElementById("numerror").innerHTML="Required Field Should not be Empty";
	error="true";
	//return false;
	}
	else if((document.getElementById("num").value.length < 4 ) || (document.getElementById("num").value.length > 32 ))
	{
	document.getElementById("numerror").innerHTML="Required Field Should be 4 to 32";
	error="true";
	//return false;
	}
	
	if(isNaN(document.getElementById("num").value))
	{
	document.getElementById("numerror").innerHTML="Enter Only Numbers";
	error="true";
	//return false;
	}
		document.getElementById("datepicker1error").innerHTML="";
		if(document.getElementById("datepicker1").value=="")
		{
		document.getElementById("datepicker1error").innerHTML="Required Field Should not be Empty";
		error="true";
		//return false;
		}
		document.getElementById("datepicker1error").innerHTML="";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		if(document.getElementById("datepicker1").value.match(datechk)==null)
	    {
	    	document.getElementById("datepicker1error").innerHTML="Invalid Date Format";
	    	error="true";
	        //return false;
	    }
		
   	   var regex = /^[A-Za-z0-9 ]*$/;
   	   var alpha = /^[A-Za-z ]*$/; 
   	   if(document.getElementById("break_georges").checked)
   		   {
   	   if(document.getElementById("break1").value == "")
     	   {
     	  
     	   document.getElementById("break1eror").innerHTML="Required Field should not be blank";
     	    error="true";
     	   }
   	   else if(document.getElementById("break1").value.charAt(0) == " ")
     	   {
     	  
     	   document.getElementById("break1eror").innerHTML="Initial space not allowed";
     	    error="true";
     	   }
   	   else if(document.getElementById("break1").value.match(regex))
   		   {
   		if((document.getElementById("break1").value.length < 4 ) || (document.getElementById("break1").value.length > 45 ))
			{
			  document.getElementById("break1eror").innerHTML="Required Field should be 4 to 45";
   	    error="true";
			}
			else{
				 document.getElementById("break1eror").innerHTML="";
			}
   		   
   		  
   		   }
   	   else
   		   {
   		   document.getElementById("break1eror").innerHTML="Required Field should be Alpha-Numeric";
         	    error="true";
   		   }
   	   
   		   }
   	   else{
   		   document.getElementById("break1eror").innerHTML="";
   	   }
   	   
    
   	   if(document.getElementById("narrowed_1").checked)
   		   {
   	   if(document.getElementById("narrowed1").value == "")
     	   {
     	  
     	   document.getElementById("narrowed1eror").innerHTML="Required Field should not be blank";
     	    error="true";
     	   }
   	   else if(document.getElementById("narrowed1").value.charAt(0) == " ")
     	   {
     	  
     	   document.getElementById("narrowed1eror").innerHTML="Initial space not allowed";
     	    error="true";
     	   }
   	   else if(document.getElementById("narrowed1").value.match(alpha))
   		   {
   		if((document.getElementById("narrowed1").value.length < 4 ) || (document.getElementById("narrowed1").value.length > 45 ))
		{
		  document.getElementById("narrowed1eror").innerHTML="Required Field should be 4 to 45";
	    error="true";
		}
		else{
			 document.getElementById("narrowed1eror").innerHTML="";
		}
   		  
   		   }
   	   else
   		   {
   		   document.getElementById("narrowed1eror").innerHTML="Required Field should be Alphabates";
         	    error="true";
   		   }
   	   
   		   }
   	   else{
   		   document.getElementById("narrowed1eror").innerHTML="";
   	   }
   	   
   
   	   if(document.getElementById("anterior_12").checked)
		   {
   		  
		   if(document.getElementById("anterior1").value == "")
 	   		{
 	  
 	 		  document.getElementById("anterior2err").innerHTML="Required Field should not be blank";
 	  		  error="true";
 	   		}
	   		else if(document.getElementById("anterior1").value.charAt(0) == " ")
 	   		{
 	  
 	   			document.getElementById("anterior2err").innerHTML="Initial space not allowed";
 	   			 error="true";
 	   		}
	   		else if(document.getElementById("anterior1").value.match(alpha))
		   {
	   			if((document.getElementById("anterior1").value.length < 4 ) || (document.getElementById("anterior1").value.length > 45 ))
				{
				  document.getElementById("anterior2err").innerHTML="Required Field should be 4 to 45";
	   	    error="true";
				}
				else{
					 document.getElementById("anterior2err").innerHTML="";
				}
		  
		   }
	   		else
		   {
		   document.getElementById("anterior2err").innerHTML="Required Field should be Alphabates";
     	    error="true";
		   }
	   
		   }
	   else{
		   document.getElementById("anterior2err").innerHTML="";
	   }
	   
     
	  
   	   
   	   if(document.getElementById("schmorls_1").checked)
		   {
   		  
		   if(document.getElementById("schmorls1").value == "")
 	   		{
 	  
 	 		  document.getElementById("schmorls11").innerHTML="Required Field should not be blank";
 	  		  error="true";
 	   		}
	   		else if(document.getElementById("schmorls1").value.charAt(0) == " ")
 	   		{
 	  
 	   			document.getElementById("schmorls11").innerHTML="Initial space not allowed";
 	   			 error="true";
 	   		}
	   		else if(document.getElementById("schmorls1").value.match(alpha))
		   {
	   			if((document.getElementById("schmorls1").value.length < 4 ) || (document.getElementById("schmorls1").value.length > 45 ))
				{
				  document.getElementById("schmorls11").innerHTML="Required Field should be 4 to 45";
	   	    error="true";
				}
				else{
					document.getElementById("schmorls11").innerHTML="";
				}
		   
		   }
	   		else
		   {
		   document.getElementById("schmorls11").innerHTML="Required Field should be Alphabates";
     	    error="true";
		   }
	   
		   }
	   else{
		   document.getElementById("schmorls11").innerHTML="";
	   }
	   
    
		
	  
	  
   	   
   	   if(document.getElementById("subchondral_1").checked)
		   {
   		  
		   if(document.getElementById("subchondral1").value == "")
 	   		{
 	  
 	 		  document.getElementById("subchondral11").innerHTML="Required Field should not be blank";
 	  		  error="true";
 	   		}
	   		else if(document.getElementById("subchondral1").value.charAt(0) == " ")
 	   		{
 	  
 	   			document.getElementById("subchondral11").innerHTML="Initial space not allowed";
 	   			 error="true";
 	   		}
	   		else if(document.getElementById("subchondral1").value.match(alpha))
		   {
	   			if((document.getElementById("subchondral1").value.length < 4 ) || (document.getElementById("subchondral1").value.length > 45 ))
				{
				  document.getElementById("subchondral11").innerHTML="Required Field should be 4 to 45";
	   	    error="true";
				}
				else{
					 document.getElementById("subchondral11").innerHTML="";
				}
		  
		   }
	   		else
		   {
		   document.getElementById("subchondral11").innerHTML="Required Field should be Alphabates";
     	    error="true";
		   }
	   
		   }
	   else{
		   document.getElementById("subchondral11").innerHTML="";
	   }
	   
    
		
	  
	  
   	   
   	   if(document.getElementById("apexat_1").checked)
		   {
   		  
		   if(document.getElementById("apexat1").value == "")
 	   		{
 	  
 	 		  document.getElementById("apexat1error").innerHTML="Required Field should not be blank";
 	  		  error="true";
 	   		}
	   		else if(document.getElementById("apexat1").value.charAt(0) == " ")
 	   		{
 	  
 	   			document.getElementById("apexat1error").innerHTML="Initial space not allowed";
 	   			 error="true";
 	   		}
	   		else if(document.getElementById("apexat1").value.match(alpha))
		   {
	   			if((document.getElementById("apexat1").value.length < 4 ) || (document.getElementById("apexat1").value.length > 45 ))
				{
				  document.getElementById("apexat1error").innerHTML="Required Field should be 4 to 45";
	   	    error="true";
				}
				else{
					document.getElementById("apexat1error").innerHTML="";
				}
		   
		   }
	   		else
		   {
		   document.getElementById("apexat1error").innerHTML="Required Field should be Alphabates";
     	    error="true";
		   }
	   
		   }
	   else{
		   document.getElementById("apexat1error").innerHTML="";
	   }
	   
     
		
	  
	   
   	   
   	   if(document.getElementById("softtissueedemaof_1").checked)
		   {
   		  
		   if(document.getElementById("softtissueedemaof1").value == "")
 	   		{
 	  
 	 		  document.getElementById("softtissueedemaof1error").innerHTML="Required Field should not be blank";
 	  		  error="true";
 	   		}
	   		else if(document.getElementById("softtissueedemaof1").value.charAt(0) == " ")
 	   		{
 	  
 	   			document.getElementById("softtissueedemaof1error").innerHTML="Initial space not allowed";
 	   			 error="true";
 	   		}
	   		else if(document.getElementById("softtissueedemaof1").value.match(alpha))
		   {
	   			if((document.getElementById("softtissueedemaof1").value.length < 4 ) || (document.getElementById("softtissueedemaof1").value.length > 45 ))
				{
				  document.getElementById("softtissueedemaof1error").innerHTML="Required Field should be 4 to 45";
	   	 		   error="true";
				}
				else{
					document.getElementById("softtissueedemaof1error").innerHTML="";
				}
		   
		   }
	   		else
		   {
		   document.getElementById("softtissueedemaof1error").innerHTML="Required Field should be Alphabates";
     	    error="true";
		   }
	   
		   }
	   else{
		   document.getElementById("softtissueedemaof1error").innerHTML="";
	   }
	   
      
	
	
		
	  
	 
   	   
   	   if(document.getElementById("other_1").checked)
		   {
   		  
		   if(document.getElementById("other1").value == "")
 	   		{
 	  
 	 		  document.getElementById("other1error").innerHTML="Required Field should not be blank";
 	  		  error="true";
 	   		}
	   		else if(document.getElementById("other1").value.charAt(0) == " ")
 	   		{
 	  
 	   			document.getElementById("other1error").innerHTML="Initial space not allowed";
 	   			 error="true";
 	   		}
	   		else if(document.getElementById("other1").value.match(alpha))
		   {
	   			if((document.getElementById("other1").value.length < 4 ) || (document.getElementById("other1").value.length > 45 ))
				{
				  document.getElementById("other1error").innerHTML="Required Field should be 4 to 45";
	   	  			  error="true";
				}
				else{
					document.getElementById("other1error").innerHTML="";
				}
		   
		   }
	   		else
		   {
		   document.getElementById("other1error").innerHTML="Required Field should be Alphabates";
     	    error="true";
		   }
	   
		   }
	   else{
		   document.getElementById("other1error").innerHTML="";
	   }
	   
      
   	 if(document.getElementById("degenerative_2").checked)
	   {
		  
	   if(document.getElementById("degenerative2").value == "")
   		{
  
 		  document.getElementById("degenerative2error").innerHTML="Required Field should not be blank";
  		  error="true";
   		}
 		else if(document.getElementById("degenerative2").value.charAt(0) == " ")
   		{
  
   			document.getElementById("degenerative2error").innerHTML="Initial space not allowed";
   			 error="true";
   		}
 		else if(document.getElementById("degenerative2").value.match(alpha))
	   {
 			if((document.getElementById("degenerative2").value.length < 4 ) || (document.getElementById("degenerative2").value.length > 45 ))
 			{
 			  document.getElementById("degenerative2error").innerHTML="Required Field should be 4 to 45";
       	    error="true";
 			}
 			else{
	 			  document.getElementById("degenerative2error").innerHTML="";
 			}
	   }
 		else
	   {
	   document.getElementById("degenerative2error").innerHTML="Required Field should be Alphabates";
	    error="true";
	   }
 
	   }
 else{
	   document.getElementById("degenerative2error").innerHTML="";
 	}
   	 
   	 
	  
     if(document.getElementById("narrowed_2").checked)
	   {
		  
	   if(document.getElementById("narrowed2").value == "")
   		{
  
 		  document.getElementById("narrowed2error").innerHTML="Required Field should not be blank";
  		  error="true";
   		}
 		else if(document.getElementById("narrowed2").value.charAt(0) == " ")
   		{
  
   			document.getElementById("narrowed2error").innerHTML="Initial space not allowed";
   			 error="true";
   		}
 		else if(document.getElementById("narrowed2").value.match(alpha))
	   {
 			if((document.getElementById("narrowed2").value.length < 4 ) || (document.getElementById("narrowed2").value.length > 45 ))
 			{
 			  document.getElementById("narrowed2error").innerHTML="Required Field should be 4 to 45";
       	    error="true";
 			}
 			else{
	 			  document.getElementById("narrowed2error").innerHTML="";
 			}
	   }
 		else
	   {
	   document.getElementById("narrowed2error").innerHTML="Required Field should be Alphabates";
	    error="true";
	   }
 
	   }
 		else{
			   document.getElementById("narrowed2error").innerHTML="";
 		}
 
     if(document.getElementById("schmorlsnodesat_2").checked)
	   {
		  
	   if(document.getElementById("schmorlsnodesat2").value == "")
   		{
  
 		  document.getElementById("schmorlsnodesat2error").innerHTML="Required Field should not be blank";
  		  error="true";
   		}
 		else if(document.getElementById("schmorlsnodesat2").value.charAt(0) == " ")
   		{
  
   			document.getElementById("schmorlsnodesat2error").innerHTML="Initial space not allowed";
   			 error="true";
   		}
 		else if(document.getElementById("schmorlsnodesat2").value.match(alpha))
	   {
 			if((document.getElementById("schmorlsnodesat2").value.length < 4 ) || (document.getElementById("schmorlsnodesat2").value.length > 45 ))
 			{
 			  document.getElementById("schmorlsnodesat2error").innerHTML="Required Field should be 4 to 45";
       	    error="true";
 			}
 			else{
	 			  document.getElementById("schmorlsnodesat2error").innerHTML="";
 			}
	   }
 		else
	   {
	   document.getElementById("schmorlsnodesat2error").innerHTML="Required Field should be Alphabates";
	    error="true";
	   }
 
	   }
	 else{
	 	  document.getElementById("schmorlsnodesat2error").innerHTML="";
 	}
     
     if(document.getElementById("anterior_2").checked)
	   {
		  
	   if(document.getElementById("anterior2").value == "")
   		{
  
 		  document.getElementById("anterior2error").innerHTML="Required Field should not be blank";
  		  error="true";
   		}
 		else if(document.getElementById("anterior2").value.charAt(0) == " ")
   		{
  
   			document.getElementById("anterior2error").innerHTML="Initial space not allowed";
   			 error="true";
   		}
 		else if(document.getElementById("anterior2").value.match(alpha))
	   {
 			if((document.getElementById("anterior2").value.length < 4 ) || (document.getElementById("anterior2").value.length > 45 ))
 			{
 			  document.getElementById("anterior2error").innerHTML="Required Field should be 4 to 45";
       	    error="true";
 			}
 			else{
	 			  document.getElementById("anterior2error").innerHTML="";
 			}
	   }
 		else
	   {
	   document.getElementById("anterior2error").innerHTML="Required Field should be Alphabates";
	    error="true";
	   }
 
	   }
 else{
	   document.getElementById("anterior2error").innerHTML="";
 }
     if(document.getElementById("subchondral_2").checked)
	   {
		  
	   if(document.getElementById("subchondral2").value == "")
   		{
  
 		  document.getElementById("subchondral2error").innerHTML="Required Field should not be blank";
  		  error="true";
   		}
 		else if(document.getElementById("subchondral2").value.charAt(0) == " ")
   		{
  
   			document.getElementById("subchondral2error").innerHTML="Initial space not allowed";
   			 error="true";
   		}
 		else if(document.getElementById("subchondral2").value.match(alpha))
	   {
 			if((document.getElementById("subchondral2").value.length < 4 ) || (document.getElementById("subchondral2").value.length > 45 ))
 			{
 			  document.getElementById("subchondral2error").innerHTML="Required Field should be 4 to 45";
       	    error="true";
 			}
 			else{
	 			  document.getElementById("subchondral2error").innerHTML="";
 			}
	   }
 		else
	   {
	   document.getElementById("subchondral2error").innerHTML="Required Field should be Alphabates";
	    error="true";
	   }
 
	   }
 else{
	   document.getElementById("subchondral2error").innerHTML="";
 }
     if(document.getElementById("foraminal_2").checked)
	   {
		  
	   if(document.getElementById("foraminal2").value == "")
   		{
  
 		  document.getElementById("foraminal2error").innerHTML="Required Field should not be blank";
  		  error="true";
   		}
 		else if(document.getElementById("foraminal2").value.charAt(0) == " ")
   		{
  
   			document.getElementById("foraminal2error").innerHTML="Initial space not allowed";
   			 error="true";
   		}
 		else if(document.getElementById("foraminal2").value.match(alpha))
	   {
 			if((document.getElementById("foraminal2").value.length < 4 ) || (document.getElementById("foraminal2").value.length > 45 ))
 			{
 			  document.getElementById("foraminal2error").innerHTML="Required Field should be 4 to 45";
       	    error="true";
 			}
 			else{
	 			  document.getElementById("foraminal2error").innerHTML="";
 			}
	   }
 		else
	   {
	   document.getElementById("foraminal2error").innerHTML="Required Field should be Alphabates";
	    error="true";
	   }
 
	   }
 else{
	   document.getElementById("foraminal2error").innerHTML="";
 }
     if(document.getElementById("apexat_2").checked)
	   {
		  
	   if(document.getElementById("apexat2").value == "")
   		{
  
 		  document.getElementById("apexat2error").innerHTML="Required Field should not be blank";
  		  error="true";
   		}
 		else if(document.getElementById("apexat2").value.charAt(0) == " ")
   		{
  
   			document.getElementById("apexat2error").innerHTML="Initial space not allowed";
   			 error="true";
   		}
 		else if(document.getElementById("apexat2").value.match(alpha))
	   {
 			if((document.getElementById("apexat2").value.length < 4 ) || (document.getElementById("apexat2").value.length > 45 ))
 			{
 			  document.getElementById("apexat2error").innerHTML="Required Field should be 4 to 45";
       	    error="true";
 			}
 			else{
	 			  document.getElementById("apexat2error").innerHTML="";
 			}
	   }
 		else
	   {
	   document.getElementById("apexat2error").innerHTML="Required Field should be Alphabates";
	    error="true";
	   }
 
	   }
 else{
	   document.getElementById("apexat2error").innerHTML="";
 }
     
	   if(document.getElementById("softtissueedemaof_2").checked)
	   {
		  
	   if(document.getElementById("softtissueedemaof2").value == "")
   		{
  
 		  document.getElementById("softtissueedemaof2error").innerHTML="Required Field should not be blank";
  		  error="true";
   		}
 		else if(document.getElementById("softtissueedemaof2").value.charAt(0) == " ")
   		{
  
   			document.getElementById("softtissueedemaof2error").innerHTML="Initial space not allowed";
   			 error="true";
   		}
 		else if(document.getElementById("softtissueedemaof2").value.match(alpha))
	   {
 			if((document.getElementById("softtissueedemaof2").value.length < 4 ) || (document.getElementById("softtissueedemaof2").value.length > 45 ))
 			{
 			  document.getElementById("softtissueedemaof2error").innerHTML="Required Field should be 4 to 45";
       	    error="true";
 			}
 			else{
	 			  document.getElementById("softtissueedemaof2error").innerHTML="";
 			}
	   }
 		else
	   {
	   document.getElementById("softtissueedemaof2error").innerHTML="Required Field should be Alphabates";
	   error="true";
	  // return false;
	   }
 
	   }
 else{
	   document.getElementById("softtissueedemaof2error").innerHTML="";
 }
	   if(document.getElementById("other_2").checked)
	   {
		  
	   if(document.getElementById("other2").value == "")
	   		{
	  
	 		  document.getElementById("other2error").innerHTML="Required Field should not be blank";
	 		 error="true";
	  	//	 return false;
	   		}
   		else if(document.getElementById("other2").value.charAt(0) == " ")
	   		{
	  
	   			document.getElementById("other2error").innerHTML="Initial space not allowed";
	   		 error="true";
	   		//	return false;
	   		}
   		else if(document.getElementById("other2").value.match(alpha))
	   {
   			if((document.getElementById("other2").value.length < 4 ) || (document.getElementById("other2").value.length > 45 ))
   			{
   			  document.getElementById("other2error").innerHTML="Required Field should be 4 to 45";
   			 error="true";
         //	   return false;
   			}
   			else{
	 			  document.getElementById("other2error").innerHTML="";
   			}
	   }
   		else
	   {
	   document.getElementById("other2error").innerHTML="Required Field should be Alphabates";
	   error="true";
  	 //  return false;
	   }
   
	   }
   else{
	   document.getElementById("other2error").innerHTML="";
   }
	   if(document.getElementById("break_3").checked)
	   {
		  
	   if(document.getElementById("break3").value == "")
	   		{
	  
	 		  document.getElementById("break3error").innerHTML="Required Field should not be blank";
	 		 error="true";
	  		// return false;
	   		}
   		else if(document.getElementById("break3").value.charAt(0) == " ")
	   		{
	  
	   			document.getElementById("break3error").innerHTML="Initial space not allowed";
	   		 error="true";
	   		//	return false;
	   		}
   		else if(document.getElementById("break3").value.match(alpha))
	   {
   			if((document.getElementById("break3").value.length < 4 ) || (document.getElementById("break3").value.length > 45 ))
   			{
   			  document.getElementById("break3error").innerHTML="Required Field should be 4 to 45";
   			 error="true";
         	   //return false;
   			}
   			else{
	 			  document.getElementById("break3error").innerHTML="";
   			}
	   }
   		else
	   {
	   document.getElementById("break3error").innerHTML="Required Field should be Alphabates";
	   error="true";
  	//   return false;
	   }
   
	   }
   else{
	   document.getElementById("break3error").innerHTML="";
   }
	   
	   if(document.getElementById("narrowed_3").checked)
	   {
		  
	   if(document.getElementById("narrowed3").value == "")
	   		{
	  
	 		  document.getElementById("narrowed3error").innerHTML="Required Field should not be blank";
	 		 error="true";
	  		//return false;
	   		}
   		else if(document.getElementById("narrowed3").value.charAt(0) == " ")
	   		{
	  
	   			document.getElementById("narrowed3error").innerHTML="Initial space not allowed";
	   		 error="true";
	   		//	return false;
	   		}
   		else if(document.getElementById("narrowed3").value.match(alpha))
	   {
   			if((document.getElementById("narrowed3").value.length < 4 ) || (document.getElementById("narrowed3").value.length > 45 ))
   			{
   			  document.getElementById("narrowed3error").innerHTML="Required Field should be 4 to 45";
   			 error="true";
         	  // return false;
   			}
   			else{
	 			  document.getElementById("narrowed3error").innerHTML="";
   			}
	   }
   		else
	   {
	   document.getElementById("narrowed3error").innerHTML="Required Field should be Alphabates";
	   error="true";
  	  // return false;
	   }
   
	   }
   else{
	   document.getElementById("narrowed3error").innerHTML="";
   }
	   
	   if(document.getElementById("subchondral_3").checked)
	   {
		  
	   if(document.getElementById("subchondral3").value.charAt(0) == " ")
	   		{
	  
	   			document.getElementById("subchondral3error").innerHTML="Initial space not allowed";
	   			 error="true";
	   		}
   		else if(document.getElementById("subchondral3").value.match(alpha))
	   {
   			if((document.getElementById("subchondral3").value.length < 4 ) || (document.getElementById("subchondral3").value.length > 45 ))
   			{
   			  document.getElementById("subchondral3error").innerHTML="Required Field should be 4 to 45";
         	    error="true";
   			}
   			else{
	 			  document.getElementById("subchondral3error").innerHTML="";
   			}
	   }
   		else
	   {
	   document.getElementById("subchondral3error").innerHTML="Required Field should be Alphabates";
  	    error="true";
	   }
   
	   }
   else{
	   document.getElementById("subchondral3error").innerHTML="";
   }
	   
	   if(document.getElementById("anterior_3").checked)
	   {
		   if(document.getElementById("anterior3").value == "")
 	   		{
 	  
 	 		 document.getElementById("anterior3error").innerHTML="Required Field should not be blank";
 	 		error="true";
 	   		}
		   else  if(document.getElementById("anterior3").value.charAt(0) == " ")
	   		{
	  
	   			document.getElementById("anterior3error").innerHTML="Initial space not allowed";
	   		 error="true";
	   		}
   		else if(document.getElementById("anterior3").value.match(alpha))
	   {
   			if((document.getElementById("anterior3").value.length < 4 ) || (document.getElementById("anterior3").value.length > 45 ))
   			{
   			  document.getElementById("anterior3error").innerHTML="Required Field should be 4 to 45";
   			 error="true";
   			}
   			else{
	 			  document.getElementById("anterior3error").innerHTML="";
   			}
	   }
   		else
	   {
	   document.getElementById("anterior3error").innerHTML="Required Field should be Alphabates";
	   error="true";
	   }
   
	   }
   else{
	   document.getElementById("anterior3error").innerHTML="";
   }
   
   
	   if(error == "true")
		{
		return false;
		}
  }
  
  </script>
  <script type="text/javascript">
  function printpage()
  {
	
 document.getElementById('print').style.visibility = 'hidden';
	      
		  
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
    
     }
  </script>
  <script>
  function printPage(id)
  {
	
	        document.getElementById('print').style.visibility = 'hidden';
	        document.getElementById('print1').style.visibility = 'hidden';
		  
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
     document.getElementById('print1').style.visibility = 'visible';
	  
  }
  </script>
  <script >
    var gAutoPrint = true;

    function processPrint(){
 document.getElementById('print').style.visibility = 'hidden';
  document.getElementById('tab1').style.visibility = 'hidden';
   document.getElementById('tab2').style.visibility = 'hidden';
    document.getElementById('tab3').style.visibility = 'hidden';
     document.getElementById('tab4').style.visibility = 'hidden';
      document.getElementById('saveid').style.visibility = 'hidden';
	        document.getElementById('cancelid').style.visibility = 'hidden';
      
    if (document.getElementById != null){
    var html = '<HTML>\n<HEAD>\n';
    if (document.getElementsByTagName != null){
    var headTags = document.getElementsByTagName("head");
    if (headTags.length > 0) html += headTags[0].innerHTML;
    }

    html += '\n</HE' + 'AD>\n<BODY>\n';
    var printReadyElem = document.getElementById("printMe");

    if (printReadyElem != null) html += printReadyElem.innerHTML;
    else{
    alert("Error, no contents.");
    return;
    }

    html += '\n</BO' + 'DY>\n</HT' + 'ML>';
    var printWin = window.open("","processPrint");
    printWin.document.open();
    printWin.document.write(html);
    printWin.document.close();
 document.getElementById('print').style.visibility = 'visible';
 document.getElementById('tab1').style.visibility = 'visible';
   document.getElementById('tab2').style.visibility = 'visible';
    document.getElementById('tab3').style.visibility = 'visible';
     document.getElementById('tab4').style.visibility = 'visible';
      document.getElementById('saveid').style.visibility = 'visible';
     document.getElementById('cancelid').style.visibility = 'visible';
    if (gAutoPrint) printWin.print();
    } else alert("Browser not supported.");

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
<body>
<form method="POST" action="radiologicreport">
<input type="hidden" name="patient_id" value="${username}">
<c:choose>
            <c:when test="${empty radio}">

<br>
<br>
<div id="printMe">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

      <tr>
        <td valign="top" align="left">
        	<div > 
        	<div class="headings altheading">
	       
<!-- <a href="javascript:void(processPrint());"  id="print">Print</a> -->
<img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="processPrint();" ></a>

	             
	              <h2 align="center" >Radiologic Report<br></b></h2>
	       </div>
	        <div class="contentbox">
	        <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td>
    				<table cellpadding="0" cellspacing="0" border="0" width="100%">
	                            <tr class="row1">
				                  <td><span class="err">*</span>Patient Name:</td>
				                  <td><input type="text" class="input_txtbx1" id="pname" name="pname" onkeypress="return validate1(event,id)";  value="${name}"/><br/><span id="pnameerror" style="color: red;font-style:italic;"><form:errors path="RadiologicReport.pname"></form:errors></td>
				                  <td><span class="err">*</span>Date:</td>
				                  <td><input type="text" class="input_txtbx1" id="datepicker"  name="date" /><br/><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="RadiologicReport.date"></form:errors></td>
				                  <td><span class="err">*</span>I.D.#:</td>
				                  <td><input type="text" class="input_txtbx1" id="num" name="id" onkeypress="return validate(event)";/><br/><span  id="numerror" style="color: red;font-style:italic;"><form:errors path="RadiologicReport.id"></form:errors></span></td>
				                  <td><span class="err">*</span>Date Of Birth</td>
				                  <td><input type="text" class="input_txtbx1" id="datepicker1" name="dob" /><br/><span id="datepicker1error" style="color: red;font-style:italic;"><form:errors path="RadiologicReport.dob"></form:errors></td>
				                </tr>
				    </table>
				    
				   
				    </td>
				    </tr>
				    </table>
				    </div>
				    </div> 
				    </td>
				    </tr>
				    </table>
				    <script type="text/javascript">
       function validate1(event,id) {
        
    
        
           var regex = new RegExp("^[A-Za-z ]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             
               event.preventDefault();
               return false;
           }
         
           if(document.getElementById(id).value.substring(0,1)==" ")
        	{
        	
        	   if(id == "pname"){
        		document.getElementById("pnameerror").innerHTML="Initial space not allowed";
        	   }
        	   if(id == "posi")
        		   {
        		   document.getElementById("positive1error").innerHTML="Initial space not allowed";
        		   
        		   }
        	  /*  if(id=="diagonosis")
        		   {
        		   document.getElementById("diagnosiserr").innerHTML="Initial space not allowed";
        		   
        		   }
        	   if(id=="sign")
        		   {
        		   document.getElementById("signerror").innerHTML="Initial space not allowed";
        		   }
        	 */
        	   
        		document.getElementById(id).value == "";
        		return false;
        	}
           else{
        	   if(id == "pname"){
        		   document.getElementById("pnameerr").innerHTML="";
           	   }
        	   if(id == "posi")
    		   {
    		   document.getElementById("positive1error").innerHTML="";
    		   
    		   }
           	  /*  if(id="diagonosis")
           		   {
           		document.getElementById("diagnosiserr").innerHTML="";
           		   
           		   }
           	 if(id="sign")
  		   {
  		   document.getElementById("signerror").innerHTML="";
  		   }
           	 */
        	   
           }
           
       } 
       </script>
<div id="tabs">
       <ul>
          <li><a href="#tabs-1" id="tab1">Cervical Spine</a></li>
          <li><a href="#tabs-2" id="tab2">Thoracic Spine</a></li>
          <li><a href="#tabs-3" id="tab3">Lumbar Spine</a></li>
          <li><a href="#tabs-4" id="tab4">Extremities</a></li>
       </ul>
         
   <div id="tabs-1"> 
   		 <div id="right_content">
		 <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div > 
        	<div class="headings altheading">
        	

        	
        	<h2>CERVICAL SPINE</h2>
	            </div>
	          
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">		                
                               
                        <table cellpadding="0" cellspacing="0" border="0">
				               <tr class="row1">
				               <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Views:
				                  	
				                  		<select name="views1" class="input_cmbbx1">
						                    <option selected="selected" value="A-P lower" >A-P lower</option>
											<option value="APOM">APOM</option>
											
											<option value="RLF">RLF</option>
											<option value="LLF">LLF</option>
											<option value="RPO">RPO</option>
											<option value="LPO">LPO</option>
											<option value="Flex">Flex</option>
											<option value="Ext">Ext</option>
				                   		</select>
				                   		</td>
				                   	<td valign="top" align="left" class="input_txt"> <input type="checkbox" value="Negative for Osteopathology" name="negative_1">  Negative for recent fracture, dislocation or gross Osteopathology</td>
				                  <td></td>
				                  </tr> 
				                   	 <tr class="row2">
				             
				                 <td class="input_txt" align="left"> Positive for recent fracture, dislocation or gross Osteopathology<input type="text"  class="input_txtbx1"  id="posi"onkeypress="return validate1(event,id)"; value=""name="positive_for"  /> 
				                 		<input type="text" class="input_txtbx1" style="visibility:hidden" id="positive1"  name="positive_text1" /><br>
				                 		<span id="positive1error" style="color:red"></span>
				                 </td>
	 <script type="text/javascript">
	function validate2(id)
       {
		
    	   var regex = /^[A-Za-z0-9 ]*$/;
    	   var alpha = /^[A-Za-z ]*$/;
    	   if(document.getElementById("break_georges").checked)
   		   {
   	   if(document.getElementById("break1").value == "")
     	   {
     	  
     	  // document.getElementById("break1eror").innerHTML="Required Field should not be blank";
     	 //  return false;
     	   }
   	   else if(document.getElementById("break1").value.charAt(0) == " ")
     	   {
     	  
     	   document.getElementById("break1eror").innerHTML="Initial space not allowed";
     	   return false;
     	   }
   	   else if(document.getElementById("break1").value.match(regex))
   		   {
   		if((document.getElementById("break1").value.length < 4 ) || (document.getElementById("break1").value.length > 45 ))
			{
			  document.getElementById("break1eror").innerHTML="Required Field should be 4 to 45";
   	   return false;
			}
			else{
				 document.getElementById("break1eror").innerHTML="";
			}
   		   
   		  
   		   }
   	   else
   		   {
   		   document.getElementById("break1eror").innerHTML="Required Field should be Alpha-Numeric";
         	   return false;
   		   }
   	   
   		   }
   	   else{
   		   document.getElementById("break1eror").innerHTML="";
   	   }
       }
	function validate3(id)
    {
		
 	   
 	   var alpha = /^[A-Za-z ]*$/;
    	   
    	   
 	  if(document.getElementById("narrowed_1").checked)
		   {
	   if(document.getElementById("narrowed1").value == "")
	   {
	  
	   //document.getElementById("narrowed1eror").innerHTML="Required Field should not be blank";
	  // return false;
	   }
	   else if(document.getElementById("narrowed1").value.charAt(0) == " ")
	   {
	  
	   document.getElementById("narrowed1eror").innerHTML="Initial space not allowed";
	   return false;
	   }
	   else if(document.getElementById("narrowed1").value.match(alpha))
		   {
		if((document.getElementById("narrowed1").value.length < 4 ) || (document.getElementById("narrowed1").value.length > 45 ))
	{
	  document.getElementById("narrowed1eror").innerHTML="Required Field should be 4 to 45";
  return false;
	}
	else{
		 document.getElementById("narrowed1eror").innerHTML="";
	}
		  
		   }
	   else
		   {
		   document.getElementById("narrowed1eror").innerHTML="Required Field should be Alphabates";
    	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("narrowed1eror").innerHTML="";
	   }
    	   
    }  
	function validate4(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
 	  if(document.getElementById("anterior_12").checked)
	   {
		  
	   if(document.getElementById("anterior1").value == "")
   		{
  
 		//  document.getElementById("anterior2err").innerHTML="Required Field should not be blank";
  		// return false;
   		}
  		else if(document.getElementById("anterior1").value.charAt(0) == " ")
   		{
  
   			document.getElementById("anterior2err").innerHTML="Initial space not allowed";
   			return false;
   		}
  		else if(document.getElementById("anterior1").value.match(alpha))
	   {
  			if((document.getElementById("anterior1").value.length < 4 ) || (document.getElementById("anterior1").value.length > 45 ))
			{
			  document.getElementById("anterior2err").innerHTML="Required Field should be 4 to 45";
  	   return false;
			}
			else{
				 document.getElementById("anterior2err").innerHTML="";
			}
	  
	   }
  		else
	   {
	   document.getElementById("anterior2err").innerHTML="Required Field should be Alphabates";
	   return false;
	   }
  
	   }
  		else{
		   document.getElementById("anterior2err").innerHTML="";
	  }
	   
     }
	
	function validate5(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
 	  if(document.getElementById("schmorls_1").checked)
	   {
		 
	   if(document.getElementById("schmorls1").value == "")
   		{
  
 		 // document.getElementById("schmorls11").innerHTML="Required Field should not be blank";
  		 //return false;
   		}
  		else if(document.getElementById("schmorls1").value.charAt(0) == " ")
   		{
  			
   			document.getElementById("schmorls11").innerHTML="Initial space not allowed";
   			return false;
   		}
  		else if(document.getElementById("schmorls1").value.match(alpha))
	   {
  			if((document.getElementById("schmorls1").value.length < 4 ) || (document.getElementById("schmorls1").value.length > 45 ))
			{
			  document.getElementById("schmorls11").innerHTML="Required Field should be 4 to 45";
  	   return false;
			}
			else{
				document.getElementById("schmorls11").innerHTML="";
			}
	   
	   }
  		else
	   {
	   document.getElementById("schmorls11").innerHTML="Required Field should be Alphabates";
	   return false;
	   }
  
	   }
  else{
	   document.getElementById("schmorls11").innerHTML="";
  }
	   
       }
	
	function validate6(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   

   	   if(document.getElementById("subchondral_1").checked)
		   {
   		  
		   if(document.getElementById("subchondral1").value == "")
 	   		{
 	  
 	 		//  document.getElementById("subchondral11").innerHTML="Required Field should not be blank";
 	  		// return false;
 	   		}
	   		else if(document.getElementById("subchondral1").value.charAt(0) == " ")
 	   		{
 	  
 	   			document.getElementById("subchondral11").innerHTML="Initial space not allowed";
 	   			return false;
 	   		}
	   		else if(document.getElementById("subchondral1").value.match(alpha))
		   {
	   			if((document.getElementById("subchondral1").value.length < 4 ) || (document.getElementById("subchondral1").value.length > 45 ))
				{
				  document.getElementById("subchondral11").innerHTML="Required Field should be 4 to 45";
	   	   return false;
				}
				else{
					 document.getElementById("subchondral11").innerHTML="";
				}
		  
		   }
	   		else
		   {
		   document.getElementById("subchondral11").innerHTML="Required Field should be Alphabates";
     	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("subchondral11").innerHTML="";
	   }
	   
       }
	
	
	function validate7(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
 	  if(document.getElementById("apexat_1").checked)
	   {
		  
	   if(document.getElementById("apexat1").value == "")
   		{
  
 		 // document.getElementById("apexat1error").innerHTML="Required Field should not be blank";
  		// return false;
   		}
  		else if(document.getElementById("apexat1").value.charAt(0) == " ")
   		{
  
   			document.getElementById("apexat1error").innerHTML="Initial space not allowed";
   			return false;
   		}
  		else if(document.getElementById("apexat1").value.match(alpha))
	   {
  			if((document.getElementById("apexat1").value.length < 4 ) || (document.getElementById("apexat1").value.length > 45 ))
			{
			  document.getElementById("apexat1error").innerHTML="Required Field should be 4 to 45";
  	   return false;
			}
			else{
				document.getElementById("apexat1error").innerHTML="";
			}
	   
	   }
  		else
	   {
	   document.getElementById("apexat1error").innerHTML="Required Field should be Alphabates";
	   return false;
	   }
  
	   }
  else{
	   document.getElementById("apexat1error").innerHTML="";
  }
	   
       }
	function validate8(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
 	  if(document.getElementById("softtissueedemaof_1").checked)
	   {
		  
	   if(document.getElementById("softtissueedemaof1").value == "")
   		{
  
 		 // document.getElementById("softtissueedemaof1error").innerHTML="Required Field should not be blank";
  		// return false;
   		}
  		else if(document.getElementById("softtissueedemaof1").value.charAt(0) == " ")
   		{
  
   			document.getElementById("softtissueedemaof1error").innerHTML="Initial space not allowed";
   			return false;
   		}
  		else if(document.getElementById("softtissueedemaof1").value.match(alpha))
	   {
  			if((document.getElementById("softtissueedemaof1").value.length < 4 ) || (document.getElementById("softtissueedemaof1").value.length > 45 ))
			{
			  document.getElementById("softtissueedemaof1error").innerHTML="Required Field should be 4 to 45";
  	 		  return false;
			}
			else{
				document.getElementById("softtissueedemaof1error").innerHTML="";
			}
	   
	   }
  		else
	   {
	   document.getElementById("softtissueedemaof1error").innerHTML="Required Field should be Alphabates";
	   return false;
	   }
  
	   }
  else{
	   document.getElementById("softtissueedemaof1error").innerHTML="";
  }
  
	   
       }
	
	function validate9(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
 	  if(document.getElementById("other_1").checked)
	   {
		  
	   if(document.getElementById("other1").value == "")
   		{
  
 		//  document.getElementById("other1error").innerHTML="Required Field should not be blank";
  		// return false;
   		}
  		else if(document.getElementById("other1").value.charAt(0) == " ")
   		{
  
   			document.getElementById("other1error").innerHTML="Initial space not allowed";
   			return false;
   		}
  		else if(document.getElementById("other1").value.match(alpha))
	   {
  			if((document.getElementById("other1").value.length < 4 ) || (document.getElementById("other1").value.length > 45 ))
			{
			  document.getElementById("other1error").innerHTML="Required Field should be 4 to 45";
  	  			 return false;
			}
			else{
				document.getElementById("other1error").innerHTML="";
			}
	   
	   }
  		else
	   {
	   document.getElementById("other1error").innerHTML="Required Field should be Alphabates";
	   return false;
	   }
  
	   }
  else{
	   document.getElementById("other1error").innerHTML="";
  }
  
	   
       }
	
	function validate10(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
    	   if(document.getElementById("degenerative_2").checked)
		   {
    		  
		   if(document.getElementById("degenerative2").value == "")
  	   		{
  	  
  	 		//  document.getElementById("degenerative2error").innerHTML="Required Field should not be blank";
  	  		// return false;
  	   		}
	   		else if(document.getElementById("degenerative2").value.charAt(0) == " ")
  	   		{
  	  
  	   			document.getElementById("degenerative2error").innerHTML="Initial space not allowed";
  	   			return false;
  	   		}
	   		else if(document.getElementById("degenerative2").value.match(alpha))
		   {
	   			if((document.getElementById("degenerative2").value.length < 4 ) || (document.getElementById("degenerative2").value.length > 45 ))
	   			{
	   			  document.getElementById("degenerative2error").innerHTML="Required Field should be 4 to 45";
	         	   return false;
	   			}
	   			else{
		 			  document.getElementById("degenerative2error").innerHTML="";
	   			}
		   }
	   		else
		   {
		   document.getElementById("degenerative2error").innerHTML="Required Field should be Alphabates";
      	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("degenerative2error").innerHTML="";
	   }
	   
       }
	
	
	function validate11(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
    	   if(document.getElementById("narrowed_2").checked)
		   {
    		  
		   if(document.getElementById("narrowed2").value == "")
  	   		{
  	  
  	 		//  document.getElementById("narrowed2error").innerHTML="Required Field should not be blank";
  	  		 //return false;
  	   		}
	   		else if(document.getElementById("narrowed2").value.charAt(0) == " ")
  	   		{
  	  
  	   			document.getElementById("narrowed2error").innerHTML="Initial space not allowed";
  	   			return false;
  	   		}
	   		else if(document.getElementById("narrowed2").value.match(alpha))
		   {
	   			if((document.getElementById("narrowed2").value.length < 4 ) || (document.getElementById("narrowed2").value.length > 45 ))
	   			{
	   			  document.getElementById("narrowed2error").innerHTML="Required Field should be 4 to 45";
	         	   return false;
	   			}
	   			else{
		 			  document.getElementById("narrowed2error").innerHTML="";
	   			}
		   }
	   		else
		   {
		   document.getElementById("narrowed2error").innerHTML="Required Field should be Alphabates";
      	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("narrowed2error").innerHTML="";
	   }
	   
       }

	function validate12(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
    	   if(document.getElementById("schmorlsnodesat_2").checked)
		   {
    		  
		   if(document.getElementById("schmorlsnodesat2").value == "")
  	   		{
  	  
  	 		//  document.getElementById("schmorlsnodesat2error").innerHTML="Required Field should not be blank";
  	  		// return false;
  	   		}
	   		else if(document.getElementById("schmorlsnodesat2").value.charAt(0) == " ")
  	   		{
  	  
  	   			document.getElementById("schmorlsnodesat2error").innerHTML="Initial space not allowed";
  	   			return false;
  	   		}
	   		else if(document.getElementById("schmorlsnodesat2").value.match(alpha))
		   {
	   			if((document.getElementById("schmorlsnodesat2").value.length < 4 ) || (document.getElementById("schmorlsnodesat2").value.length > 45 ))
	   			{
	   			  document.getElementById("schmorlsnodesat2error").innerHTML="Required Field should be 4 to 45";
	         	   return false;
	   			}
	   			else{
		 			  document.getElementById("schmorlsnodesat2error").innerHTML="";
	   			}
		   }
	   		else
		   {
		   document.getElementById("schmorlsnodesat2error").innerHTML="Required Field should be Alphabates";
      	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("schmorlsnodesat2error").innerHTML="";
	   }
	   
       }
	function validate13(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
    	   if(document.getElementById("anterior_2").checked)
		   {
    		  
		   if(document.getElementById("anterior2").value == "")
  	   		{
  	  
  	 		 // document.getElementById("anterior2error").innerHTML="Required Field should not be blank";
  	  		// return false;
  	   		}
	   		else if(document.getElementById("anterior2").value.charAt(0) == " ")
  	   		{
  	  
  	   			document.getElementById("anterior2error").innerHTML="Initial space not allowed";
  	   			return false;
  	   		}
	   		else if(document.getElementById("anterior2").value.match(alpha))
		   {
	   			if((document.getElementById("anterior2").value.length < 4 ) || (document.getElementById("anterior2").value.length > 45 ))
	   			{
	   			  document.getElementById("anterior2error").innerHTML="Required Field should be 4 to 45";
	         	   return false;
	   			}
	   			else{
		 			  document.getElementById("anterior2error").innerHTML="";
	   			}
		   }
	   		else
		   {
		   document.getElementById("anterior2error").innerHTML="Required Field should be Alphabates";
      	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("anterior2error").innerHTML="";
	   }
	   
       }
	
	function validate14(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
    	   if(document.getElementById("subchondral_2").checked)
		   {
    		  
		   if(document.getElementById("subchondral2").value == "")
  	   		{
  	  
  	 		//  document.getElementById("subchondral2error").innerHTML="Required Field should not be blank";
  	  	//	 return false;
  	   		}
	   		else if(document.getElementById("subchondral2").value.charAt(0) == " ")
  	   		{
  	  
  	   			document.getElementById("subchondral2error").innerHTML="Initial space not allowed";
  	   			return false;
  	   		}
	   		else if(document.getElementById("subchondral2").value.match(alpha))
		   {
	   			if((document.getElementById("subchondral2").value.length < 4 ) || (document.getElementById("subchondral2").value.length > 45 ))
	   			{
	   			  document.getElementById("subchondral2error").innerHTML="Required Field should be 4 to 45";
	         	   return false;
	   			}
	   			else{
		 			  document.getElementById("subchondral2error").innerHTML="";
	   			}
		   }
	   		else
		   {
		   document.getElementById("subchondral2error").innerHTML="Required Field should be Alphabates";
      	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("subchondral2error").innerHTML="";
	   }
	   
       }
	
	function validate15(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
    	   if(document.getElementById("foraminal_2").checked)
		   {
    		  
		   if(document.getElementById("foraminal2").value == "")
  	   		{
  	  
  	 		//  document.getElementById("foraminal2error").innerHTML="Required Field should not be blank";
  	  		// return false;
  	   		}
	   		else if(document.getElementById("foraminal2").value.charAt(0) == " ")
  	   		{
  	  
  	   			document.getElementById("foraminal2error").innerHTML="Initial space not allowed";
  	   			return false;
  	   		}
	   		else if(document.getElementById("foraminal2").value.match(alpha))
		   {
	   			if((document.getElementById("foraminal2").value.length < 4 ) || (document.getElementById("foraminal2").value.length > 45 ))
	   			{
	   			  document.getElementById("foraminal2error").innerHTML="Required Field should be 4 to 45";
	         	   return false;
	   			}
	   			else{
		 			  document.getElementById("foraminal2error").innerHTML="";
	   			}
		   }
	   		else
		   {
		   document.getElementById("foraminal2error").innerHTML="Required Field should be Alphabates";
      	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("foraminal2error").innerHTML="";
	   }
	   
       }
	
	function validate16(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
    	   if(document.getElementById("apexat_2").checked)
		   {
    		  
		   if(document.getElementById("apexat2").value == "")
  	   		{
  	  
  	 		//  document.getElementById("apexat2error").innerHTML="Required Field should not be blank";
  	  		// return false;
  	   		}
	   		else if(document.getElementById("apexat2").value.charAt(0) == " ")
  	   		{
  	  
  	   			document.getElementById("apexat2error").innerHTML="Initial space not allowed";
  	   			return false;
  	   		}
	   		else if(document.getElementById("apexat2").value.match(alpha))
		   {
	   			if((document.getElementById("apexat2").value.length < 4 ) || (document.getElementById("apexat2").value.length > 45 ))
	   			{
	   			  document.getElementById("apexat2error").innerHTML="Required Field should be 4 to 45";
	         	   return false;
	   			}
	   			else{
		 			  document.getElementById("apexat2error").innerHTML="";
	   			}
		   }
	   		else
		   {
		   document.getElementById("apexat2error").innerHTML="Required Field should be Alphabates";
      	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("apexat2error").innerHTML="";
	   }
	   
       }
	
	
	function validate17(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
    	   if(document.getElementById("softtissueedemaof_2").checked)
		   {
    		  
		   if(document.getElementById("softtissueedemaof2").value == "")
  	   		{
  	  
  	 		// document.getElementById("softtissueedemaof2error").innerHTML="Required Field should not be blank";
  	  		// return false;
  	   		}
	   		else if(document.getElementById("softtissueedemaof2").value.charAt(0) == " ")
  	   		{
  	  
  	   			document.getElementById("softtissueedemaof2error").innerHTML="Initial space not allowed";
  	   			return false;
  	   		}
	   		else if(document.getElementById("softtissueedemaof2").value.match(alpha))
		   {
	   			if((document.getElementById("softtissueedemaof2").value.length < 4 ) || (document.getElementById("softtissueedemaof2").value.length > 45 ))
	   			{
	   			  document.getElementById("softtissueedemaof2error").innerHTML="Required Field should be 4 to 45";
	         	   return false;
	   			}
	   			else{
		 			  document.getElementById("softtissueedemaof2error").innerHTML="";
	   			}
		   }
	   		else
		   {
		   document.getElementById("softtissueedemaof2error").innerHTML="Required Field should be Alphabates";
      	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("softtissueedemaof2error").innerHTML="";
	   }
	   
       }
	function validate18(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
    	   if(document.getElementById("other_2").checked)
		   {
    		  
		   if(document.getElementById("other2").value == "")
  	   		{
  	  
  	 		//  document.getElementById("other2error").innerHTML="Required Field should not be blank";
  	  		// return false;
  	   		}
	   		else if(document.getElementById("other2").value.charAt(0) == " ")
  	   		{
  	  
  	   			document.getElementById("other2error").innerHTML="Initial space not allowed";
  	   			return false;
  	   		}
	   		else if(document.getElementById("other2").value.match(alpha))
		   {
	   			if((document.getElementById("other2").value.length < 4 ) || (document.getElementById("other2").value.length > 45 ))
	   			{
	   			  document.getElementById("other2error").innerHTML="Required Field should be 4 to 45";
	         	   return false;
	   			}
	   			else{
		 			  document.getElementById("other2error").innerHTML="";
	   			}
		   }
	   		else
		   {
		   document.getElementById("other2error").innerHTML="Required Field should be Alphabates";
      	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("other2error").innerHTML="";
	   }
	   
       }
	
	function validate19(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
    	   if(document.getElementById("break_3").checked)
		   {
    		  
		   if(document.getElementById("break3").value == "")
  	   		{
  	  
  	 		 // document.getElementById("break3error").innerHTML="Required Field should not be blank";
  	  		// return false;
  	   		}
	   		else if(document.getElementById("break3").value.charAt(0) == " ")
  	   		{
  	  
  	   			document.getElementById("break3error").innerHTML="Initial space not allowed";
  	   			return false;
  	   		}
	   		else if(document.getElementById("break3").value.match(alpha))
		   {
	   			if((document.getElementById("break3").value.length < 4 ) || (document.getElementById("break3").value.length > 45 ))
	   			{
	   			  document.getElementById("break3error").innerHTML="Required Field should be 4 to 45";
	         	   return false;
	   			}
	   			else{
		 			  document.getElementById("break3error").innerHTML="";
	   			}
		   }
	   		else
		   {
		   document.getElementById("break3error").innerHTML="Required Field should be Alphabates";
      	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("break3error").innerHTML="";
	   }
	   
       }
	
	function validate20(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
    	   if(document.getElementById("narrowed_3").checked)
		   {
    		  
		   if(document.getElementById("narrowed3").value == "")
  	   		{
  	  
  	 		 // document.getElementById("narrowed3error").innerHTML="Required Field should not be blank";
  	  		//return false;
  	   		}
	   		else if(document.getElementById("narrowed3").value.charAt(0) == " ")
  	   		{
  	  
  	   			document.getElementById("narrowed3error").innerHTML="Initial space not allowed";
  	   			return false;
  	   		}
	   		else if(document.getElementById("narrowed3").value.match(alpha))
		   {
	   			if((document.getElementById("narrowed3").value.length < 4 ) || (document.getElementById("narrowed3").value.length > 45 ))
	   			{
	   			  document.getElementById("narrowed3error").innerHTML="Required Field should be 4 to 45";
	         	   return false;
	   			}
	   			else{
		 			  document.getElementById("narrowed3error").innerHTML="";
	   			}
		   }
	   		else
		   {
		   document.getElementById("narrowed3error").innerHTML="Required Field should be Alphabates";
      	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("narrowed3error").innerHTML="";
	   }
	   
       }
	
	function validate21(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
    	   if(document.getElementById("subchondral_3").checked)
		   {
    		   if(document.getElementById("subchondral3").value == "")
     	   		{
     	  
     	 		 // document.getElementById("narrowed3error").innerHTML="Required Field should not be blank";
     	  		//return false;
     	   		}
    		   else  if(document.getElementById("subchondral3").value.charAt(0) == " ")
  	   		{
  	  
  	   			document.getElementById("subchondral3error").innerHTML="Initial space not allowed";
  	   			return false;
  	   		}
	   		else if(document.getElementById("subchondral3").value.match(alpha))
		   {
	   			if((document.getElementById("subchondral3").value.length < 4 ) || (document.getElementById("subchondral3").value.length > 45 ))
	   			{
	   			  document.getElementById("subchondral3error").innerHTML="Required Field should be 4 to 45";
	         	   return false;
	   			}
	   			else{
		 			  document.getElementById("subchondral3error").innerHTML="";
	   			}
		   }
	   		else
		   {
		   document.getElementById("subchondral3error").innerHTML="Required Field should be Alphabates";
      	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("subchondral3error").innerHTML="";
	   }
	   
       }
	
	function validate22(id)
    {
		
 	  
 	   var alpha = /^[A-Za-z ]*$/; 
    	   
    	   if(document.getElementById("anterior_3").checked)
		   {
    		   if(document.getElementById("anterior3").value == "")
     	   		{
     	  
     	 		 // document.getElementById("narrowed3error").innerHTML="Required Field should not be blank";
     	  		//return false;
     	   		}
    		   else  if(document.getElementById("anterior3").value.charAt(0) == " ")
  	   		{
  	  
  	   			document.getElementById("anterior3error").innerHTML="Initial space not allowed";
  	   			return false;
  	   		}
	   		else if(document.getElementById("anterior3").value.match(alpha))
		   {
	   			if((document.getElementById("anterior3").value.length < 4 ) || (document.getElementById("anterior3").value.length > 45 ))
	   			{
	   			  document.getElementById("anterior3error").innerHTML="Required Field should be 4 to 45";
	         	   return false;
	   			}
	   			else{
		 			  document.getElementById("anterior3error").innerHTML="";
	   			}
		   }
	   		else
		   {
		   document.getElementById("anterior3error").innerHTML="Required Field should be Alphabates";
      	   return false;
		   }
	   
		   }
	   else{
		   document.getElementById("anterior3error").innerHTML="";
	   }
	   
       }
    </script>
				                 <td class="input_txt"><input type="checkbox" name="break_1" id="break_georges" value="Break in Georges" onclick="validate2(id);this.form.break1.style.visibility = this.checked? 'visible' : 'hidden'"/> Break in Georges line at 
				           		        <input type="text" class="input_txtbx1" id="break1" onblur= "validate2(id);"name="break_text1" style="visibility:hidden" />
				           		        <br><span id="break1eror" style="color:red"></span>
				           		 </td>
				           		 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="adi_1" value="ADI more than 3mm"> ADI more than 3mm</td>
				           		
				                 
				                  </tr>
				                   <tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox"name="hypolorodosis_1"value="Hypolordosis"onclick="this.form.hypolordosis1.style.visibility = this.checked? 'visible' : 'hidden'"/> Hypolordosis
				                 	    <select name="hypolordosis_select1" class="input_cmbbx1" id="hypolordosis1" style="visibility:hidden">
				                 	        <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
										</select>	
				                 	 </td>
				                   
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="normalcurvature_1" value="Normal Curvature"onclick="this.form.normalcurvature1.style.visibility = this.checked? 'visible' : 'hidden'"/> Normal Curvature
				                     	<select name="normalcurvature_select1" class="input_cmbbx1" id="normalcurvature1" style="visibility:hidden">
				                 	              
						                    <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
										</select>
				                     </td>    
				                 	 
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hyperlordosis_1" value="Hyperlordosis:" onclick="this.form.hyperlordosis1.style.visibility = this.checked? 'visible' : 'hidden'"/> Hyperlordosis
				                 	 <select name="hyperlordosis_select1" class="input_cmbbx1" id="hyperlordosis1" style="visibility:hidden">
				                 	              
						                    <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
									</select>		
									</td> 
											
				                  </tr>
				                                     
				                   <tr class="row2">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="mcGregorslinenormal_1"value="McGregors line normal"> McGregor's line normal</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="mcGregorslineinterupted_1" value="McGregors line interupted"> McGregor's line interupted more than 8-M or 10-F mm</td>    
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="degenerativejointdisease_1" value="Degenerative joint disease at:" onclick="this.form.degenerativejointdisease1.style.visibility = this.checked? 'visible' : 'hidden'"/> Degenerative joint disease at:
				                 	 
				                 	 
				                 	 <select name="degenerativejointdisease_select1" class="input_cmbbx1" id="degenerativejointdisease1" style="visibility:hidden">
				                 	              
						                    <option selected="selected" value="C-2/3" >C-2/3</option>
											<option value="C-3/4">C-3/4</option>
											<option value="C-4/5">C-4/5</option>
											<option value="C-5/6">C-5/6</option>
											<option value="C-6/7">C-6/7</option>
											<option value="C-7/T-1">C-7/T-1</option>
									</select>		
									</td>               
								 <tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="mild_1" value="Mild"> Mild
				                 	 												  <input type="checkbox" name="moderate_1" value="Moderate"> Moderate
				                 	 												  <input type="checkbox" name="severe_1" value="Severe"> Severe
				                 	 </td> 
				                 	  <td class="input_txt" align="left"> <input type="checkbox" name="narrowed_1" id="narrowed_1"value="Narrowed disc space at" onclick="validate3(id);this.form.narrowed1.style.visibility = this.checked? 'visible' : 'hidden'"/> Narrowed disc space at
				                 		<input type="text" class="input_txtbx1" id="narrowed1" name="narrowed_text1" onblur="return validate3(id);" style="visibility:hidden"/>
				                 		<span id="narrowed1eror" style="color:red"></span>
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" name="anterior_1"id="anterior_12"  value="Anterior osteophytes at" onclick="validate4(id);this.form.anterior1.style.visibility = this.checked? 'visible' : 'hidden'"/> Anterior vertebral body osteophytes at
				                 		<input type="text" class="input_txtbx1" id="anterior1"  onblur="validate4(id);"name="anterior_text1" style="visibility:hidden"/>
				                 			<span id="anterior2err" style="color:red"></span>
				                 	 </td> 		
				                 </tr>
				                 <tr class="row2">
				             			 <td class="input_txt" align="left"> <input type="checkbox" name="subchondral_1" id="subchondral_1"value="Subchondral sclerosis of" onclick="validate6(id);this.form.subchondral1.style.visibility = this.checked? 'visible' : 'hidden'"/> Subchondral sclerosis of
				                 		<input type="text" class="input_txtbx1" id="subchondral1" onblur="return validate6(id);"name="subchondral_text1" style="visibility:hidden"/>
				                 		<span id="subchondral11"style="color:red"></span>
				                	 </td>
				                	 <td class="input_txt" align="left"> <input type="checkbox" name="schmorls_1"id="schmorls_1" value="Schmorls nodes at:" onclick="validate5(id);this.form.schmorls1.style.visibility = this.checked? 'visible' : 'hidden'"/> Schmorl's nodes at:
				                 		<input type="text" class="input_txtbx1" id="schmorls1" onblur="return validate5(id); "name="schmorls_text1" style="visibility:hidden"/>
				                	<span id="schmorls11" style="color:red"></span>
				                	 </td>
				                	 <td></td>
				                 </tr>
				                 <tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="foraminal_1" value="Foraminal enchroachment b/w:"onclick="this.form.foraminal1.style.visibility = this.checked? 'visible' : 'hidden'"/> Foraminal enchroachment between:
				                 	 
				                 	 
				                 	 <select name="foraminal_select1" class="input_cmbbx1" id="foraminal1"  style="visibility:hidden">
				                 	              
						                    <option selected="selected" value="C-2/3" >C-2/3</option>
											<option value="C-3/4">C-3/4</option>
											<option value="C-4/5">C-4/5</option>
											<option value="C-5/6">C-5/6</option>
											<option value="C-6/7">C-6/7</option>
											<option value="C-7/T-1">C-7/T-1</option>
									 </select>		
									</td>               
				                    <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="osteoporosis_1" value="Osteoporosis" onclick="this.form.osteoporosis1.style.visibility = this.checked? 'visible' : 'hidden'"/> Osteoporosis
				                 	 
				                 	 
				                 	 <select name="osteoporosis_select1" class="input_cmbbx1" id="osteoporosis1" style="visibility:hidden">
				                 	              
						                    <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
									</select>		
									</td> 
									 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="decreasedFlexExt_1" value="Decreased Flex/Ext:" onclick="this.form.decreasedFlexExt1.style.visibility = this.checked? 'visible' : 'hidden'"/> Decreased Flex/Ext
				                 	 
				                 	 
				                 	 <select name="decreasedFlexExt_select1" class="input_cmbbx1" id="decreasedFlexExt1" style="visibility:hidden">
				                 	              
						                    <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
									</select>		
									</td>
									
				                 </tr>
				                 <tr class="row2">		  
				                     
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="decreasedRLFlex_1" value="Decreased R/L Flex:" onclick="this.form.decreasedRLFlex1.style.visibility = this.checked? 'visible' : 'hidden'"/> Decreased R/L Flex
				                 	 
				                 	 
				                 	 <select name="decreasedRLFlex_select1" class="input_cmbbx1" id="decreasedRLFlex1" style="visibility:hidden">
				                 	              
						                    <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
									</select>		
									</td> 
									<td valign="top" align="left" class="input_txt" style="width: 533px; ">
										<select name="dextro_Levoscoliosis_towering_select1" class="input_cmbbx1">
				                 	             
						                    <option selected="selected" value="Dextro" >Dextro</option>
											<option value="Levo scoliosis">Levo scoliosis</option>
											<option value="Towering">Towering</option>
								    	  </select>
								 	  	
								    	 <input type="checkbox" name="mild_11" value="Mild"> Mild
				                    	 <input type="checkbox" name="moderate_11" value="Moderate"> Moderate   
				                 		<input type="checkbox" name="severe_11" value="Severe"> Severe
				                 		
				                 	    </td>
				                 	    <td></td>
										
									    
				                 </tr>
				                 <tr class="row1">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" name="apexat_1" id="apexat_1" value="Apex at:" onclick="validate7(id);this.form.apexat1.style.visibility = this.checked? 'visible' : 'hidden'"/> Apex at:
				                 		<input type="text" class="input_txtbx1" id="apexat1" onblur="return validate7(id);" name="apexat_text1" style="visibility:hidden"/>
				                 		<span id= "apexat1error" style="color:red"></span>
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" name="softtissueedemaof_1"id="softtissueedemaof_1" value="Soft tissue edema of" onclick="validate8(id);this.form.softtissueedemaof1.style.visibility = this.checked? 'visible' : 'hidden'"/> Soft tissue edema of
				                 		<input type="text" class="input_txtbx1" id="softtissueedemaof1" onblur="return validate8(id);"name="softtissueedemaof_text1" style="visibility:hidden"/>
				                 		<span id="softtissueedemaof1error" style="color:red"></span>
				                 	 </td>
				                  	 <td class="input_txt" align="left"> <input type="checkbox" id="other_1"name="other_1" value="Other" onclick="validate9(id);this.form.other1.style.visibility = this.checked? 'visible' : 'hidden'"/> Other
				                 		<input type="text" class="input_txtbx1" id="other1"onblur="return validate9(id);" name="other_text1" style="visibility:hidden"/>
				                 		<span id="other1error" style="color:red"></span>
				                	 </td>
				                 </tr>
				                 
				                 
				                 
				                 
				                 
				                 
				                 
				              </table>
				          </td>
				      </tr>
			 	</table>
	    	</div>
	    	  </div>
	 	</td>
	</tr>
  </table>
 </div>
 </div>
 
 
 
  <div id="tabs-2">
    <div id="right_content">
				                
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>THORACIC SPINE</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0">
				               <tr class="row1">
				                   <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Views:
				                  		<select name="views2" class="input_cmbbx1">
											<option selected="selected" value="A-P" >A-P</option>
								
											<option value="rlf">RLF</option>
											<option value="llf">LLF</option>
											<option value="rpo">RPO</option>
											<option value="lpo">LPO</option>
											<option value="P-A Chest">P-A Chest</option>
											<option value="Lateral Chest">Lateral Chest</option>
				                   		 </select>
				                   	</td>
				                   	<td valign="top" align="left" class="input_txt"> <input type="checkbox" name="negative_2" value="Negative for Osteopathology">  Negative for recent fracture, dislocation or gross Osteopathology</td>
				                 <td></td>
				                  </tr>
				                  <tr class="row2">
				                   <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hyperkyphosis_2" value="Hyperkyphosis" onclick="this.form.hyperkyphosis2.style.visibility = this.checked? 'visible' : 'hidden'"/> Hyperkyphosis
				                    						<select name="hyperkyphosis_select2" class="input_cmbbx1" id="hyperkyphosis2" style="visibility:hidden">
				                 	        <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
										</select>	
									</td>	
				                   	<td valign="top" align="left" class="input_txt"> <input type="checkbox" name="normalkyphosis_2" value="Normal kyphosis" onclick="this.form.normalkyphosis2.style.visibility = this.checked? 'visible' : 'hidden'"/> Normal kyphosis 
				                   						<select name="normalkyphosis_select2" class="input_cmbbx1" id="normalkyphosis2" style="visibility:hidden">
				                 	        <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
										</select>	
									</td>
									<td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hypokyphosis_2" value="Hypokyphosis" onclick="this.form.hypokyphosis2.style.visibility = this.checked? 'visible' : 'hidden'"/> Hypokyphosis
				                 	<select name="hypokyphosis_select2" class="input_cmbbx1" id="hypokyphosis2" style="visibility:hidden">
				                 	        <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
										</select>	
				                   </td> 
				                   </tr>
				                   <tr class="row1"> 	
				                  <td class="input_txt" align="left"> <input type="checkbox" name="degenerative_2" id="degenerative_2" value="Degenerative joint disease at:" onclick="validate10(id);this.form.degenerative2.style.visibility = this.checked? 'visible' : 'hidden'"/> Degenerative joint disease at:
				                 		<input type="text" class="input_txtbx1" id="degenerative2" onblur="return validate10(id);"name="degenerative_text2" style="visibility:hidden"/>
				                 		<span id="degenerative2error" style="color:red"></span>
				                	 </td>
				                	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="mild_2" value="Mild"> Mild
				                    													 <input type="checkbox" name="moderate_2" value="Moderate"> Moderate   
				                 														 <input type="checkbox" name="severe_2" value="Severe"> Severe
				                 	    </td>	
				                   </tr>
				                    <tr class="row2">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" name="narrowed_2"id="narrowed_2" value="Narrowed disc space at:" onclick="validate11(id);this.form.narrowed2.style.visibility = this.checked? 'visible' : 'hidden'"/> Narrowed disc space at:
				                 		<input type="text" class="input_txtbx1" id="narrowed2" onblur="return validate11(id);" name="narrowed_text2" style="visibility:hidden" />
				                 		<span id="narrowed2error"style="color:red"> </span>
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" id="schmorlsnodesat_2" name="schmorlsnodesat_2" value="Schmorls nodes at:" onclick="validate12(id);this.form.schmorlsnodesat2.style.visibility = this.checked? 'visible' : 'hidden'"/> Schmorl's nodes at:
				                 		<input type="text" class="input_txtbx1" onblur="return validate12(id);"id="schmorlsnodesat2" name="schmorlsnodesat_text2" style="visibility:hidden" />
				                 		<span id="schmorlsnodesat2error" style="color:red"></span>
				                 	 </td>
				                 	 <td></td>
				                    </tr>	 
				                 	 <tr class="row1">
				             			<td class="input_txt" align="left"> <input type="checkbox" id="anterior_2" name="anterior_2"value="Anterior body osteophytes at:" onclick="validate13(id);this.form.anterior2.style.visibility = this.checked? 'visible' : 'hidden'"/> Anterior vertebral body osteophytes at:
				                 																																			
				                 			<input type="text" class="input_txtbx1" id="anterior2" onblur="return validate13(id);" name="anterior_text2" style="visibility:hidden" />
				                 			<span id="anterior2error" style="color:red"></span>
				                 		
				                		 </td>
				               	    	 <td class="input_txt" align="left"> <input type="checkbox" name="subchondral_2"id="subchondral_2" value="Subchondral sclerosis of" onclick="validate14(id);this.form.subchondral2.style.visibility = this.checked? 'visible' : 'hidden'"/> Subchondral sclerosis of
				                 			<input type="text" class="input_txtbx1" id="subchondral2"onblur="return validate14(id);" name="subchondral_text2" style="visibility:hidden"/>
				                 			<span id="subchondral2error" style="color:red"></span>
				                 	 	</td>
				                 	 	<td class="input_txt" align="left"> <input type="checkbox" id="foraminal_2"name="foraminal_2" value="Foraminal enchroachment b/w:" onclick="validate15(id);this.form.foraminal2.style.visibility = this.checked? 'visible' : 'hidden'"/> Foraminal enchroachment between:
				                 		<input type="text" class="input_txtbx1" id="foraminal2" onblur="return validate15(id);" name="foraminal_text2" style="visibility:hidden"/>
				                 		<span id="foraminal2error" style="color:red"></span>
				                	 </td>
				                 	</tr>
				                 	<tr class="row1">
				             			<td valign="top" align="left" class="input_txt"> <input type="checkbox" name="osteoporosis_2" value="Osteoporosis" onclick="this.form.osteoporosis2.style.visibility = this.checked? 'visible' : 'hidden'"/> Osteoporosis
				                 	 		<select name="osteoporosis_select2" class="input_cmbbx1" style="visibility:hidden" id="osteoporosis2">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
											</select>		
										</td> 
										<td valign="top" align="left" class="input_txt" >
										<select name="dextro_Levoscoliosis_towering_select2" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="Dextro" >Dextro</option>
											<option value="Levo scoliosis">Levo scoliosis</option>
											<option value="Towering">Towering</option>
								    	  </select>
								 	  
								    	 <input type="checkbox" name="mild_22" value="Mild"> Mild
				                    	 <input type="checkbox" name="moderate_22" value="Moderate"> Moderate   
				                 		<input type="checkbox" name="severe_22" value="Severe"> Severe
				                 	    </td>
				                </tr>
				                <tr class="row2">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" id="apexat_2"name="apexat_2" value="Apex at:" onclick="validate16(id);this.form.apexat2.style.visibility = this.checked? 'visible' : 'hidden'"/> Apex at:
				                 		<input type="text" class="input_txtbx1" id="apexat2" onblur="return validate16(id);"name="apexat_text2" style="visibility:hidden"/>
				                 		<span id="apexat2error" style="color:red"></span>
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" name="softtissueedemaof_2" id="softtissueedemaof_2"value="Soft tissue edema of" onclick="validate17(id);this.form.softtissueedemaof2.style.visibility = this.checked? 'visible' : 'hidden'"/> Soft tissue edema of
				                 		<input type="text" class="input_txtbx1" id="softtissueedemaof2"onblur="return validate17(id);" name="softtissueedemaof_text2" style="visibility:hidden"/>
				                 		<span id="softtissueedemaof2error" style="color:red"></span>
				                 	 </td>
				                  	 <td class="input_txt" align="left"> <input type="checkbox" name="other_2" id="other_2"value="Other" onclick="validate18(id);this.form.other2.style.visibility = this.checked? 'visible' : 'hidden'"/> Other
				                 		<input type="text" class="input_txtbx1" id="other2"onblur="return validate18(id);" name="other_text2" style="visibility:hidden" />
				                 			<span id="other2error" style="color:red"></span>
				                	 </td>
				                 </tr>
				                 </table>	
				               </td>
				             </tr>
				           </table>
				        </div> 
				      </td>
				    </tr> 
				  </table>
				</div> 
			</div>
			  					<div id="tabs-3">
				                 
				                 <div id="right_content">
				                
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>LUMBAR SPINE</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0">
				               <tr class="row1">
				              
				                <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Views:
				                  		<select name="views3" class="input_cmbbx1">
											<option selected="selected" value="A-P" >A-P</option>
											
											<option value="RPO">RPO</option>
											<option value="LPO">LPO</option>
											<option value="RLF">RLF</option>
											<option value="LLF">LLF</option>
				                   		 </select>
				                   	</td>
				                   	<td valign="top" align="left" class="input_txt"> <input type="checkbox" name="negative_3" value="Negative for recent fracture">  Negative for recent fracture, dislocation or gross Osteopathology</td>
				                  	 <td class="input_txt"><input type="checkbox" name="break_3" id="break_3"value="Break Georges at" onclick="validate19(id);this.form.break3.style.visibility = this.checked? 'visible' : 'hidden'"/> Break in Georges line at 
				           		        <input type="text" class="input_txtbx1" id="break3" onblur="return validate19(id);"name="break_text3" style="visibility:hidden" />
				           		        <span id="break3error" style="color:red"></span>
				           		 	 </td>
				                  <td></td>
				                  </tr>
				                  <tr class="row2">
				                  	
				           		 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="osteoporosis_3" value="Osteoporosis" onclick="this.form.osteoporosis3.style.visibility = this.checked? 'visible' : 'hidden'"/> Osteoporosis
				                 	 		<select name="osteoporosis_select3" class="input_cmbbx1" style="visibility:hidden" id="osteoporosis3">
				                 	              
						                    <option selected="selected" value="mild" >Mild</option>
											<option value="moderate">Moderate</option>
											<option value="severe">Severe</option>
											</select>		
										</td>
										 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hyperkyphosis_3" value="Hyperkyphosis"onclick="this.form.hyperkyphosis3.style.visibility = this.checked? 'visible' : 'hidden'"/> Hyperkyphosis
				                    		<select name="hyperkyphosis_select3" class="input_cmbbx1" id="hyperkyphosis3" style="visibility:hidden">
				                 	        <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
										</select>	
									</td>	 
				                   		 <td valign="top" align="left" class="input_txt"><input type="checkbox" name="normalkyphosis_3" value="Normal kyphosis"onclick="this.form.normalkyphosis3.style.visibility = this.checked? 'visible' : 'hidden'"/> Normal kyphosis 
				                   		<select name="normalkyphosis_select3" class="input_cmbbx1" id="normalkyphosis3" style="visibility:hidden">
				                 	        <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
										</select>	
									</td>	 
				                    <td valign="top" align="left" class="input_txt"><input type="checkbox" name="hypokyphosis_3" value="Hypokyphosis" onclick="this.form.hypokyphosis3.style.visibility = this.checked? 'visible' : 'hidden'"/> Hypokyphosis
				                   		<select name="hypokyphosos_select_3" class="input_cmbbx1" style="visibility:hidden" id="hypokyphosis3">
				                 	              
						                    <option selected="selected" value="Mild" >Mild</option>
											<option value="Moderate">Moderate</option>
											<option value="Severe">Severe</option>
											</select>		
				                   		</td>   
				                  </tr>
				                  <tr class="row1">
				                  	 <td class="input_txt" align="left"> <input type="checkbox" name="degenerative_3" value="Degenerative joint disease at:" onclick="this.form.degenerative3.style.visibility = this.checked? 'visible' : 'hidden'"/> Degenerative joint disease at: 
				                	 
				                  		<select name="degenerative_select3" class="input_cmbbx1" style="visibility:hidden" id="degenerative3">
											<option selected="selected" value="L-1/2" >L-1/2</option>
											<option value="L-2/3">L-2/3</option>
											<option value="L-3/4">L-3/4</option>
											<option value="L-4/5">L-4/5</option>
											<option value="L-5/S-1">L-5/ S-1</option>
				                   		 </select>
				                   		  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="mild_3" value="Mild"> Mild
				                 	 												  <input type="checkbox" name="moderate_3" value="Moderate"> Moderate
				                 	 												  <input type="checkbox" name="severe_3" value="Severe"> Severe
				                 	 </td> 
				                 	  <td class="input_txt" align="left"> <input type="checkbox" name="narrowed_3"id="narrowed_3" value="Narrowed disc space at" onclick="validate20(id);this.form.narrowed3.style.visibility = this.checked? 'visible' : 'hidden'"/> Narrowed disc space at:
				                 		<input type="text" class="input_txtbx1" id="narrowed3" onblur="return validate20(id);"name="narrowed_text3" style="visibility:hidden" />
				                 		<span id="narrowed3error" style="color:red"></span>
				                	 </td>
				                	 </tr>
				                	 <tr class="row2">
				               	     <td class="input_txt" align="left"> <input type="checkbox" name="anterior_3" id="anterior_3"value="Anterior osteophytes at" onclick="validate22(id);this.form.anterior3.style.visibility = this.checked? 'visible' : 'hidden'"/> Anterior vertebral body osteophytes at:
				                 		<input type="text" class="input_txtbx1" id="anterior3" onblur="return validate22(id);"name="anterior_text3" style="visibility:hidden"/>
				                 		<span id="anterior3error" style="color:red"></span>
				                 	 </td> 	
				                 	  <td class="input_txt" align="left"> <input type="checkbox" name="subchondral_3"id="subchondral_3" value="Subchondral sclerosis of" onclick="validate21(id);this.form.subchondral3.style.visibility = this.checked? 'visible' : 'hidden'"/> Subchondral sclerosis of
				                 		<input type="text" class="input_txtbx1" id="subchondral3" onblur="return validate21(id);"name="subchondral_text3" style="visibility:hidden"/>
				                 		<span id="subchondral3error" style="color:red"></span>
				                	 </td>
				                 	  <td class="input_txt" align="left"> <input type="checkbox" name="schmorls_3" value="Schmorls nodes at:" onclick="this.form.schmorls3.style.visibility = this.checked? 'visible' : 'hidden'"/> Schmorl's nodes at:
				                 		<input type="text" class="input_txtbx1" id="schmorls3" name="schmorls_text3" style="visibility:hidden"/>
				                	 </td>
				                	 <td></td>
				                 	 </tr>
				                 	  <tr class="row1">
				                  	 <td class="input_txt" align="left"> <input type="checkbox" name="spondylolisthesisof_3" value="Spondylolisthesis of" onclick="this.form.spondylolisthesisof3.style.visibility = this.checked? 'visible' : 'hidden'"/> Spondylolisthesis of 
				                	 
				                  		<select name="spondylolisthesisof_select3" class="input_cmbbx1" style="visibility:hidden" id="spondylolisthesisof3">
											<option selected="selected" value="L-4" >L-4</option>
											<option value="L-5">L-5</option>
										</select>
									</td>
									 <td valign="middle" align="left" class="input_txt">Other:
				           		        <input type="text" class="input_txtbx1" id="inp_id" name="other_text3"/>
				           		 	 </td>
				           		 	 <td valign="middle" align="left" class="input_txt">Grade:
				           		 	 	<select name="grade_3" class="input_cmbbx1">
											<option selected="selected" value="I" >I</option>
											<option  value="II" >II</option>
											<option  value="III" >III</option>
											<option  value="IV" >IV</option>
										</select>
									</td>
											
									</tr>
	
									 <tr class="row2">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="decreasedRLF_3" value="Decreased RLF"> Decreased RLF</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="decreasedLLF_3" value="Decreased LLF"> Decreased LLF</td>    
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="facettropism_3" value="Facet tropism"> Facet tropism</td> 		
									<td></td>
									</tr>
									<tr class="row1">
				                 	 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="sacralization_3" value="Sacralization"> Sacralization</td>
				                     <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lumbarization_3" value="Lumbarization"> Lumbarization</td>    
				                 	 <td valign="top" align="left" class="input_txt" style="width: 458px; ">
										<select name="dextro_Levoscoliosis_towering_select3" class="input_cmbbx1">
				                 	              
						                    <option selected="selected" value="Dextro" >Dextro</option>
											<option value="Levo scoliosis">Levo scoliosis</option>
											<option value="Towering">Towering</option>
								    	  </select>
								 	  
								    	 <input type="checkbox" name="mild_33" value="Mild"> Mild
				                    	 <input type="checkbox" name="moderate_33" value="Moderate"> Moderate   
				                 		<input type="checkbox" name="severe_33" value="Severe"> Severe
				                 	    </td>		
									</tr>
									 <tr class="row2">
				             
				                	 <td class="input_txt" align="left"> <input type="checkbox" name="apexat_3" value="Apex at:" onclick="this.form.apexat3.style.visibility = this.checked? 'visible' : 'hidden'"/> Apex at:
				                 		<input type="text" class="input_txtbx1" id="apexat3" name="apexat_text3" style="visibility:hidden"/>
				                	 </td>
				               	     <td class="input_txt" align="left"> <input type="checkbox" name="softtissueedemaof_3" value="Soft tissue edema of" onclick="this.form.softtissueedemaof3.style.visibility = this.checked? 'visible' : 'hidden'"/> Soft tissue edema of
				                 		<input type="text" class="input_txtbx1" name="softtissueedemaof_text3" id="softtissueedemaof3"style="visibility:hidden"/>
				                 	 </td>
				                  	 <td class="input_txt" align="left"> <input type="checkbox" name="other_3" value="Other" onclick="this.form.other3.style.visibility = this.checked? 'visible' : 'hidden'"/> Other
				                 		<input type="text" class="input_txtbx1" id="other3" name="other_text33" style="visibility:hidden"/>
				                	 </td>
				                	 <td></td>
				                 </tr>		
				               </table>
				               </td>
				               </tr>
				               </table>
				               </div>
				               </td>
				               </tr>  	 	
				               </table>
				               </div>
				               </div>
				               <div id="tabs-4">
    <div id="right_content">
				                
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>EXTREMITIES</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0">
				               <tr class="row1">
				               		 <td>Views:
				               		 <input type="text" class="input_txtbx1" id="inp_id" name="views4" />
				               		 </td>
				               		 <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="normal_4" value="Normal"> Normal</td>
				               		
				                     <td valign="top" align="left" class="input_txt">  Positive for recent fracture, dislocation or gross Osteopathology <input type="text" name="positivefor_4" class="input_txtbx1"></td>   
				                 </tr>
				          </table>
				           <table cellpadding="0" cellspacing="0" border="0">
				           <tr>
				   <td valign="top" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="center"><br><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');"></td>
				   <td>&nbsp;&nbsp;</td>
             		 <!-- <td valign="top" align="center"><br><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewradiologicreport'"></td> -->
				  <td>&nbsp;&nbsp;</td>
				    <td valign="top" align="center"><br><a href="doctorsearch" style="color:white;text-decoration: none" id="cancelid" class="submit_btn">Cancel</a></td>
				 			 
				  </tr>
				  </table>
				  </td>
				  </tr>
				  </table>
				  </div>
				  </td>
				  </tr>
				  </table>
				  </div>
				  </div>
				  </div>
				  
				  
				 </div>
				  </c:when>
				  <c:otherwise>
				   <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
	              <h2 align="center" >  Radiologic Report<br></br></h2>
	       </div></div> 
	        <div class="contentbox">
	        <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td>
   					  <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tr class="row1">
	                              <td>Patient Name:</td>
				                  <input type="hidden" class="input_txtbx1" id="inp_id" value="${radio.pid}" name="pid" />
                                 <td class="input_txt"><input type="text" class="input_txtbx1" id="pname" value="${radio.pname }" name="pname" /></br><span id="pnameerror"><form:errors path="RadiologicReport.pname"></form:errors></span></td>
                                 <td>Date:</td>
                                 <td class="input_txt"><input type="text" class="input_txtbx1" id="datepicker" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radio.date }" name="date" /></br><span id="datepickererror"><form:errors path="RadiologicReport.date"></form:errors></span></td>
                                 <td>I.D.#:</td>
                                  <td class="input_txt"><input type="text" class="input_txtbx1" id="num" value="${radio.id }" name="id" /></br><span id="numerror"><form:errors path="RadiologicReport.id"></form:errors></span></td>
               					<td>Date Of Birth</td>
               					 <td class="input_txt"><input type="text" class="input_txtbx1" id="datepicker1" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radio.dob }" name="dob" /></br><span id="datepicker1error"><form:errors path="RadiologicReport.dob"></form:errors></span></td>
               			 </tr>
               			 
                 <tr class="row1">
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="center">&nbsp;</td>
                  <td valign="top" align="right">&nbsp;</td>
                  <td valign="top" align="right"></td>
                    
                </tr>
                </table>
                </td>
                </tr>
                </table>
                </div>
                </td>
                </tr>
                </table>
                
                				    
<div id="tabs">
       <ul>
          <li><a href="#tabs-1">Edit Cervical Spine</a></li>
          <li><a href="#tabs-2">Edit  Thoracic Spine</a></li>
          <li><a href="#tabs-3">Edit Lumbar Spine</a></li>
          <li><a href="#tabs-4">Edit Extremities</a></li>
       </ul>
         
   <div id="tabs-1"> 
   		 <div id="right_content">
		 <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2> EDIT CERVICAL SPINE</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">		                
                               
                        <table cellpadding="0" cellspacing="0" border="0">
				               <tr class="row1">
                						<td  width="150" valign="middle" align="left" class="input_txt"><span class="err">*</span>Views:
                							<select name="views1" class="input_cmbbx1">
						                    <option value="A-P lower" <c:if test="${radio.views1=='A-P lower'}"><c:out value="selected"/></c:if>>A-P lower</option>
						                     <option value="APOM" <c:if test="${radio.views1=='APOM'}"><c:out value="selected"/></c:if>>APOM</option>
						                     <option value="L lateral"  <c:if test="${radio.views1=='L lateral'}"><c:out value="selected"/></c:if>>L lateral</option>
						                     <option value="RLF" <c:if test="${radio.views1=='RLF'}"><c:out value="selected"/></c:if>>RLF</option>
						                     <option value="LLF" <c:if test="${radio.views1=='LLF'}"><c:out value="selected"/></c:if>>LLF</option>
						                     <option value="RPO" <c:if test="${radio.views1=='RPO'}"><c:out value="selected"/></c:if>>RPO</option>
						                     <option value="LPO" <c:if test="${radio.views1=='LPO'}"><c:out value="selected"/></c:if>>LPO</option>
						                     <option value="Flex" <c:if test="${radio.views1=='Flex'}"><c:out value="selected"/></c:if>>Flex</option>
						                     <option value="Ext" <c:if test="${radio.views1=='Ext'}"><c:out value="selected"/></c:if>>Ext</option>
						                     </select>
						                     </td>
						                     
												<td valign="top" align="left" class="input_txt" width="400" ><input type="checkbox"  value="Negative for Osteopathology" name="negative_1" <c:if test="${radio.negative_1=='Negative for Osteopathology'}"><c:out value="Checked"/></c:if>   />Negative for recent fracture, dislocation or gross Osteopathology</td>							                    
						                     	<td></td>
						                     	<td></td>	
						                     </tr>
						                     <tr class="row2">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  id="positivecheck" value="positive for" name="positive_for"  onclick="Positive();" <c:if test="${radio.positive_for=='positive for'}"><c:out value="Checked=Checked"/></c:if>   />Positive for
						                     			
						                     			<input type="text" class="input_txtbx1" id="positive1"  style="display:none;" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radio.positive_text1 }" name="positive_text1" /><span class="err"><form:errors path="report.positive_text1"></form:errors></span></td>
						                            
						                                <td valign="top" align="left" class="input_txt"><input type="checkbox" id="breakcheck" value="Break in Georges" name="break_1" onclick="Break();" <c:if test="${radio.break_1=='Break in Georges'}"><c:out value="Checked"/></c:if>   />Break in Georges line at
						                                <input type="text" class="input_txtbx1" id="break1" style="display:none;" value="${radio.break_text1 }" name="break_text1" /><span class="err"><form:errors path="report.break_text1"></form:errors></span></td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="ADI more than 3mm" name="adi_1" <c:if test="${radio.adi_1=='ADI more than 3mm'}"><c:out value="Checked"/></c:if>   />ADI more than 3mm</td>
						                     			<td width="380"></td>
						                     </tr>
						                     <tr class="row1">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Hypolordosis" name="hypolorodosis_1" id="hypolordosischeck1" onclick="Hypolordosis1();"<c:if test="${radio.hypolorodosis_1=='Hypolordosis'}"><c:out value="Checked"/></c:if>   />hypolorodosis
						                     			<select name="hypolordosis_select1" class="input_cmbbx1" id="hypolordosis1"style="display:none;">
						                    <option value="Mild" <c:if test="${radio.hypolordosis_select1=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radio.hypolordosis_select1=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radio.hypolordosis_select1=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						                     			</td>
						                     			
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Normal Curvature" name="normalcurvature_1" id="normalcurvaturecheck1" onclick="Normalcurvature1();"<c:if test="${radio.normalcurvature_1=='Normal Curvature'}"><c:out value="Checked"/></c:if>   />Normal_Curvature
						                     			<select name="normalcurvature_select1" class="input_cmbbx1" id="normalcurvature1"style="display:none;">
						                    <option value="Mild" <c:if test="${radio.normalcurvature_select1=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radio.normalcurvature_select1=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radio.normalcurvature_select1=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						                     			</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Hyperlordosis" id="hyperlordosischeck"name="hyperlordosis_1" onclick="Hyperlordosis();"<c:if test="${radio.hyperlordosis_1=='Hyperlordosis'}"><c:out value="Checked"/></c:if>   />Hyperlordosis
						                     			<select name="hyperlordosis_select1" class="input_cmbbx1" id="hyperlordosis1"style="display:none;">
						                    <option value="Mild" <c:if test="${radio.hyperlordosis_select1=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radio.hyperlordosis_select1=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radio.hyperlordosis_select1=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						                     </td>
						          			 </tr>
						          			 
						          			  <tr class="row2">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="McGregors line normal" name="mcGregorslinenormal_1" <c:if test="${radio.mcGregorslinenormal_1=='McGregors line normal'}"><c:out value="Checked"/></c:if>   />McGregor's line normal</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="McGregors line interupted" name="mcGregorslineinterupted_1" <c:if test="${radio.mcGregorslineinterupted_1=='McGregors line interupted'}"><c:out value="Checked"/></c:if>   />McGregor's line interupted</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Degenerative joint disease at:"id="degenerative1" name="degenerativejointdisease_1" onclick="Degenerative();"<c:if test="${radio.degenerativejointdisease_1=='Degenerative joint disease at:'}"><c:out value="Checked"/></c:if>   />Degenerative joint disease at:
						                     			<select name="degenerativejointdisease_select1" id="degenerativejointdisease"class="input_cmbbx1" style="display:none;">
						                    <option value="C-2/3" <c:if test="${radio.degenerativejointdisease_select1=='C-2/3'}"><c:out value="selected"/></c:if>>C-2/3</option>
						                     <option value="C-3/4" <c:if test="${radio.degenerativejointdisease_select1=='C-3/4'}"><c:out value="selected"/></c:if>>C-3/4</option>
						                     <option value="C-4/5"  <c:if test="${radio.degenerativejointdisease_select1=='C-4/5'}"><c:out value="selected"/></c:if>>C-4/5</option>
						                     <option value="C-5/6"  <c:if test="${radio.degenerativejointdisease_select1=='C-5/6'}"><c:out value="selected"/></c:if>>C-5/6</option>
						                     <option value="C-6/7"  <c:if test="${radio.degenerativejointdisease_select1=='C-6/7'}"><c:out value="selected"/></c:if>>C-6/7</option>
						                     <option value="C-7/T-1"  <c:if test="${radio.degenerativejointdisease_select1=='C-7/T-1'}"><c:out value="selected"/></c:if>>C-7/T-1</option>
						                     </select>
						                     </td>
						                     <td width="380"></td>
						          			 </tr>
						                     <tr class="row1">
						                     		<td valign="top" align="left" class="input_txt">
						                     				<input type="checkbox"  value="Mild" name="mild_1" <c:if test="${radio.mild_1=='Mild'}"><c:out value="Checked"/></c:if>   />Mild
						                     				<input type="checkbox"  value="Moderate" name="moderate_1" <c:if test="${radio.moderate_1=='Moderate'}"><c:out value="Checked"/></c:if>   />Moderate
						                     				<input type="checkbox"  value="Severe" name="severe_1" <c:if test="${radio.severe_1=='Severe'}"><c:out value="Checked"/></c:if>   />Severe
						                     		</td>
						                     		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Narrowed disc space at" id="narroweddisc" name="narrowed_1" onclick= "Narrowed();" <c:if test="${radio.narrowed_1=='Narrowed disc space at'}"><c:out value="Checked"/></c:if>   />Narrowed disc space at
						                                <input type="text" class="input_txtbx1" id="narrowed1" value="${radio.narrowed_text1 }" name="narrowed_text1" style="display:none;"/><span class="err"><form:errors path="report.narrowed_text1"></form:errors></span>
						                             </td>   
						                     		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Anterior osteophytes at" id="anterior" name="anterior_1" onclick="Anterior();"<c:if test="${radio.anterior_1=='Anterior osteophytes at'}"><c:out value="Checked"/></c:if>   />Anterior vertebral body osteophytes at
						                                <input type="text" class="input_txtbx1" id="anterior1"   style="display:none;" value="${radio.anterior_text1 }" name="anterior_text1" /><span class="err"><form:errors path="report.anterior_text1"></form:errors></span>
						                             </td>  
						                     	 </tr>
						                     	 <tr class="row2">
						                     	 		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Subchondral sclerosis of" id="subchondralof"name="subchondral_1" onclick="Subchondral();"<c:if test="${radio.subchondral_1=='Subchondral sclerosis of'}"><c:out value="Checked"/></c:if>   />Subchondral sclerosis of
						                                <input type="text" class="input_txtbx1" id="subchondral1" style="display:none;" value="${radio.subchondral_text1 }" name="subchondral_text1" /><span class="err"><form:errors path="report.subchondral_text1"></form:errors></span>
						                             </td>   
						                     		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Schmorls nodes at:" name="schmorls_1"id="schmorlsnode" onclick="Schmorls();"<c:if test="${radio.schmorls_1=='Schmorls nodes at:'}"><c:out value="Checked"/></c:if>   />Schmorl's nodes at:
						                                <input type="text" class="input_txtbx1" id="schmorls1"  style="display:none;" value="${radio.schmorls_text1 }" name="schmorls_text1" /><span class="err"><form:errors path="report.schmorls_text1"></form:errors></span>
						                             </td> 
						                             <td width="380"></td> 
						                             <td width="380"></td>
						                         </tr>
						                     	 <tr class="row1">
						                     	 		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Foraminal enchroachment b/w:" id="foraminal"name="foraminal_1" onclick="Foraminal();" <c:if test="${radio.foraminal_1=='Foraminal enchroachment b/w:'}"><c:out value="Checked"/></c:if>   />Foraminal enchroachment between:
						                     			<select name="foraminal_select1" id="foraminal1"class="input_cmbbx1" style="display:none;">
						                    <option value="C-2/3" <c:if test="${radio.foraminal_select1=='C-2/3'}"><c:out value="selected"/></c:if>>C-2/3</option>
						                     <option value="C-3/4" <c:if test="${radio.foraminal_select1=='C-3/4'}"><c:out value="selected"/></c:if>>C-3/4</option>
						                     <option value="C-4/5"  <c:if test="${radio.foraminal_select1=='C-4/5'}"><c:out value="selected"/></c:if>>C-4/5</option>
						                     <option value="C-5/6"  <c:if test="${radio.foraminal_select1=='C-5/6'}"><c:out value="selected"/></c:if>>C-5/6</option>
						                     <option value="C-6/7"  <c:if test="${radio.foraminal_select1=='C-6/7'}"><c:out value="selected"/></c:if>>C-6/7</option>
						                     <option value="C-7/T-1"  <c:if test="${radio.foraminal_select1=='C-7/T-1'}"><c:out value="selected"/></c:if>>C-7/T-1</option>
						                     </select>
						                     </td>
						                     
						                     <td valign="top" align="left" class="input_txt"><input type="checkbox" id="osteoporosis" value="Osteoporosis" name="osteoporosis_1" onclick="Osteoporosis();" <c:if test="${radio.osteoporosis_1=='Osteoporosis'}"><c:out value="Checked"/></c:if>   />Osteoporosis
						                     			<select name="osteoporosis_select1" class="input_cmbbx1" id="osteoporosis1"style="display:none;">
						                    <option value="Mild" <c:if test="${radio.osteoporosis_select1=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radio.osteoporosis_select1=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radio.osteoporosis_select1=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						                     </td>
						                      <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Decreased Flex/Ext:" id="decreasedflex"name="decreasedFlexExt_1" onclick="DecreasedFlex();" <c:if test="${radio.decreasedFlexExt_1=='Decreased Flex/Ext:'}"><c:out value="Checked"/></c:if>   /> Decreased Flex/Ext
						                     			<select name="decreasedFlexExt_select1" class="input_cmbbx1" id="decreasedflex1" style="display:none;">
						                    <option value="Mild" <c:if test="${radio.decreasedFlexExt_select1=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radio.decreasedFlexExt_select1=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radio.decreasedFlexExt_select1=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						                     </td>
						                      </tr>
						                      <tr class="row2">
						                      		<td valign="top" align="left" class="input_txt"><input type="checkbox" id="decreasedRLFlex" name="decreasedRLFlex_1" value="Decreased R/L Flex:" onclick="DecreasedRLFlex();"<c:if test="${radio.decreasedRLFlex_1=='Decreased R/L Flex:'}"><c:out value="Checked"/></c:if>   /> Decreased R/L Flex
						                     		</td><td>	<select name="decreasedRLFlex_select1" class="input_cmbbx1" id="decreasedRLFlex1" style="display:none;">
						                    <option value="Mild" <c:if test="${radio.decreasedRLFlex_select1=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radio.decreasedRLFlex_select1=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radio.decreasedRLFlex_select1=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						                     </td>
						                      <td>
						                      		<select name="dextro_Levoscoliosis_towering_select1" class="input_cmbbx1">
						                    <option value="Dextro" <c:if test="${radio.dextro_Levoscoliosis_towering_select1=='Dextro'}"><c:out value="selected"/></c:if>>Dextro</option>
						                     <option value="Levo scoliosis" <c:if test="${radio.dextro_Levoscoliosis_towering_select1=='Levo scoliosis'}"><c:out value="selected"/></c:if>>Levo scoliosis</option>
						                     <option value="Towering"  <c:if test="${radio.dextro_Levoscoliosis_towering_select1=='Towering'}"><c:out value="selected"/></c:if>>Towering</option>
						                     </select></td>
						                     <td>
						                      <input type="checkbox"  value="Mild" name="mild_11" <c:if test="${radio.mild_11=='Mild'}"><c:out value="Checked"/></c:if>   />Mild
						                     				<input type="checkbox"  value="Moderate" name="moderate_11" <c:if test="${radio.moderate_11=='Moderate'}"><c:out value="Checked"/></c:if>   />Moderate
						                     				<input type="checkbox"  value="Severe" name="severe_11" <c:if test="${radio.severe_11=='Severe'}"><c:out value="Checked"/></c:if>   />Severe
						                     	
						                      </td>
						                      </tr>
						                      <tr class="row1">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Apex at:" name="apexat_1" id="apexa" onclick="Apex();"<c:if test="${radio.apexat_1=='Apex at:'}"><c:out value="Checked"/></c:if>   />Apex at:
						                     			<input type="text" class="input_txtbx1" id="apexa1"  value="${radio.apexat_text1 }" name="apexat_text1"style="display:none;" /><span class="err"><form:errors path="report.apexat_text1"></form:errors></span>
						                     			</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Soft tissue edema of" name="softtissueedemaof_1" id="softtissueedemaof" onclick="Softtissueedemaof();"<c:if test="${radio.softtissueedemaof_1=='Soft tissue edema of'}"><c:out value="Checked"/></c:if>   />Soft tissue edema of
						                     			<input type="text" class="input_txtbx1" id="softtissueedemaof1" value="${radio.softtissueedemaof_text1}" style="display:none;" name="softtissueedemaof_text1" /><span class="err"><form:errors path="report.softtissueedemaof_text1"></form:errors></span></td>
														
														<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Other" name="other_1" id="othercheck" onclick="Other();" <c:if test="${radio.other_1=='Other'}"><c:out value="Checked"/></c:if>   />Other
						                     			<input type="text" class="input_txtbx1" id="other1"  value="${radio.other_text1 }" name="other_text1" style="display:none;" /><span class="err"><form:errors path="report.other_text1"></form:errors></span></td>
						
						                      			
						                      </tr>
						                      
						                      
						                       <tr class="row1">
                  								<td valign="top" align="center">&nbsp;</td>
                  								<td valign="top" align="left"></td>
                    
                </tr>
						                     </table>
						                    </td>
						                    </tr>
						                    </table>
						                    </div>
						                    </td>
						                    </tr>
						                    </table>
						                    </div>
						                    </div>
						                    
						                    
						                    <div id="tabs-2">
   								 <div id="right_content">
				                
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>EDIT THORACIC SPINE</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0">
				               <tr class="row1">
						                    <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Views:
                							<select name="views2" class="input_cmbbx1">
						                    <option value="A-P" <c:if test="${radio.views2=='A-P'}"><c:out value="selected"/></c:if>>A-P</option>
						                    <option value="lateral"  <c:if test="${radio.views2=='lateral'}"><c:out value="selected"/></c:if>>L lateral</option>
						          		    <option value="rlf" <c:if test="${radio.views2=='rlf'}"><c:out value="selected"/></c:if>>RLF</option>       
						                    <option value="llf" <c:if test="${radio.views2=='llf'}"><c:out value="selected"/></c:if>>LLF</option>
						                     <option value="rpo" <c:if test="${radio.views2=='rpo'}"><c:out value="selected"/></c:if>>RPO</option>
						                     <option value="lpo" <c:if test="${radio.views2=='lpo'}"><c:out value="selected"/></c:if>>LPO</option>
						                     <option value="P-A Chest" <c:if test="${radio.views2=='P-A Chest'}"><c:out value="selected"/></c:if>>Flex</option>
						                     <option value="Lateral Chest" <c:if test="${radio.views2=='Lateral Chest'}"><c:out value="selected"/></c:if>>Ext</option>
						                     </select>
						                     </td>
						                     
						                     <td valign="top" align="left" class="input_txt" width="400"><input type="checkbox"  value="Negative for Osteopathology" name="negative_2" <c:if test="${radio.negative_2=='Negative for Osteopathology'}"><c:out value="Checked"/></c:if>   />Negative for recent fracture, dislocation or gross Osteopathology</td>
						                     <td></td>
						                     <td></td>
						         </tr>
						         <tr class="row2">
						         	<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Hyperkyphosis" name="hyperkyphosis_2" id="hyperkyphosischeck2" onclick="Hyperkyphosis2();" <c:if test="${radio.hyperkyphosis_2=='Hyperkyphosis'}"><c:out value="Checked"/></c:if>   />Hyperkyphosis
						             <select name="hyperkyphosis_select2" class="input_cmbbx1" id="hyperkyphosis2"style="display:none;">
						                    <option value="Mild" <c:if test="${radio.hyperkyphosis_select2=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radio.hyperkyphosis_select2=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radio.hyperkyphosis_select2=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						             </select>
						            </td>
						                     			
						           <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Normal kyphosis" name="normalkyphosis_2" id="normalkyphosischeck2" onclick="Normalkyphosis2();"<c:if test="${radio.normalkyphosis_2=='Normal kyphosis'}"><c:out value="Checked"/></c:if>   />Normal kyphosis
						                     	 <select name="normalkyphosis_select2" class="input_cmbbx1" id="normalkyphosis2"style="display:none;">
						                    <option value="Mild" <c:if test="${radio.normalkyphosis_select2=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radio.normalkyphosis_select2=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radio.normalkyphosis_select2=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						             </select>
						            </td>			
						            <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Hypokyphosis" name="hypokyphosis_2" id="hypokyphosischeck2" onclick="Hypokyphosis2();"<c:if test="${radio.hypokyphosis_2=='Hypokyphosis'}"><c:out value="Checked"/></c:if>   />Hypokyphosis
						                     	<select name="hypokyphosis_select2" class="input_cmbbx1" id="hypokyphosis2"style="display:none;">
						                    <option value="Mild" <c:if test="${radio.hypokyphosis_select2=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radio.hypokyphosis_select2=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radio.hypokyphosis_select2=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						             </select>			
						         </td>
						         <td width="380"></td>
						         </tr>
						         <tr class="row1">
						         <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Degenerative joint disease at:" name="degenerative_2" id="degenerative2check"onclick="Degenerative2();"<c:if test="${radio.degenerative_2=='Degenerative joint disease at:'}"><c:out value="Checked"/></c:if>   />Degenerative joint disease at:
											<input type="text" class="input_txtbx1" id="degenerative2" value="${radio.degenerative_text2 }" name="degenerative_text2" style='display:none'/><span class="err"><form:errors path="report.degenerative_text2"></form:errors></span>				         			
						         </td>
						         <td valign="top" align="left" class="input_txt">
						                     				<input type="checkbox"  value="Mild" name="mild_2" <c:if test="${radio.mild_2=='Mild'}"><c:out value="Checked"/></c:if>   />Mild
						                     				<input type="checkbox"  value="Moderate" name="moderate_2" <c:if test="${radio.moderate_2=='Moderate'}"><c:out value="Checked"/></c:if>   />Moderate
						                     				<input type="checkbox"  value="Severe" name="severe_2" <c:if test="${radio.severe_2=='Severe'}"><c:out value="Checked"/></c:if>   />Severe
						                     		</td>
						                     		<td></td>
						         </tr>
						         <tr class="row2">            		
						          <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Narrowed disc space at:" name="narrowed_2" id="narrowed2check"onclick="Narrowed2();"<c:if test="${radio.narrowed_2=='Narrowed disc space at:'}"><c:out value="Checked"/></c:if>   />Narrowed disc space at:
						                                <input type="text" class="input_txtbx1" id="narrowed2"  value="${radio.narrowed_text2 }" name="narrowed_text2" style='display:none'/><span class="err"><form:errors path="report.narrowed_text2"></form:errors></span>
						                             </td>   
						          <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Schmorls nodes at:" name="schmorlsnodesat_2" id="schmorlsnodesat2check"onclick="Schmorlsnodesat2();"<c:if test="${radio.schmorlsnodesat_2=='Schmorls nodes at:'}"><c:out value="Checked"/></c:if>   />Schmorls nodes at:
						                                <input type="text" class="input_txtbx1" id="schmorlsnodesat2" value="${radio.schmorlsnodesat_text2 }" name="schmorlsnodesat_text2"style='display:none' /><span class="err"><form:errors path="report.schmorlsnodesat_text2"></form:errors></span>
						                             </td>   
						                    <td width="380"></td> 	
						                    <td width="380"></td>	                    		           		
						         </tr>
						         <tr class="row1">            		
						          <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Anterior body osteophytes at:" name="anterior_2" id="anterior2check" onclick="Anterior2();" <c:if test="${radio.anterior_2=='Anterior body osteophytes at:'}"><c:out value="Checked"/></c:if>   />Anterior body osteophytes at:
						                                <input type="text" class="input_txtbx1" id="anterior2"  value="${radio.anterior_text2 }" name="anterior_text2" style='display:none'/><span class="err"><form:errors path="report.anterior_text2"></form:errors></span>
						                             </td>   
						          <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Subchondral sclerosis of" name="subchondral_2" id="subchondral2check"onclick="Subchondral2();"<c:if test="${radio.subchondral_2=='Subchondral sclerosis of'}"><c:out value="Checked"/></c:if>   />Subchondral sclerosis of
						                                <input type="text" class="input_txtbx1" id="subchondral2" style='display:none' value="${radio.subchondral_text2 }" name="subchondral_text2" /><span class="err"><form:errors path="report.subchondral_text2"></form:errors></span>
						                             </td>   
						          <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Foraminal enchroachment b/w:" name="foraminal_2"id="foraminal2check"onclick="Foraminal2();" <c:if test="${radio.foraminal_2=='Foraminal enchroachment b/w:'}"><c:out value="Checked"/></c:if>   />Foraminal enchroachment between: 
						                                <input type="text" class="input_txtbx1" id="foraminal2"  style='display:none' value="${radio.foraminal_text2 }" name="foraminal_text2" /><span class="err"><form:errors path="report.foraminal_text2"></form:errors></span>
						                             </td>               		                    		           		
						         </tr>
						         <tr class="row2">
						         			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Osteoporosis" name="osteoporosis_2" id="osteoporosis2check" onclick="Osteoporosis2();"<c:if test="${radio.osteoporosis_2=='Osteoporosis'}"><c:out value="Checked"/></c:if>   />Osteoporosis
						                     			<select name="osteoporosis_select2" class="input_cmbbx1" id="osteoporosis2" style='display:none'>
						                    <option value="mild" <c:if test="${radio.osteoporosis_select2=='mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="moderate" <c:if test="${radio.osteoporosis_select2=='moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="severe"  <c:if test="${radio.osteoporosis_select2=='severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						                     </td>
						                     
						                     <td>
						                      		<select name="dextro_Levoscoliosis_towering_select2" class="input_cmbbx1">
						                    <option value="Dextro" <c:if test="${radio.dextro_Levoscoliosis_towering_select2=='Dextro'}"><c:out value="selected"/></c:if>>Dextro</option>
						                     <option value="Levo scoliosis" <c:if test="${radio.dextro_Levoscoliosis_towering_select2=='Levo scoliosis'}"><c:out value="selected"/></c:if>>Levo scoliosis</option>
						                     <option value="Towering"  <c:if test="${radio.dextro_Levoscoliosis_towering_select2=='Towering'}"><c:out value="selected"/></c:if>>Towering</option>
						                     </select></td>
						                     <td>
						                      <input type="checkbox"  value="Mild" name="mild_22" <c:if test="${radio.mild_22=='Mild'}"><c:out value="Checked"/></c:if>   />Mild
						                     				<input type="checkbox"  value="Moderate" name="moderate_22" <c:if test="${radio.moderate_22=='Moderate'}"><c:out value="Checked"/></c:if>   />Moderate
						                     				<input type="checkbox"  value="Severe" name="severe_22" <c:if test="${radio.severe_22=='Severe'}"><c:out value="Checked"/></c:if>   />Severe
						                     	
						                      </td>
						         <td width="380"></td>
						         </tr>
						         <tr class="row1">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Apex at:" name="apexat_2" id="apexat2check" onclick="Apexat2();"<c:if test="${radio.apexat_2=='Apex at:'}"><c:out value="Checked"/></c:if>   />Apex at:
						                     			<input type="text" class="input_txtbx1" id="apexat2"  value="${radio.apexat_text2}" name="apexat_text2" style='display:none'/><span class="err"><form:errors path="report.apexat_text2"></form:errors></span>
						                     			</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Soft tissue edema of" name="softtissueedemaof_2" id="softtissueedemaof2check" onclick="Softtissueedemaof2();"<c:if test="${radio.softtissueedemaof_2=='Soft tissue edema of'}"><c:out value="Checked"/></c:if>   />Soft tissue edema of
						                     			<input type="text" class="input_txtbx1" id="softtissueedemaof2" style='display:none' value="${radio.softtissueedemaof_text2}" name="softtissueedemaof_text2" /><span class="err"><form:errors path="report.softtissueedemaof_text2"></form:errors></span></td>
														
														<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Other" name="other_2" id="other2check" onclick="Other2();"<c:if test="${radio.other_2=='Other'}"><c:out value="Checked"/></c:if>   />Other
						                     			<input type="text" class="input_txtbx1" id="other2"  style='display:none' value="${radio.other_text2 }" name="other_text2" /><span class="err"><form:errors path="report.other_text2"></form:errors></span></td>
						
						                      			
						                      </tr>
						        
						        </table>
						         </td>
						       </tr>
						       </table>
						       </div>
						       </td>
						       </tr>
						     </table>
						     </div>
						     </div>
						     
						       
						     <div id="tabs-3">
				                 
				                 <div id="right_content">
				                
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>EDIT LUMBAR SPINE</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr class="row1">
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0">
				               <tr class="row1">
				              		 <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Views:
                							<select name="views3" class="input_cmbbx1">
						                    <option value="A-P" <c:if test="${radio.views3=='A-P'}"><c:out value="selected"/></c:if>>A-P</option>
						                    <option value="L lateral"  <c:if test="${radio.views3=='L lateral'}"><c:out value="selected"/></c:if>>L lateral</option>
						          		      <option value="RPO" <c:if test="${radio.views3=='RPO'}"><c:out value="selected"/></c:if>>RPO</option>
						                     <option value="LPO" <c:if test="${radio.views3=='LPO'}"><c:out value="selected"/></c:if>>LPO</option>
						          		    <option value="RLF" <c:if test="${radio.views3=='RLF'}"><c:out value="selected"/></c:if>>RLF</option>       
						                    <option value="LLF" <c:if test="${radio.views3=='LLF'}"><c:out value="selected"/></c:if>>LLF</option>
						                  
						                     </select>
						                     </td>
					 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Negative for recent fracture" name="negative_3" <c:if test="${radio.negative_3=='Negative for recent fracture'}"><c:out value="Checked"/></c:if>   />Negative for recent fracture, dislocation or gross Osteopathology</td>	                     
					
					 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Break in Georges" name="break_3" id="break3check" onclick="Break3();"<c:if test="${radio.break_3=='Break in Georges'}"><c:out value="Checked"/></c:if>   />Break in Georges line at
						                                <input type="text" class="input_txtbx1" id="break3"style='display:none' value="${radio.break_text3 }" name="break_text3" /><span class="err"><form:errors path="report.break_text3"></form:errors></span></td>
						</tr>	
					<tr class="row2">
							 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Osteoporosis" name="osteoporosis_3" id="osteoporosis3check" onclick="Osteoporosis3();"<c:if test="${radio.osteoporosis_3=='Osteoporosis'}"><c:out value="Checked"/></c:if>   />Osteoporosis
						                     			<select name="osteoporosis_select3" class="input_cmbbx1" id="osteoporosis3"style='display:none' >
						                    <option value="mild" <c:if test="${radio.osteoporosis_select3=='mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="moderate" <c:if test="${radio.osteoporosis_select3=='moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="severe"  <c:if test="${radio.osteoporosis_select3=='severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						    </td>
						      <td valign="top" align="left" class="input_txt"> <input type="checkbox"  value="Hyperkyphosis" name="hyperkyphosis_3" id="hyperkyphosis3check" onclick ="Hyperkyphosis3();"<c:if test="${radio.hyperkyphosis_3=='Hyperkyphosis'}"><c:out value="Checked"/></c:if>   />Hyperkyphosis
						      		<select name="hyperkyphosis_select3" class="input_cmbbx1" id="hyperkyphosis3" style='display:none'>
						                    <option value="Mild" <c:if test="${radio.hyperkyphosis_select3=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radio.hyperkyphosis_select3=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radio.hyperkyphosis_select3=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						        </td>
						      <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Normal kyphosis" name="normalkyphosis_3" id="normalkyphosis3check"onclick="Normalkyphosis3();"<c:if test="${radio.normalkyphosis_3=='Normal kyphosis'}"><c:out value="Checked"/></c:if>   />Normal kyphosis
						                     		<select name="normalkyphosis_select3" class="input_cmbbx1" id="normalkyphosis3" style='display:none'>
						                    <option value="Mild" <c:if test="${radio.normalkyphosis_select3=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radio.normalkyphosis_select3=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radio.normalkyphosis_select3=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select>
						        </td>		
						        <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Hypokyphosis" name="hypokyphosis_3" id="hypokyphosis3check" onclick="Hypokyphosis3();"<c:if test="${radio.hypokyphosis_3=='Hypokyphosis'}"><c:out value="Checked"/></c:if>   />Hypokyphosis
						                     				<select name="hypokyphosos_select_3" class="input_cmbbx1" id="hypokyphosis3" style='display:none'>
						                    <option value="Mild" <c:if test="${radio.hypokyphosos_select_3=='Mild'}"><c:out value="selected"/></c:if>>Mild</option>
						                     <option value="Moderate" <c:if test="${radio.hypokyphosos_select_3=='Moderate'}"><c:out value="selected"/></c:if>>Moderate</option>
						                     <option value="Severe"  <c:if test="${radio.hypokyphosos_select_3=='Severe'}"><c:out value="selected"/></c:if>>Severe</option>
						                     </select></td>
						                     <td width="380"></td>
						                    
					</tr>	   
					<tr class="row1">
										<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Degenerative joint disease at:" name="degenerative_3" id="degenerative3check" onclick ="Degenerative3();" <c:if test="${radio.degenerative_3=='Degenerative joint disease at:'}"><c:out value="Checked"/></c:if>   />Degenerative joint disease at:
										<select name="degenerative_select3" class="input_cmbbx1" id="degenerative3" style='display:none'>
						                    <option value="L-1/2" <c:if test="${radio.degenerative_select3=='L-1/2'}"><c:out value="selected"/></c:if>>L-1/2</option>
						                    <option value="L-2/3"  <c:if test="${radio.degenerative_select3=='L-2/3'}"><c:out value="selected"/></c:if>>L-2/3</option>
						          		    <option value="L-3/4" <c:if test="${radio.degenerative_select3=='L-3/4'}"><c:out value="selected"/></c:if>>L-3/4</option>       
						                    <option value="L-4/5" <c:if test="${radio.degenerative_select3=='L-4/5'}"><c:out value="selected"/></c:if>>L-4/5</option>
						                     <option value="L-5/S-1" <c:if test="${radio.degenerative_select3=='L-5/S-1'}"><c:out value="selected"/></c:if>>L-5/S-1</option>
						                   </select>
						               </td>      
						                    	
										 <td valign="top" align="left" class="input_txt">
						                     				<input type="checkbox"  value="Mild" name="mild_3" <c:if test="${radio.mild_3=='Mild'}"><c:out value="Checked"/></c:if>   />Mild
						                     				<input type="checkbox"  value="Moderate" name="moderate_3" <c:if test="${radio.moderate_3=='Moderate'}"><c:out value="Checked"/></c:if>   />Moderate
						                     				<input type="checkbox"  value="Severe" name="severe_3" <c:if test="${radio.severe_3=='Severe'}"><c:out value="Checked"/></c:if>   />Severe
						                     		</td>
						                 		
						          <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Narrowed disc space at" name="narrowed_3" id="narrowed3check" onclick="Narrowed3();" <c:if test="${radio.narrowed_3=='Narrowed disc space at'}"><c:out value="Checked"/></c:if>   />Narrowed disc space at:
						                                <input type="text" class="input_txtbx1" id="narrowed3"style='display:none' value="${radio.narrowed_text3 }" name="narrowed_text3" /><span class="err"><form:errors path="report.narrowed_text3"></form:errors></span>
						                             </td>

								</tr>
								<tr class="row2">  
										<td valign="top" align="left" class="input_txt" width="380"><input type="checkbox"  value="Anterior osteophytes at" name="anterior_3" id="anterior3check" onclick="Anterior3();" <c:if test="${radio.anterior_3=='Anterior osteophytes at'}"><c:out value="Checked"/></c:if>   />Anterior vertebral body osteophytes at
						                                <input type="text" class="input_txtbx1" id="anterior3"  value="${radio.anterior_text3 }" style='display:none'  name="anterior_text3" /><span class="err"><form:errors path="report.anterior_text3"></form:errors></span>
						                             </td>  
						                     			<td valign="top" align="left" class="input_txt" width="380"><input type="checkbox"  value="Subchondral sclerosis of" name="subchondral_3" id="subchondral3check" onclick="Subchondral3();"<c:if test="${radio.subchondral_3=='Subchondral sclerosis of'}"><c:out value="Checked"/></c:if>   />Subchondral sclerosis of
						                                <input type="text" class="input_txtbx1" id="subchondral3" style='display:none' value="${radio.subchondral_text3 }" name="subchondral_text3" /><span class="err"><form:errors path="report.subchondral_text3"></form:errors></span>
						                             </td>   
						                     		<td valign="top" align="left" class="input_txt" width="380"><input type="checkbox"  value="Schmorls nodes at:" name="schmorls_3"id="schmorlsnodes3"onclick="Schmorls3();" <c:if test="${radio.schmorls_3=='Schmorls nodes at:'}"><c:out value="Checked"/></c:if>   />Schmorl's nodes at:
						                                <input type="text" class="input_txtbx1" id="schmorls3"  value="${radio.schmorls_text3 }" name="schmorls_text3" style='display:none'/><span class="err"><form:errors path="report.schmorls_text3"></form:errors></span>
						                             </td>  
						                             <td width="380"></td>
						                             <td width="380"></td>
						                         </tr>
						                         <tr class="row1">
						                         		<td valign="top" align="left" class="input_txt" width="480"><input type="checkbox"  value="Spondylolisthesis of" name="spondylolisthesisof_3" id="spondylolisthesisof3check" onclick="Spondylolisthesisof3();" <c:if test="${radio.spondylolisthesisof_3=='Spondylolisthesis of'}"><c:out value="Checked"/></c:if>   />Spondylolisthesis of
										<select name="spondylolisthesisof_select3" class="input_cmbbx1" id="spondylolisthesisof3" style='display:none'>
						                    <option value="L-4" <c:if test="${radio.spondylolisthesisof_select3=='L-4'}"><c:out value="selected"/></c:if>>L-4</option>
						                    <option value="L-5"  <c:if test="${radio.spondylolisthesisof_select3=='L-5'}"><c:out value="selected"/></c:if>>L-5</option>
						          		     </select>
						               </td>   
						                <td width="380">Other:<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radio.other_text3 }" name="other_text3" /></br><span class="err"><form:errors path="report.other_text3"></form:errors></span></td>
						             <td valign="middle" align="left" class="input_txt" width="480">Grade:
                							<select name="grade_3" class="input_cmbbx1">
						                    <option value="I" <c:if test="${radio.grade_3=='I'}"><c:out value="selected"/></c:if>>I</option>
						                     <option value="II" <c:if test="${radio.grade_3=='II'}"><c:out value="selected"/></c:if>>II</option>
						                     <option value="III"  <c:if test="${radio.grade_3=='III'}"><c:out value="selected"/></c:if>>III</option>
						                     <option value="IV" <c:if test="${radio.grade_3=='IV'}"><c:out value="selected"/></c:if>>IV</option>
						                     </select>
						         </td>
						         <td width="480"></td> 
						                            
						                         
						  </tr>
						  <tr class="row2">
						  		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Decreased RLF" name="decreasedRLF_3" <c:if test="${radio.decreasedRLF_3=='Decreased RLF'}"><c:out value="Checked"/></c:if>   /> Decreased RLF</td>
								<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Decreased LLF" name="decreasedLLF_3" <c:if test="${radio.decreasedLLF_3=='Decreased LLF'}"><c:out value="Checked"/></c:if>   /> Decreased LLF</td>
								<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Facet tropism" name="facettropism_3" <c:if test="${radio.facettropism_3=='Facet tropism'}"><c:out value="Checked"/></c:if>   /> Facet tropism</td>
								<td></td>	
								<td></td>				  
						  </tr>
						  <tr class="row1">
						  		<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Sacralization" name="sacralization_3" <c:if test="${radio.sacralization_3=='Sacralization'}"><c:out value="Checked"/></c:if>   /> Sacralization</td>
								<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Lumbarization" name="lumbarization_3" <c:if test="${radio.lumbarization_3=='Lumbarization'}"><c:out value="Checked"/></c:if>   /> Lumbarization</td>
						 		<td>
						                      		<select name="dextro_Levoscoliosis_towering_select3" class="input_cmbbx1">
						                    <option value="Dextro" <c:if test="${radio.dextro_Levoscoliosis_towering_select3=='Dextro'}"><c:out value="selected"/></c:if>>Dextro</option>
						                     <option value="Levo scoliosis" <c:if test="${radio.dextro_Levoscoliosis_towering_select3=='Levo scoliosis'}"><c:out value="selected"/></c:if>>Levo scoliosis</option>
						                     <option value="Towering"  <c:if test="${radio.dextro_Levoscoliosis_towering_select3=='Towering'}"><c:out value="selected"/></c:if>>Towering</option>
						                     </select></td>
						                     <td>
						                      <input type="checkbox"  value="Mild" name="mild_33" <c:if test="${radio.mild_33=='Mild'}"><c:out value="Checked"/></c:if>   />Mild
						                     				<input type="checkbox"  value="Moderate" name="moderate_33" <c:if test="${radio.moderate_33=='Moderate'}"><c:out value="Checked"/></c:if>   />Moderate
						                     				<input type="checkbox"  value="Severe" name="severe_33" <c:if test="${radio.severe_33=='Severe'}"><c:out value="Checked"/></c:if>   />Severe
						                     	
						                      </td>
						 
						 
						 
						 </tr>	
						 
						  <tr class="row2">
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Apex at:" name="apexat_3" id="apexat3check" onclick ="Apexat3();"<c:if test="${radio.apexat_3=='Apex at:'}"><c:out value="Checked"/></c:if>   />Apex at:
						                     			<input type="text" class="input_txtbx1" id="apexat3" style='display:none' value="${radio.apexat_text3 }" name="apexat_text3" /><span class="err"><form:errors path="report.apexat_text3"></form:errors></span>
						                     			</td>
						                     			<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Soft tissue edema of" name="softtissueedemaof_3" id="softtissueedemaof3check" onclick="Softtissueedemaof3();"<c:if test="${radio.softtissueedemaof_3=='Soft tissue edema of'}"><c:out value="Checked"/></c:if>   />Soft tissue edema of
						                     			<input type="text" class="input_txtbx1" id="softtissueedemaof3" style='display:none' value="${radio.softtissueedemaof_text3}" name="softtissueedemaof_text3" /><span class="err"><form:errors path="report.softtissueedemaof_text3"></form:errors></span></td>
														
														<td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Other" name="other_3" id="other3check" onclick ="Other3();"<c:if test="${radio.other_3=='Other'}"><c:out value="Checked"/></c:if>   />Other
						                     			<input type="text" class="input_txtbx1" id="other3"  style='display:none' value="${radio.other_text33 }" name="other_text33" /><span class="err"><form:errors path="report.other_text33"></form:errors></span></td>
						<td width="380"></td>
						<td width="380"></td>
						                      			
						                      </tr>	
						      <tr class="row1">
                  								<td valign="top" align="center">&nbsp;</td>
                  								<td valign="top" align="left"></td>
                    
                </tr>
						                           
					
						    </table>
						    </td>
						    </tr>
						    </table>
						    </div>
						    </td>
						    </tr>
						    </table>
						    </div>
						    </div>
						    
						      <div id="tabs-4">
    <div id="right_content">
				                
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>EXTREMITIES</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0">
				               <tr class="row1">
				               		 <td>Views:<input type="text" class="input_txtbx1" id="inp_id" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${radio.views4 }" name="views4" /></br><span class="err"><form:errors path="report.views4"></form:errors></span></td>
				              		 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Normal" name="normal_4" <c:if test="${radio.normal_4=='Normal'}"><c:out value="Checked"/></c:if>   />Normal</td>
				              		 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Positive for" name="positivefor_4" <c:if test="${radio.positivefor_4=='Positive for'}"><c:out value="Checked"/></c:if>   />Positive for</td>
				               	</tr>
				               	<tr class="row1">
                  								 <td>&nbsp;&nbsp;</td>
                  								<td><input type="submit" class="submit_btn1" value="Save" name="insert" onclick="return checkSubmit('this');"></td>
                  								
				                    
				                    <td><a href="doctorsearch" style="color:white;text-decoration: none" class="submit_btn">Cancel</a></td>
                    
                </tr>
                </table>
				   </td>
				   </tr>
				   </table>
				   </div>
				   </td>
				   </tr>
				   </table>
				   </div>
				   </div>
				   </div>
				  </c:otherwise>
				  </c:choose>
				  </form>
				  </body>
				  </html>
				         