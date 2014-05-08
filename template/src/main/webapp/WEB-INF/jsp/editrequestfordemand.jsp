<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<script src="resources/js/jquery.min.js"></script>
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquery-1.9.1.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
  
  </STYLE>
 <script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 
</script>
</script>
<script type="text/javascript">
	function confirmation() 
	{
	var answer = confirm("Are you Sure You Want to Delete Participant ?")
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
	</script>
	<script>

	function checkSubmit()
	{
		document.getElementById("copymedpayerror").innerHTML=" ";
		
		if(document.getElementById("copymedpay").value=="")
		{
		document.getElementById("copymedpayerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("copyformerror").innerHTML="";
	if(document.getElementById("copyform").value=="")
		{
		document.getElementById("copyformerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
	
	document.getElementById("copyassignerror").innerHTML="";
	if(document.getElementById("copyassign").value=="")
	{
	document.getElementById("copyassignerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("greencarderror").innerHTML="";
	if(document.getElementById("greencard").value=="")
	{
	document.getElementById("greencarderror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("defaultattorneyerror").innerHTML="";
	if(document.getElementById("defaultattorney").value=="")
	{
	document.getElementById("defaultattorneyerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("clinicreperror").innerHTML="";
	if(document.getElementById("clinicrep").value=="")
	{
	document.getElementById("clinicreperror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	
	}

	</script>
</head>
 <body>
<div id="right_content">
<form action="updaterequestfordemand" method="POST">



<table cellpadding="0" cellspacing="0" border="0" width="85%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
      
        <td valign="top" align="left">
        	<c:set value="${requestfordemandform.requestfordemanddetails[0]}" var="requestfordemanddetails"> </c:set>
        	<div>
	            <div class="headings altheading">
	             <h2>Request For Demand</h2>
	        </div>
	            <div class="contentbox">
	           
	           <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr height="20">
             <td width="430"><b>TO:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;John P. Lowry, Esq. </td>
             <td><b>FROM:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Perry Chiropractic & Therapy Center	 of Canton, Inc.</td>
            
              </tr>
              
              <tr height="20">
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Fax:</b>  513-421-2764</td>
              <td>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4933 West Tuscarawas Street
              </td>
              </tr>
              <tr height="20">
              <td width="430">
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Canton, Ohio 44718	
              </td>
              </tr>
              </table>
              
              
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <p><b>Check every box that applies:</b></p>
              </table>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td><input type="hidden" name="requestid" value="${requestfordemanddetails.requestid }"><input type="checkbox" class="input_ckbx1" value="faultinsurer" name="faultinsurer" id="faultinsurer" <c:if test="${Requestfordemand.faultinsurer=='faultinsurer'}"><c:out value="Checked"/></c:if>/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The At-Fault Insurer has already paid the attorney and/or patient full settlement and has failed to comply with the Assignment.
     </td></tr>
     <tr height="30"><td><input type="checkbox" class="input_ckbx1" value="${requestfordemanddetails.medpayinsurer}" name="medpayinsurer" id="medpayinsurer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The At-Fault Insurer or The Med Pay Insurer has stated orally or in writing to us that it will not comply with the Assignment.
     </td></tr>
     <tr height="30"><td><input type="checkbox" class="input_ckbx1" value="${requestfordemanddetails.paidbenefits}" name="paidbenefits" id="paidbenefits">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Med Pay Insurer has already paid benefits to the patient and/or the attorney.  </td></tr>
        <tr height="30"><td><input type="checkbox" class="input_ckbx1" value="${requestfordemanddetails.bankrupt}" name="bankrupt" id="bankrupt">	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Our patient filed bankruptcy.  In addition to the document below, we are faxing every letter or document, which references the bankruptcy filing.
     </td></tr> 
     <tr height="30"><td><input type="checkbox" class="input_ckbx1" value="${requestfordemanddetails.treatment}" name="treatment" id="treatment">&nbsp;&nbsp;&nbsp;	If treatment is completed in addition to the document below we attach a copy of our itemized charges and a copy of the patient intake information form.
     </td></tr>  
     </table>
      <table cellpadding="0" cellspacing="0" border="0" width="100%">
      <tr height="30"><td style="width: 148px; "><input type="checkbox" class="input_ckbx1" value="${requestfordemanddetails.other}" name="other" id="other">&nbsp;&nbsp;&nbsp;Other:&nbsp;&nbsp;(Describe)&nbsp;&nbsp;&nbsp;
     <td> <textarea rows="" cols="" name="txtare"  value="${requestfordemanddetails.txtare}" style="height: 75px; width: 348px"></textarea></td>
     </td>
   </tr>
       </table> <br><br>    
       <table>
       <tr>
       <td>
       <p><b>We attach the following:</b></p>
       </td>
       </tr>
       <tr height="25"><td><input type="inputtype" class="input_ckbx1" value="${requestfordemanddetails.copymedpay}" name="copymedpay" id="copymedpay"><span class="err" id="copymedpayerror"><form:errors path="Requestfordemand.copymedpay"></form:errors></span></td><td><span class="err">*</span>Copy of Med Pay and At Fault Form Cover Letter
     </td></tr>
      <tr height="25"><td><input type="inputtype"class="input_ckbx1" value="${requestfordemanddetails.copyform}" name="copyform" id="copyform"><span class="err" id="copyformerror"><form:errors path="Requestfordemand.copyform"></form:errors></span></td><td><span class="err">*</span>Copy of Form Cover Letter sent to the Attorney
     </td></tr>
     <tr height="25"><td><input type="inputtype" class="input_ckbx1" value="${requestfordemanddetails.copyassign}" name="copyassign" id="copyassign"><span class="err" id="copyassignerror"><form:errors path="Requestfordemand.copyassign"></form:errors></span></td><td><span class="err">*</span>Copy of Assignment
     </td></tr>
     <tr height="25"><td><input type="inputtype" class="input_ckbx1" value="${requestfordemanddetails.greencard}" name="greencard" id="greencard"><span class="err" id="greencarderror"><form:errors path="Requestfordemand.greencard"></form:errors></span></td><td><span class="err">*</span>Front and back of Certified Mail: "Green Card"ù
     </td></tr>
     <tr height="25"><td><input type="inputtype" class="input_ckbx1" value="${requestfordemanddetails.defaultattorney}" name="defaultattorney" id="defaultattorney"><span class="err" id="defaultattorneyerror"><form:errors path="Requestfordemand.defaultattorney"></form:errors></span></td><td><span class="err">*</span>Any correspondence from the defaulting Adjuster or Defaulting Attorney
     </td></tr>
       </table> <br>     
       <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" ><tr height="35">
       <td width="30" ></td>
       <td  valign="right" align="right" >
       
       <input type="textbox" class="input_ckbx1" value="${requestfordemanddetails.clinicrep}" name="clinicrep" id="clinicrep"><span class="err" id="clinicreperror"><form:errors path="Requestfordemand.clinicrep"></form:errors></span></td></tr>
       <tr><td></td><td align="right" ><span class="err">*</span>Clinic Representative</td></tr>      
         
        	   <table><tr> <td><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
           
               
               <td><a href="deleterequestfordemand?requestid=${requestfordemanddetails.requestid}"style="color:white" class="submit_btn" onclick="return confirmation()" >Delete</a></td> 
               <td><a href="viewallpatientdetails"style="color:white" class="submit_btn">Cancel</a></td>
              </tr></table>
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
             