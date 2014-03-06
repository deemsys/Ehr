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
</head>
 <body>
<div id="right_content">
<form action="insertrequestfordemand" method="POST">

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
        	  <tr height="30"><td><input type="checkbox" class="input_ckbx1" name="faultinsurer" value="faultinsurer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The At-Fault Insurer has already paid the attorney and/or patient full settlement and has failed to comply with the Assignment.    </td></tr>
     <tr height="30"><td><input type="checkbox" class="input_ckbx1"  name="medpayinsurer" value="medpayinsurer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The At-Fault Insurer or The Med Pay Insurer has stated orally or in writing to us that it will not comply with the Assignment.
     </td></tr>
     <tr height="30"><td><input type="checkbox" class="input_ckbx1"  name="paidbenefits" value="paidbenefits">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Med Pay Insurer has already paid benefits to the patient and/or the attorney.  </td></tr>
        <tr height="30"><td><input type="checkbox" class="input_ckbx1" name="bankrupt"  value="bankrupt">	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Our patient filed bankruptcy.  In addition to the document below, we are faxing every letter or document, which references the bankruptcy filing.
     </td></tr> 
     <tr height="30"><td><input type="checkbox" class="input_ckbx1"  name="treatment"value="treatment">&nbsp;&nbsp;&nbsp;	If treatment is completed in addition to the document below we attach a copy of our itemized charges and a copy of the patient intake information form.
     </td></tr>  
     </table>
      <table cellpadding="0" cellspacing="0" border="0" width="100%">
      <tr height="30"><td style="width: 148px; "><input type="checkbox" class="input_ckbx1"  name="other" value="other">&nbsp;&nbsp;&nbsp;Other:&nbsp;&nbsp;(Describe)&nbsp;&nbsp;&nbsp;
     <td> <textarea rows="" cols="" name="txtare" style="height: 75px; width: 348px"></textarea></td>
     </td>
   </tr>
       </table> <br><br>    
       <table>
       <tr>
       <td>
       <p><b>We attach the following:</b></p>
       </td>
       </tr>
       <tr height="25"><td><input type="inputtype" class="input_ckbx1" name="copymedpay" id="copymedpay"><span class="err"><form:errors path="Requestfordemand.copymedpay"></form:errors></span></td><td>Copy of Med Pay and At Fault Form Cover Letter
     </td></tr>
      <tr height="25"><td><input type="inputtype"class="input_ckbx1" name="copyform" id="copyform"><span class="err"><form:errors path="Requestfordemand.copyform"></form:errors></span></td><td>Copy of Form Cover Letter sent to the Attorney
     </td></tr>
     <tr height="25"><td><input type="inputtype" class="input_ckbx1" name="copyassign" id="copyassign"><span class="err"><form:errors path="Requestfordemand.copyassign"></form:errors></span></td><td>Copy of Assignment
     </td></tr>
     <tr height="25"><td><input type="inputtype" class="input_ckbx1" name="greencard" id="greencard"><span class="err"><form:errors path="Requestfordemand.greencard"></form:errors></span></td><td>Front and back of Certified Mail: "Green Card"
     </td></tr>
     <tr height="25"><td><input type="inputtype" class="input_ckbx1" name="defaultattorney" id="default"><span class="err"><form:errors path="Requestfordemand.defaultattorney"></form:errors></span></td><td>Any correspondence from the defaulting Adjuster or Defaulting Attorney
     </td></tr>
       </table> <br>     
       <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" ><tr height="35">
       <td width="30" ></td>
       <td  valign="right" align="right" >
       
       <input type="textbox" class="input_ckbx1" name="clinicrep" id="clinicrep"><span class="err"><form:errors path="Requestfordemand.clinicrep"></form:errors></span></td></tr>
       <tr><td></td><td align="right" >Clinic Representative</td></tr></table>
       <br>      
         <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save"></td>
              <td>&nbsp;&nbsp;</td>
              <td><a href="viewrequestfordemand" style="color:white" class="submit_btn">Cancel</a></td>
              <td>&nbsp;&nbsp;</td>
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
             